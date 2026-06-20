import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/core/utils/app_logger.dart';
import 'package:tanlu_management/core/router/push_navigation_helper.dart';
import 'package:tanlu_management/shared/services/firebase/push/push_notification_display.dart';
import 'package:tanlu_management/shared/services/firebase/push/push_notification_type.dart';

/// Hiển thị notification trên thiết bị (foreground FCM + test).
@lazySingleton
class LocalNotificationService {
  LocalNotificationService() : _dio = Dio();

  final FlutterLocalNotificationsPlugin _plugin =
      FlutterLocalNotificationsPlugin();
  final Dio _dio;

  static const _notificationIcon = '@drawable/ic_notification';
  static const _logoAsset = 'assets/images/logo-tanlu.png';
  static const _brandColor = Color(0xFFE84B4B);

  bool _initialized = false;

  Future<void> initialize() async {
    if (_initialized) return;
    _initialized = true;

    const androidSettings = AndroidInitializationSettings(_notificationIcon);
    const iosSettings = DarwinInitializationSettings(
      requestAlertPermission: false,
      requestBadgePermission: false,
      requestSoundPermission: false,
    );
    const settings = InitializationSettings(
      android: androidSettings,
      iOS: iosSettings,
    );

    await _plugin.initialize(
      settings,
      onDidReceiveNotificationResponse: (response) {
        final payload = response.payload;
        if (payload != null && payload.isNotEmpty) {
          PushNavigationHelper.navigateFromPayload(payload);
        }
      },
    );

    final androidPlugin = _plugin
        .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin
        >();

    for (final type in PushNotificationType.values) {
      await androidPlugin?.createNotificationChannel(
        AndroidNotificationChannel(
          type.channelId,
          type.channelName,
          description: 'Thông báo ${type.channelName}',
          importance: Importance.high,
        ),
      );
    }
  }

  /// App bị kill → user nhấn local notification → mở app (cold start).
  Future<void> handleLaunchNotification() async {
    if (!_initialized) await initialize();

    final launchDetails = await _plugin.getNotificationAppLaunchDetails();
    if (launchDetails?.didNotificationLaunchApp != true) return;

    final payload = launchDetails!.notificationResponse?.payload;
    if (payload == null || payload.isEmpty) return;

    appLogger.i('Local notification launched app: $payload');
    PushNavigationHelper.navigateFromPayload(payload);
  }

  Future<void> show(PushNotificationDisplay display) async {
    if (!_initialized) await initialize();

    final largeIconBytes = await _loadImageBytes(display.senderAvatarUrl);

    final logoBytes = await _loadImageBytes(_logoAsset);

    final androidDetails = AndroidNotificationDetails(
      display.type.channelId,
      display.type.channelName,
      channelDescription: 'Thông báo ${display.type.channelName}',
      importance: Importance.high,
      priority: Priority.high,
      icon: _notificationIcon,
      largeIcon: largeIconBytes != null
          ? ByteArrayAndroidBitmap(largeIconBytes)
          : logoBytes != null
          ? ByteArrayAndroidBitmap(logoBytes)
          : null,
      color: _brandColor,
      styleInformation: BigTextStyleInformation(display.body),
    );
    const iosDetails = DarwinNotificationDetails(
      presentAlert: true,
      presentBadge: true,
      presentSound: true,
    );
    final details = NotificationDetails(
      android: androidDetails,
      iOS: iosDetails,
    );

    await _plugin.show(
      display.notificationId ?? display.hashCode,
      display.title,
      display.body,
      details,
      payload: display.payload,
    );
    appLogger.i(
      'Notification [${display.type.value}]: ${display.title} | ${display.body}',
    );
  }

  Future<Uint8List?> _loadImageBytes(String? source) async {
    if (source == null || source.trim().isEmpty) return null;

    try {
      if (source.startsWith('assets/')) {
        final data = await rootBundle.load(source);
        return data.buffer.asUint8List();
      }

      final response = await _dio.get<List<int>>(
        source,
        options: Options(responseType: ResponseType.bytes),
      );
      final bytes = response.data;
      if (bytes == null || bytes.isEmpty) return null;
      return Uint8List.fromList(bytes);
    } catch (e, st) {
      appLogger.e('Load notification image failed: $source', e, st);
      return null;
    }
  }
}
