/// Theo dõi hội thoại đang mở — ẩn banner khi user đang xem chat đó.
abstract final class ChatForegroundContext {
  ChatForegroundContext._();

  static String? _activeConversationId;

  static String? get activeConversationId => _activeConversationId;

  static void setActiveConversation(String? conversationId) {
    _activeConversationId = conversationId;
  }
}
