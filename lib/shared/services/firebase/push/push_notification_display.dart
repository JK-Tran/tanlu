import 'package:tanlu_management/shared/services/firebase/push/push_notification_type.dart';

/// DTO hiển thị 1 push trên system tray (không phải entity danh sách thông báo in-app).
class PushNotificationDisplay {
  const PushNotificationDisplay({
    required this.type,
    required this.title,
    required this.body,
    this.senderAvatarUrl,
    this.payload,
    this.notificationId,
  });

  final PushNotificationType type;
  final String title;
  final String body;

  /// URL ảnh người gửi hoặc `assets/...`.
  final String? senderAvatarUrl;
  final String? payload;
  final int? notificationId;
}
