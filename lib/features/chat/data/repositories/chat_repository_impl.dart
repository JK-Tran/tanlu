import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/chat/data/mapper/chat_contact_mapper.dart';
import 'package:tanlu_management/features/chat/data/mapper/chat_conversation_mapper.dart';
import 'package:tanlu_management/features/chat/data/mapper/chat_message_mapper.dart';
import 'package:tanlu_management/features/chat/data/sources/chat_api_service.dart';
import 'package:tanlu_management/features/chat/domain/entity/chat_contact.dart';
import 'package:tanlu_management/features/chat/domain/entity/chat_conversation.dart';
import 'package:tanlu_management/features/chat/domain/entity/chat_message.dart';
import 'package:tanlu_management/features/chat/domain/entity/chat_messages_response.dart';
import 'package:tanlu_management/features/chat/domain/repositories/chat_repository.dart';
import 'package:tanlu_management/shared/infrastructure/domain/entity/paged_list.dart';
import 'package:tanlu_management/features/chat/data/mapper/chat_messages_response_mapper.dart';

@LazySingleton(as: ChatRepository)
class ChatRepositoryImpl extends ChatRepository {
  ChatRepositoryImpl(
    this._apiService,
    this._conversationMapper,
    this._messageMapper,
    this._contactMapper,
    this._messagesResponseMapper,
  );

  final ChatApiService _apiService;
  final ChatConversationMapper _conversationMapper;
  final ChatMessageMapper _messageMapper;
  final ChatContactMapper _contactMapper;
  final ChatMessagesResponseMapper _messagesResponseMapper;

  @override
  Future<int> createChat(int targetUserId) async {
    final id = await _apiService.createChat(targetUserId);
    if (id == null) throw Exception('Failed to initialize chat');
    return id;
  }

  @override
  Future<List<ChatContact>> getContacts() async {
    final response = await _apiService.getContacts();
    return response?.data?.map(_contactMapper.mapToEntity).toList() ?? [];
  }

  @override
  Future<PagedList<ChatConversation>> getConversations({
    int page = 1,
    int limit = 10,
  }) async {
    final response = await _apiService.getConversations(
      page: page,
      limit: limit,
    );
    final data =
        response?.data?.map(_conversationMapper.mapToEntity).toList() ?? [];
    return PagedList<ChatConversation>(
      data: data,
      totalItems: response?.pagination?.totalItems ?? 0,
      currentPage: response?.pagination?.currentPage ?? page,
      itemsPerPage: response?.pagination?.itemsPerPage ?? limit,
      totalPage: response?.pagination?.totalPage ?? 1,
    );
  }

  @override
  Future<ChatMessagesResponse> getMessages({
    required int conversationId,
    int limit = 30,
    String? before,
    String? after,
  }) async {
    final response = await _apiService.getMessagesCursor(
      conversationId: conversationId,
      limit: limit,
      before: before,
      after: after,
    );
    return _messagesResponseMapper.mapToEntity(response);
  }

  @override
  Future<ChatMessagesResponse> getMessagesAround({
    required int conversationId,
    required int targetMessageId,
    int beforeLimit = 20,
    int afterLimit = 20,
  }) async {
    final response = await _apiService.getMessagesAround(
      conversationId: conversationId,
      messageId: targetMessageId,
      beforeLimit: beforeLimit,
      afterLimit: afterLimit,
    );
    return _messagesResponseMapper.mapToEntity(response);
  }

  @override
  Future<ChatMessage> submitMessage({
    required int conversationId,
    String? content,
    String type = 'text',
    String? fileUrl,
    int? replyToId,
  }) async {
    final messageData = await _apiService.submitMessage(
      conversationId: conversationId,
      content: content,
      type: type,
      fileUrl: fileUrl,
      replyToId: replyToId,
    );
    if (messageData == null) throw Exception('Failed to send message');
    return _messageMapper.mapToEntity(messageData);
  }

  @override
  Future<void> updateMessageReadStatus({
    required int conversationId,
    required int messageId,
  }) async {
    await _apiService.updateMessageReadStatus(
      conversationId: conversationId,
      messageId: messageId,
    );
  }

  @override
  Future<void> revokeMessage({
    required int conversationId,
    required int messageId,
  }) async {
    await _apiService.revokeMessage(
      conversationId: conversationId,
      messageId: messageId,
    );
  }

  @override
  Future<void> reactMessage({
    required int conversationId,
    required int messageId,
    required int reactionType,
  }) async {
    await _apiService.reactMessage(
      conversationId: conversationId,
      messageId: messageId,
      reactionType: reactionType,
    );
  }
}
