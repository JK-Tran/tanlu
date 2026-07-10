import 'dart:convert';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:go_router/go_router.dart';
import 'package:tanlu_management/core/router/app_router.dart';
import 'package:tanlu_management/features/notification/presentation/bloc/notification_bloc.dart';
import 'package:tanlu_management/shared/constants/firebase/firebase_constants.dart';
import 'package:tanlu_management/shared/di/di.dart';

@pragma('vm:entry-point')
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  debugPrint('Handling a background message: ${message.messageId}');

  // If the backend sent a data message (no notification block) and we are in the background,
  // we must show it manually. Android OS won't show data-only messages.
  if (message.notification == null &&
      (message.data.containsKey('title') || message.data.containsKey('body'))) {
    // Re-initialize local notifications for this isolate
    await FirebaseMessagingService._setupLocalNotifications();
    await FirebaseMessagingService._showLocalNotification(message);
  }
}

class FirebaseMessagingService {
  static final FlutterLocalNotificationsPlugin _localNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  static bool _hasRequestedPermission = false;

  static Future<void> initialize() async {
    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

    await FirebaseMessaging.instance
        .setForegroundNotificationPresentationOptions(
          alert: true,
          badge: true,
          sound: true,
        );

    // Bỏ gọi requestPermission() ở đây để dời sang sau khi tắt Splash Screen
    await _setupLocalNotifications();

    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      debugPrint('====================================');
      debugPrint('🚨 [FCM] Got a message whilst in the foreground!');
      debugPrint('🚨 [FCM] Message ID: ${message.messageId}');
      debugPrint('🚨 [FCM] Message data: ${message.data}');
      debugPrint(
        '🚨 [FCM] Message notification: ${message.notification?.title} - ${message.notification?.body}',
      );
      debugPrint('====================================');

      // Bắn sự kiện lên Global NotificationBloc để update UI realtime
      try {
        sl<NotificationBloc>().add(
          const NotificationEvent.incrementUnreadCount(),
        );
      } catch (e) {
        debugPrint('Cannot dispatch NotificationEvent: $e');
      }

      if (message.notification != null) {
        debugPrint(
          '🚨 [FCM] Showing local notification from FCM notification block.',
        );
        _showLocalNotification(message);
      } else if (message.data.containsKey('title') ||
          message.data.containsKey('body')) {
        debugPrint(
          '🚨 [FCM] No notification block, but data has title/body. Creating mock notification.',
        );
        // Thử show notification dựa trên data nếu không có block notification
        // Note: Cần custom lại _showLocalNotification để nhận data title/body nếu muốn
      }
    });

    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      _handleNotificationClick(message.data);
    });

    final initialMessage = await FirebaseMessaging.instance.getInitialMessage();
    if (initialMessage != null) {
      // Delay to ensure the navigator is attached
      Future.delayed(const Duration(milliseconds: 1000), () {
        _handleNotificationClick(initialMessage.data);
      });
    }
  }

  static void _handleNotificationClick(Map<String, dynamic> data) {
    final type = data['type'];
    if (type == 'NEW_LEAVE_REQUEST' ||
        type == 'LEAVE_REQUEST_APPROVED' ||
        type == 'LEAVE_REQUEST_REJECTED') {
      final context = rootNavigatorKey.currentContext;
      if (context != null) {
        context.push('/attendance?tab=leave');
      }
    }
  }

  static Future<void> _setupLocalNotifications() async {
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
            _handleNotificationClick(data);
          } catch (e) {
            debugPrint('Error parsing notification payload: $e');
          }
        }
      },
    );

    final androidPlugin = _localNotificationsPlugin
        .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin
        >();

    if (androidPlugin != null) {
      await androidPlugin.createNotificationChannel(
        const AndroidNotificationChannel(
          FirebaseConstants.defaultChannelId,
          FirebaseConstants.defaultChannelName,
          description: FirebaseConstants.defaultChannelDescription,
          importance: Importance.max,
        ),
      );
      await androidPlugin.createNotificationChannel(
        const AndroidNotificationChannel(
          FirebaseConstants.chatChannelId,
          FirebaseConstants.chatChannelName,
          description: FirebaseConstants.chatChannelDescription,
          importance: Importance.max,
        ),
      );
      await androidPlugin.createNotificationChannel(
        const AndroidNotificationChannel(
          FirebaseConstants.leaveRequestChannelId,
          FirebaseConstants.leaveRequestChannelName,
          description: FirebaseConstants.leaveRequestChannelDescription,
          importance: Importance.max,
        ),
      );
    }
  }

  static Future<void> _showLocalNotification(RemoteMessage message) async {
    final notification = message.notification;
    final title = notification?.title ?? message.data['title']?.toString();
    final body = notification?.body ?? message.data['body']?.toString();

    if (title != null || body != null) {
      String channelId = FirebaseConstants.defaultChannelId;
      String channelName = FirebaseConstants.defaultChannelName;
      String channelDesc = FirebaseConstants.defaultChannelDescription;

      final type = message.data['type'];
      if (type == 'NEW_LEAVE_REQUEST' ||
          type == 'LEAVE_REQUEST_APPROVED' ||
          type == 'LEAVE_REQUEST_REJECTED') {
        channelId = FirebaseConstants.leaveRequestChannelId;
        channelName = FirebaseConstants.leaveRequestChannelName;
        channelDesc = FirebaseConstants.leaveRequestChannelDescription;
      } else if (type == 'NEW_MESSAGE') {
        channelId = FirebaseConstants.chatChannelId;
        channelName = FirebaseConstants.chatChannelName;
        channelDesc = FirebaseConstants.chatChannelDescription;
      }

      await _localNotificationsPlugin.show(
        message.messageId.hashCode,
        title,
        body,
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
        payload: json.encode(message.data),
      );
    }
  }

  static Future<void> requestPermission() async {
    if (_hasRequestedPermission) return;
    _hasRequestedPermission = true;

    final messaging = FirebaseMessaging.instance;

    final settings = await messaging.requestPermission(
      alert: true,
      badge: true,
      sound: true,
    );

    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      debugPrint('User granted permission');
    } else if (settings.authorizationStatus ==
        AuthorizationStatus.provisional) {
      debugPrint('User granted provisional permission');
    } else {
      debugPrint('User declined or has not accepted permission');
    }
  }
}
