import 'package:tanlu_management/features/chat/domain/entity/conversation.dart';

abstract final class ChatConversationFactory {
  ChatConversationFactory._();

  static bool isEmpty(Conversation conversation) {
    return conversation.lastMessageText.trim().isEmpty &&
        conversation.lastMessageAt == null;
  }

  static Conversation? findDirectConversation({
    required List<Conversation> conversations,
    required String contactId,
  }) {
    for (final conversation in conversations) {
      if (conversation.type == 'direct' &&
          conversation.memberIds.contains(contactId)) {
        return conversation;
      }
    }
    return null;
  }
}
