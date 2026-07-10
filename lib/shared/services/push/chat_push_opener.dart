import 'package:injectable/injectable.dart';

typedef ChatPushHandler = void Function(String conversationId);

/// Stub — push navigation sẽ nối REST/FCM sau.
@lazySingleton
class ChatPushOpener {
  ChatPushHandler? _handler;

  void registerHandler(ChatPushHandler handler) => _handler = handler;

  void unregisterHandler() => _handler = null;

  void openConversation(String conversationId) =>
      _handler?.call(conversationId);
}
