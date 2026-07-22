import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:tanlu_management/core/notification/local_notification_service.dart';
import 'package:tanlu_management/core/notification/notification_background_handler.dart';
import 'package:tanlu_management/core/notification/notification_payload.dart';
import 'package:tanlu_management/core/notification/notification_router.dart';
import 'package:tanlu_management/features/notification/presentation/bloc/notification_bloc.dart';
import 'package:tanlu_management/shared/di/di.dart';

class NotificationService {
  static bool _hasRequestedPermission = false;

  static Future<void> initialize() async {
    FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);

    await FirebaseMessaging.instance
        .setForegroundNotificationPresentationOptions(
          alert: true,
          badge: true,
          sound: true,
        );

    await LocalNotificationService.initialize();

    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      debugPrint('====================================');
      debugPrint('🚨 [FCM] Got a message whilst in the foreground!');
      debugPrint('🚨 [FCM] Message ID: ${message.messageId}');
      debugPrint('🚨 [FCM] Message data: ${message.data}');
      debugPrint(
        '🚨 [FCM] Message notification: ${message.notification?.title} - ${message.notification?.body}',
      );
      debugPrint('====================================');

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
        final payload = NotificationPayload.fromData(
          message.data,
          defaultTitle: message.notification?.title,
          defaultBody: message.notification?.body,
        );
        LocalNotificationService.showNotification(payload);
      } else if (message.data.containsKey('title') ||
          message.data.containsKey('body')) {
        debugPrint(
          '🚨 [FCM] No notification block, but data has title/body. Creating mock notification.',
        );
        final payload = NotificationPayload.fromData(message.data);
        LocalNotificationService.showNotification(payload);
      }
    });

    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      final payload = NotificationPayload.fromData(message.data);
      NotificationRouter.route(payload);
    });

    final initialMessage = await FirebaseMessaging.instance.getInitialMessage();
    if (initialMessage != null) {
      Future.delayed(const Duration(milliseconds: 1000), () {
        final payload = NotificationPayload.fromData(initialMessage.data);
        NotificationRouter.route(payload);
      });
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
