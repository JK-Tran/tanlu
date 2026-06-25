/// Theo dõi hội thoại đang mở — ẩn banner khi user đang xem đúng cuộc chat.
abstract final class ChatForegroundContext {
  static String? _activeConversationId;

  static String? get activeConversationId => _activeConversationId;

  static void setActiveConversation(String? conversationId) {
    _activeConversationId = conversationId;
  }

  static bool isViewing(String conversationId) =>
      _activeConversationId != null &&
      _activeConversationId == conversationId;
}
