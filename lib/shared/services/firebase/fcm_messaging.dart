import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:tanlu_management/core/utils/app_logger.dart';
import 'package:tanlu_management/core/router/push_navigation_helper.dart';
import 'package:tanlu_management/features/notification/data/services/push_notification_handler.dart';

/// Handler khi app ở background/terminated. Phải là top-level function.
@pragma('vm:entry-point')
Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
  if (kDebugMode) {
    appLogger.i(
      'FCM background message: ${AppLogger.prettyJson(message.data)}',
    );
  }
}

/// Wrapper Firebase Messaging SDK — không chứa business logic.
@lazySingleton
class FcmMessaging {
  FcmMessaging(this._messaging, this._pushNotificationHandler);

  final FirebaseMessaging _messaging;
  final PushNotificationHandler _pushNotificationHandler;
  bool _initialized = false;

  Stream<RemoteMessage> get onMessage => FirebaseMessaging.onMessage;

  Stream<RemoteMessage> get onMessageOpenedApp =>
      FirebaseMessaging.onMessageOpenedApp;

  Stream<String> get onTokenRefresh => _messaging.onTokenRefresh;

  /// Gọi một lần sau [Firebase.initializeApp] trong [main].
  Future<void> initialize() async {
    if (_initialized) return;
    _initialized = true;

    await _pushNotificationHandler.initialize();
    FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);

    if (defaultTargetPlatform == TargetPlatform.android) {
      await Permission.notification.request();
    }
    await requestPermission();

    FirebaseMessaging.onMessage.listen(_onForegroundMessage);
    FirebaseMessaging.onMessageOpenedApp.listen((message) {
      appLogger.i('FCM opened app: ${AppLogger.prettyJson(message.data)}');
      PushNavigationHelper.navigateFromFcmData(message.data);
    });
  }

  /// Gọi sau khi [PushNavigationHelper.router] đã gắn (app terminated → mở từ push).
  Future<void> handleInitialMessage() async {
    final message = await getInitialMessage();
    if (message != null) {
      PushNavigationHelper.navigateFromFcmData(message.data);
    }
  }

  void _onForegroundMessage(RemoteMessage message) {
    final notification = message.notification;
    appLogger.i(
      'FCM foreground: ${notification?.title} | '
      '${AppLogger.prettyJson(message.data)}',
    );

    _pushNotificationHandler.handleRemoteMessage(message);
  }

  Future<NotificationSettings> requestPermission() async {
    final settings = await _messaging.requestPermission(
      alert: true,
      announcement: true,
      badge: true,
      carPlay: true,
      criticalAlert: true,
      sound: true,
      provisional: false,
    );

    await _messaging.setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );

    appLogger.i('FCM permission: ${settings.authorizationStatus}');
    return settings;
  }

  Future<String?> getToken() async {
    final token = await _messaging.getToken();
    if (kDebugMode) {
      appLogger.i('FCM getToken: $token');
    }
    return token;
  }

  Future<void> deleteToken() async {
    if (kDebugMode) {
      appLogger.i('FCM deleteToken');
    }
    await _messaging.deleteToken();
  }

  Future<RemoteMessage?> getInitialMessage() async {
    final message = await _messaging.getInitialMessage();
    if (kDebugMode && message != null) {
      appLogger.i('FCM initial message: ${AppLogger.prettyJson(message.data)}');
    }
    return message;
  }
}
