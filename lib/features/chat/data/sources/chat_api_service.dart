import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/chat/data/model/contact_data.dart';
import 'package:tanlu_management/features/chat/data/model/conversation_data.dart';
import 'package:tanlu_management/features/chat/data/model/message_data.dart';
import 'package:tanlu_management/shared/network/api_client.dart';

@lazySingleton
class ChatApiService {
  final ApiClient _apiClient;

  ChatApiService(this._apiClient);

  Future<List<ContactData>?> getContacts() async {
    return _apiClient.request<ContactData, List<ContactData>>(
      method: RestMethod.get,
      path: '/v1/chat/contacts',
      decoder: (data) => ContactData.fromJson(data),
      successResponseMapperType: SuccessResponseMapperType.dataJsonArray,
    );
  }

  Future<List<ConversationData>?> getConversations() async {
    return _apiClient.request<ConversationData, List<ConversationData>>(
      method: RestMethod.get,
      path: '/v1/chat/conversations',
      decoder: (data) => ConversationData.fromJson(data),
      successResponseMapperType: SuccessResponseMapperType.dataJsonArray,
    );
  }

  Future<List<MessageData>?> getMessages({
    required int conversationId,
    required int skip,
    required int take,
  }) async {
    return _apiClient.request<MessageData, List<MessageData>>(
      method: RestMethod.get,
      path: '/v1/chat/conversations/$conversationId/messages',
      queryParameters: {'skip': skip, 'take': take},
      decoder: (data) => MessageData.fromJson(data),
      successResponseMapperType: SuccessResponseMapperType.dataJsonArray,
    );
  }

  Future<ConversationData?> createConversation({
    required List<int> participantIds,
    required String type,
    String? name,
  }) async {
    return _apiClient.request<ConversationData, ConversationData>(
      method: RestMethod.post,
      path: '/v1/chat/conversations',
      body: {'participantIds': participantIds, 'type': type, 'name': ?name},
      decoder: (data) => ConversationData.fromJson(data),
      successResponseMapperType: SuccessResponseMapperType.dataJsonObject,
    );
  }

  Future<MessageData?> sendMessage({
    required int conversationId,
    required String text,
    dynamic file,
    String? fileUrl,
  }) async {
    final formData = FormData.fromMap({'text': text, 'fileUrl': ?fileUrl});

    if (file != null) {
      if (file is String) {
        formData.files.add(
          MapEntry('file', await MultipartFile.fromFile(file)),
        );
      } else if (file is MultipartFile) {
        formData.files.add(MapEntry('file', file));
      }
    }

    return _apiClient.request<MessageData, MessageData>(
      method: RestMethod.post,
      path: '/v1/chat/conversations/$conversationId/messages',
      body: formData,
      decoder: (data) => MessageData.fromJson(data),
      successResponseMapperType: SuccessResponseMapperType.dataJsonObject,
    );
  }

  Future<void> markMessagesAsRead(int conversationId) async {
    await _apiClient.request<Map<String, dynamic>, Map<String, dynamic>>(
      method: RestMethod.put,
      path: '/v1/chat/conversations/$conversationId/messages/read',
      successResponseMapperType: SuccessResponseMapperType.jsonObject,
    );
  }
}
