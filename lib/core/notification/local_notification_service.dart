import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:tanlu_management/core/notification/notification_channels.dart';
import 'package:tanlu_management/core/notification/notification_payload.dart';
import 'package:tanlu_management/core/notification/notification_router.dart';
import 'package:tanlu_management/core/notification/notification_type.dart';

class LocalNotificationService {
  static final FlutterLocalNotificationsPlugin _localNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  static Future<void> initialize() async {
    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('@drawable/ic_notification');
    const DarwinInitializationSettings initializationSettingsDarwin =
        DarwinInitializationSettings(
          requestSoundPermission: true,
          requestBadgePermission: true,
          requestAlertPermission: true,
        );
    const InitializationSettings initializationSettings =
        InitializationSettings(
          android: initializationSettingsAndroid,
          iOS: initializationSettingsDarwin,
        );

    await _localNotificationsPlugin.initialize(
      initializationSettings,
      onDidReceiveNotificationResponse: (NotificationResponse details) {
        debugPrint('onDidReceiveNotificationResponse: ${details.payload}');
        if (details.payload != null) {
          try {
            final data = json.decode(details.payload!) as Map<String, dynamic>;
            final payload = NotificationPayload.fromData(data);
            NotificationRouter.route(payload);
          } catch (e) {
            debugPrint('Error parsing notification payload: $e');
          }
        }
      },
    );

    await _createChannels();
  }

  static Future<void> _createChannels() async {
    final androidPlugin = _localNotificationsPlugin
        .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin
        >();

    if (androidPlugin != null) {
      await androidPlugin.createNotificationChannel(
        const AndroidNotificationChannel(
          NotificationChannels.defaultChannelId,
          NotificationChannels.defaultChannelName,
          description: NotificationChannels.defaultChannelDescription,
          importance: Importance.max,
        ),
      );
      await androidPlugin.createNotificationChannel(
        const AndroidNotificationChannel(
          NotificationChannels.chatChannelId,
          NotificationChannels.chatChannelName,
          description: NotificationChannels.chatChannelDescription,
          importance: Importance.max,
        ),
      );
      await androidPlugin.createNotificationChannel(
        const AndroidNotificationChannel(
          NotificationChannels.leaveRequestChannelId,
          NotificationChannels.leaveRequestChannelName,
          description: NotificationChannels.leaveRequestChannelDescription,
          importance: Importance.max,
        ),
      );
      await androidPlugin.createNotificationChannel(
        const AndroidNotificationChannel(
          NotificationChannels.feedChannelId,
          NotificationChannels.feedChannelName,
          description: NotificationChannels.feedChannelDescription,
          importance: Importance.max,
        ),
      );
    }
  }

  static Future<void> showNotification(NotificationPayload payload) async {
    if (payload.title == null && payload.body == null) return;

    String channelId = NotificationChannels.defaultChannelId;
    String channelName = NotificationChannels.defaultChannelName;
    String channelDesc = NotificationChannels.defaultChannelDescription;

    switch (payload.type) {
      case NotificationType.newLeaveRequest:
      case NotificationType.leaveRequestApproved:
      case NotificationType.leaveRequestRejected:
        channelId = NotificationChannels.leaveRequestChannelId;
        channelName = NotificationChannels.leaveRequestChannelName;
        channelDesc = NotificationChannels.leaveRequestChannelDescription;
        break;
      case NotificationType.newMessage:
        channelId = NotificationChannels.chatChannelId;
        channelName = NotificationChannels.chatChannelName;
        channelDesc = NotificationChannels.chatChannelDescription;
        break;
      default:
        break;
    }

    final notifId = DateTime.now().millisecondsSinceEpoch.remainder(100000);

    await _localNotificationsPlugin.show(
      notifId,
      payload.title,
      payload.body,
      NotificationDetails(
        android: AndroidNotificationDetails(
          channelId,
          channelName,
          channelDescription: channelDesc,
          icon: '@drawable/ic_notification',
          importance: Importance.max,
          priority: Priority.high,
        ),
        iOS: const DarwinNotificationDetails(
          presentAlert: true,
          presentBadge: true,
          presentSound: true,
        ),
      ),
      payload: json.encode(payload.rawData),
    );
  }
}
