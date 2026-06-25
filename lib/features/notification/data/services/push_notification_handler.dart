import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/shared/services/firebase/push/push_navigation_payload.dart';
import 'package:tanlu_management/shared/services/firebase/push/push_notification_display.dart';
import 'package:tanlu_management/shared/services/firebase/push/push_notification_type.dart';
import 'package:tanlu_management/shared/services/firebase/local_notification_service.dart';
import 'package:tanlu_management/shared/services/notification/notification_preferences.dart';

@lazySingleton
class PushNotificationHandler {
  PushNotificationHandler(
    this._localNotificationService,
    this._notificationPreferences,
  );

  final LocalNotificationService _localNotificationService;
  final NotificationPreferences _notificationPreferences;

  Future<void> initialize() => _localNotificationService.initialize();

  Future<void> handleRemoteMessage(RemoteMessage message) async {
    if (!_notificationPreferences.isEnabled) return;

    final display = _displayFromRemoteMessage(message);
    final type = PushNotificationType.fromValue(message.data['type']);

    // Foreground: Firestore stream đã hiện banner — bỏ qua FCM để tránh trùng.
    if (type == PushNotificationType.chatMessage) {
      return;
    }

    await show(display);
  }

  Future<void> showChatMessage({
    required int id,
    required String senderName,
    required String preview,
    required String conversationId,
    String? senderAvatarUrl,
  }) {
    return show(
      PushNotificationDisplay(
        type: PushNotificationType.chatMessage,
        title: senderName,
        body: preview,
        senderAvatarUrl: senderAvatarUrl,
        payload: PushNavigationPayload.fromDisplay(
          type: PushNotificationType.chatMessage,
          conversationId: conversationId,
        ).encode(),
        notificationId: id,
      ),
    );
  }

  Future<void> showLeaveRequest({
    required int id,
    required String studentName,
    required String reason,
    String? senderName,
    String? senderAvatarUrl,
    String? requestId,
  }) {
    final parent = (senderName ?? 'Phụ huynh').trim();
    return show(
      PushNotificationDisplay(
        type: PushNotificationType.leaveRequest,
        title: 'Thông báo Đơn xin nghỉ phép',
        body: '$parent — $studentName: $reason',
        senderAvatarUrl: senderAvatarUrl ?? 'assets/icons/user.png',
        payload: PushNavigationPayload.fromDisplay(
          type: PushNotificationType.leaveRequest,
          requestId: requestId,
        ).encode(),
        notificationId: id,
      ),
    );
  }

  Future<void> show(PushNotificationDisplay display) {
    if (!_notificationPreferences.isEnabled) return Future.value();
    return _localNotificationService.show(display);
  }

  PushNotificationDisplay _displayFromRemoteMessage(RemoteMessage message) {
    final data = message.data;
    final type = PushNotificationType.fromValue(data['type']);
    final notification = message.notification;

    return switch (type) {
      PushNotificationType.leaveRequest => PushNotificationDisplay(
        type: type,
        title: 'Thông báo Đơn xin nghỉ phép',
        body: _leaveRequestBody(data, notification?.body),
        senderAvatarUrl: data['senderAvatarUrl'] as String?,
        payload: PushNavigationPayload.fromDisplay(
          type: type,
          requestId: data['requestId'] as String?,
        ).encode(),
        notificationId: message.hashCode,
      ),
      PushNotificationType.chatMessage => PushNotificationDisplay(
        type: type,
        title:
            notification?.title ??
            (data['senderName'] as String?)?.trim() ??
            'Tin nhắn mới',
        body: notification?.body ?? data['preview'] as String? ?? '',
        senderAvatarUrl: data['senderAvatarUrl'] as String?,
        payload: PushNavigationPayload.fromDisplay(
          type: type,
          conversationId: data['conversationId'] as String?,
        ).encode(),
        notificationId: message.hashCode,
      ),
      PushNotificationType.feedPost => PushNotificationDisplay(
        type: type,
        title: notification?.title ?? 'Bảng tin',
        body: notification?.body ?? data['preview'] as String? ?? '',
        senderAvatarUrl: data['senderAvatarUrl'] as String?,
        payload: PushNavigationPayload.fromDisplay(
          type: type,
          feedId: data['feedId'] as String?,
        ).encode(),
        notificationId: message.hashCode,
      ),
      PushNotificationType.general => PushNotificationDisplay(
        type: type,
        title: notification?.title ?? 'Tanlu',
        body: notification?.body ?? 'Bạn có thông báo mới',
        senderAvatarUrl: data['senderAvatarUrl'] as String?,
        payload: null,
        notificationId: message.hashCode,
      ),
    };
  }

  String _leaveRequestBody(Map<String, dynamic> data, String? fallback) {
    if (fallback != null && fallback.isNotEmpty) return fallback;

    final sender = (data['senderName'] as String?)?.trim();
    final student = (data['studentName'] as String?)?.trim();
    final reason = (data['reason'] as String?)?.trim();

    final parts = <String>[
      if (sender != null && sender.isNotEmpty) sender,
      if (student != null && student.isNotEmpty) student,
      if (reason != null && reason.isNotEmpty) reason,
    ];

    if (parts.isEmpty) return 'Có đơn xin nghỉ phép chờ duyệt';
    if (parts.length == 1) return parts.first;

    final parent = parts.first;
    final rest = parts.sublist(1).join(' — ');
    return '$parent — $rest';
  }
}
