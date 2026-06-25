import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:flutter/foundation.dart';
import 'package:tanlu_management/core/utils/app_logger.dart';

abstract final class AppCheckService {
  static Future<void> activate() async {
    await FirebaseAppCheck.instance.activate(
      providerAndroid: kDebugMode
          ? const AndroidDebugProvider()
          : const AndroidPlayIntegrityProvider(),
      providerApple: kDebugMode
          ? const AppleDebugProvider()
          : const AppleDeviceCheckProvider(),
    );

    if (!kDebugMode) return;

    try {
      await FirebaseAppCheck.instance.getToken(true);
    } catch (e) {
      appLogger.w('App Check: chưa lấy được token — $e');
    }

    appLogger.i(
      'App Check DEBUG — tìm debug secret:\n'
      '1) Debug Console (tab dưới): filter "App Check" hoặc "debug secret"\n'
      '2) Terminal Cursor: adb logcat -s DebugAppCheckProvider FirebaseAppCheck\n'
      '3) Copy chuỗi sau "debug secret" → Firebase Console → App Check → '
      'Apps → TanLu → Manage debug tokens',
    );
  }
}
