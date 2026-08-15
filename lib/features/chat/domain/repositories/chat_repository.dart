import 'package:tanlu_management/features/chat/domain/entity/chat_contact.dart';
import 'package:tanlu_management/features/chat/domain/entity/chat_conversation.dart';
import 'package:tanlu_management/features/chat/domain/entity/chat_message.dart';
import 'package:tanlu_management/features/chat/domain/entity/chat_messages_response.dart';
import 'package:tanlu_management/shared/infrastructure/domain/entity/paged_list.dart';

abstract class ChatRepository {
  Future<int> createChat(int targetUserId);

  Future<List<ChatContact>> getContacts();

  Future<PagedList<ChatConversation>> getConversations({
    int page = 1,
    int limit = 10,
  });

  Future<ChatMessagesResponse> getMessages({
    required int conversationId,
    int limit = 30,
    String? before,
    String? after,
  });

  Future<ChatMessagesResponse> getMessagesAround({
    required int conversationId,
    required int targetMessageId,
    int beforeLimit = 20,
    int afterLimit = 20,
  });

  Future<ChatMessage> submitMessage({
    required int conversationId,
    String? content,
    String type = 'text',
    String? fileUrl,
    int? replyToId,
  });

  Future<void> revokeMessage({
    required int conversationId,
    required int messageId,
  });

  Future<void> reactMessage({
    required int conversationId,
    required int messageId,
    required int reactionType,
  });

  Future<void> updateMessageReadStatus({
    required int conversationId,
    required int messageId,
  });
}
