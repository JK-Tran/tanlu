import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/chat/data/model/chat_contact_data.dart';
import 'package:tanlu_management/features/chat/data/model/chat_conversation_data.dart';
import 'package:tanlu_management/features/chat/data/model/chat_message_data.dart';
import 'package:tanlu_management/features/chat/data/model/chat_messages_response_data.dart';
import 'package:tanlu_management/shared/infrastructure/data/api/client/auth_app_server_api_client.dart';
import 'package:tanlu_management/shared/infrastructure/data/api/client/base/rest_api_client.dart';
import 'package:tanlu_management/shared/infrastructure/data/api/mapper/base_success_response_mapper.dart';
import 'package:tanlu_management/shared/infrastructure/data/api/model/data_response.dart';
import 'package:tanlu_management/shared/model/typedef.dart';

@LazySingleton()
class ChatApiService {
  ChatApiService(this._authAppServerApiClient);

  final AuthAppServerApiClient _authAppServerApiClient;

  Future<int?> createChat(int targetUserId) async {
    return _authAppServerApiClient.request(
      method: RestMethod.post,
      successResponseMapperType: SuccessResponseMapperType.jsonObject,
      path: '/chats/init',
      body: {'targetUserId': targetUserId},
      decoder: (json) => (json as JSON)['conversationId'] as int,
    );
  }

  Future<DataListResponse<ChatConversationData>?> getConversations({
    int page = 1,
    int limit = 10,
  }) async {
    return _authAppServerApiClient.request(
      method: RestMethod.get,
      successResponseMapperType: SuccessResponseMapperType.jsonObject,
      path: '/chats',
      queryParameters: {'page': page, 'limit': limit},
      decoder: (json) => DataListResponse.fromJson(
        json as JSON,
        (data) => ChatConversationData.fromJson(data as JSON),
      ),
    );
  }

  Future<DataListResponse<ChatContactData>?> getContacts() async {
    return _authAppServerApiClient.request(
      method: RestMethod.get,
      successResponseMapperType: SuccessResponseMapperType.jsonObject,
      path: '/chats/contacts',
      decoder: (json) => DataListResponse.fromJson(
        json as JSON,
        (data) => ChatContactData.fromJson(data as JSON),
      ),
    );
  }

  Future<ChatMessagesResponseData?> getMessagesCursor({
    required int conversationId,
    int limit = 30,
    String? before,
    String? after,
  }) async {
    return _authAppServerApiClient.request(
      method: RestMethod.get,
      successResponseMapperType: SuccessResponseMapperType.jsonObject,
      path: '/chats/$conversationId/messages',
      queryParameters: {'limit': limit, 'before': ?before, 'after': ?after},
      decoder: (json) => ChatMessagesResponseData.fromJson(json as JSON),
    );
  }

  Future<ChatMessagesResponseData?> getMessagesAround({
    required int conversationId,
    required int messageId,
    int beforeLimit = 20,
    int afterLimit = 20,
  }) async {
    return _authAppServerApiClient.request(
      method: RestMethod.get,
      successResponseMapperType: SuccessResponseMapperType.jsonObject,
      path: '/chats/$conversationId/messages/around/$messageId',
      queryParameters: {'beforeLimit': beforeLimit, 'afterLimit': afterLimit},
      decoder: (json) => ChatMessagesResponseData.fromJson(json as JSON),
    );
  }

  // Future<ChatSearchResponseData?> searchMessages(...) if needed

  Future<ChatMessageData?> submitMessage({
    required int conversationId,
    String? content,
    String type = 'text',
    String? fileUrl,
    int? replyToId,
  }) async {
    return _authAppServerApiClient.request(
      method: RestMethod.post,
      successResponseMapperType: SuccessResponseMapperType.jsonObject,
      path: '/chats/$conversationId/messages',
      body: {
        'content': content,
        'type': type,
        'fileUrl': fileUrl,
        'replyToId': ?replyToId,
      },
      decoder: (json) {
        final data = (json as JSON)['data'];
        return ChatMessageData.fromJson(data as JSON);
      },
    );
  }

  Future<void> updateMessageReadStatus({
    required int conversationId,
    required int messageId,
  }) async {
    await _authAppServerApiClient.request(
      method: RestMethod.put,
      successResponseMapperType: SuccessResponseMapperType.jsonObject,
      path: '/chats/$conversationId/read',
      body: {'messageId': messageId},
    );
  }

  Future<void> revokeMessage({
    required int conversationId,
    required int messageId,
  }) async {
    await _authAppServerApiClient.request(
      method: RestMethod.put,
      successResponseMapperType: SuccessResponseMapperType.jsonObject,
      path: '/chats/$conversationId/messages/$messageId/revoke',
    );
  }

  Future<void> reactMessage({
    required int conversationId,
    required int messageId,
    required int reactionType,
  }) async {
    await _authAppServerApiClient.request(
      method: RestMethod.post,
      successResponseMapperType: SuccessResponseMapperType.jsonObject,
      path: '/chats/$conversationId/messages/$messageId/react',
      body: {'reactionType': reactionType},
    );
  }

  /// Upload file/ảnh lên R2 qua `POST /api/upload`.
  /// Trả về URL public của file đã upload.
  Future<String?> uploadFile({
    required String filePath,
    required String fileName,
    String? mimeType,
  }) async {
    final formData = FormData.fromMap({
      'file': await MultipartFile.fromFile(
        filePath,
        filename: fileName,
        contentType: mimeType != null ? DioMediaType.parse(mimeType) : null,
      ),
    });

    return _authAppServerApiClient.request<String, String>(
      method: RestMethod.post,
      successResponseMapperType: SuccessResponseMapperType.jsonObject,
      path: '/upload',
      body: formData,
      options: Options(contentType: 'multipart/form-data'),
      decoder: (json) => (json as JSON)['url'] as String,
    );
  }
}
