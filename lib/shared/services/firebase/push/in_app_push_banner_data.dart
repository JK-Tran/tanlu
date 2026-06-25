import 'package:tanlu_management/shared/services/firebase/push/push_notification_type.dart';

/// Dữ liệu hiển thị banner trượt từ trên xuống (app foreground).
class InAppPushBannerData {
  const InAppPushBannerData({
    required this.type,
    required this.title,
    required this.body,
    this.senderAvatarUrl,
    this.conversationId,
    this.requestId,
  });

  final PushNotificationType type;
  final String title;
  final String body;
  final String? senderAvatarUrl;
  final String? conversationId;
  final String? requestId;
}
