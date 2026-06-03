import 'package:injectable/injectable.dart';
import 'package:tanlu_management/core/utils/app_logger.dart';
import 'package:package_info_plus/package_info_plus.dart';

/// Thông tin app từ project (pubspec, build.gradle, Info.plist).
/// Gọi [init] trong main() trước runApp.
@lazySingleton
class AppInfo {
  PackageInfo? _packageInfo;

  String get appName => _packageInfo?.appName ?? '';
  String get applicationId => _packageInfo?.packageName ?? '';
  String get versionCode => _packageInfo?.buildNumber ?? '';
  String get versionName => _packageInfo?.version ?? '';

  /// versionName+versionCode (vd: 1.0.1+1)
  String get versionFull => '$versionName+$versionCode';

  Future<void> init() async {
    try {
      _packageInfo = await PackageInfo.fromPlatform();
      appLogger.d(
        'AppInfo | applicationId: ${_packageInfo!.packageName} | '
        'appName: ${_packageInfo!.appName} | versionName: ${_packageInfo!.version} | '
        'versionCode: ${_packageInfo!.buildNumber}',
      );
    } catch (e, st) {
      appLogger.e('AppInfo init failed: $e', e, st);
      _packageInfo = null;
    }
  }
}
