import 'package:injectable/injectable.dart';

/// Stub — banner in-app sẽ nối REST/FCM sau khi backend sẵn sàng.
@lazySingleton
class ChatIncomingBannerService {
  void showFromConversation({
    required String conversationId,
    required String title,
    required String message,
    required String currentUserId,
  }) {}
}
