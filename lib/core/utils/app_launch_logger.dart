import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:tanlu_management/core/constants/storage_keys.dart';
import 'package:tanlu_management/core/utils/app_logger.dart';
import 'package:tanlu_management/core/utils/shared_prefs_helper.dart';
import 'package:tanlu_management/shared/helper/app_info.dart';

/// Log khi mở app: first-time / isLoggedIn, version, platform, package.
Future<void> logAppLaunch(SharedPrefsHelper prefs, AppInfo appInfo) async {
  final isFirstTime = prefs.getBool(StorageKeys.hasLaunchedBefore) != true;
  final isLoggedIn = prefs.getBool(StorageKeys.isLoggedIn) ?? false;

  final appVersion = appInfo.versionName.isNotEmpty
      ? appInfo.versionFull
      : 'unknown';
  final packageName = appInfo.applicationId.isNotEmpty
      ? appInfo.applicationId
      : 'unknown';
  String platformInfo = 'unknown';

  if (!kIsWeb) {
    try {
      final plugin = DeviceInfoPlugin();
      try {
        final info = await plugin.androidInfo;
        platformInfo =
            'Android ${info.version.release} (SDK ${info.version.sdkInt})';
      } catch (_) {
        try {
          final info = await plugin.iosInfo;
          platformInfo = 'iOS ${info.systemVersion}';
        } catch (__) {
          platformInfo = 'unknown';
        }
      }
    } catch (_) {}
  }

  appLogger.i(
    'App launch | first-time: $isFirstTime | isLoggedIn: $isLoggedIn | '
    'version: $appVersion | $platformInfo | package: $packageName',
  );
}
