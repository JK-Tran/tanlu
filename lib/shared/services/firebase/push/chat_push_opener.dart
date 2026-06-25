import 'package:injectable/injectable.dart';

/// Mở hội thoại từ push — HomePage đăng ký handler khi mount.
@lazySingleton
class ChatPushOpener {
  String? pendingConversationId;
  void Function(String conversationId)? _handler;

  void registerHandler(void Function(String conversationId) handler) {
    _handler = handler;
    consumePending();
  }

  void unregisterHandler() {
    _handler = null;
  }

  void openConversation(String conversationId) {
    if (conversationId.isEmpty) return;

    final handler = _handler;
    if (handler != null) {
      handler(conversationId);
      return;
    }
    pendingConversationId = conversationId;
  }

  void consumePending() {
    final id = pendingConversationId;
    if (id == null || id.isEmpty) return;

    final handler = _handler;
    if (handler == null) return;

    pendingConversationId = null;
    handler(id);
  }
}
