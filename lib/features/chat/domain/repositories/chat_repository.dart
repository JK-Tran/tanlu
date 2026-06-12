import 'package:tanlu_management/features/chat/domain/entity/conversation.dart';
import 'package:tanlu_management/features/chat/domain/entity/contact.dart';
import 'package:tanlu_management/features/chat/domain/entity/message.dart';

abstract class ChatRepository {
  Future<List<Contact>> getContacts();
  Future<List<Conversation>> getConversations();
  Future<List<Message>> getMessages({
    required int conversationId,
    int skip = 0,
    int take = 50,
  });
  Future<Conversation> createConversation({
    required List<int> participantIds,
    required String type,
    String? name,
  });
  Future<Message> sendMessage({
    required int conversationId,
    required String text,
    dynamic file,
    String? fileUrl,
  });
  Future<void> markMessagesAsRead(int conversationId);
}
