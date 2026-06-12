import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/chat/data/mapper/contact_data_mapper.dart';
import 'package:tanlu_management/features/chat/data/mapper/conversation_data_mapper.dart';
import 'package:tanlu_management/features/chat/data/mapper/message_data_mapper.dart';
import 'package:tanlu_management/features/chat/data/sources/chat_api_service.dart';
import 'package:tanlu_management/features/chat/domain/entity/contact.dart';
import 'package:tanlu_management/features/chat/domain/entity/conversation.dart';
import 'package:tanlu_management/features/chat/domain/entity/message.dart';
import 'package:tanlu_management/features/chat/domain/repositories/chat_repository.dart';

@LazySingleton(as: ChatRepository)
class ChatRepositoryImpl extends ChatRepository {
  final ChatApiService _apiService;
  final ConversationDataMapper _conversationMapper;
  final MessageDataMapper _messageMapper;
  final ContactDataMapper _contactMapper;

  ChatRepositoryImpl(
    this._apiService,
    this._conversationMapper,
    this._messageMapper,
    this._contactMapper,
  );

  @override
  Future<List<Contact>> getContacts() async {
    final response = await _apiService.getContacts();
    return _contactMapper.mapToListEntity(response);
  }

  @override
  Future<List<Conversation>> getConversations() async {
    final response = await _apiService.getConversations();
    return _conversationMapper.mapToListEntity(response);
  }

  @override
  Future<List<Message>> getMessages({
    required int conversationId,
    int skip = 0,
    int take = 50,
  }) async {
    final response = await _apiService.getMessages(
      conversationId: conversationId,
      skip: skip,
      take: take,
    );
    return _messageMapper.mapToListEntity(response);
  }

  @override
  Future<Conversation> createConversation({
    required List<int> participantIds,
    required String type,
    String? name,
  }) async {
    final response = await _apiService.createConversation(
      participantIds: participantIds,
      type: type,
      name: name,
    );
    return _conversationMapper.mapToEntity(response);
  }

  @override
  Future<Message> sendMessage({
    required int conversationId,
    required String text,
    dynamic file,
    String? fileUrl,
  }) async {
    final response = await _apiService.sendMessage(
      conversationId: conversationId,
      text: text,
      file: file,
      fileUrl: fileUrl,
    );
    return _messageMapper.mapToEntity(response);
  }

  @override
  Future<void> markMessagesAsRead(int conversationId) async {
    await _apiService.markMessagesAsRead(conversationId);
  }
}
