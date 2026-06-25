import 'package:injectable/injectable.dart';
import 'package:tanlu_management/core/constants/storage_keys.dart';
import 'package:tanlu_management/core/utils/shared_prefs_helper.dart';

@lazySingleton
class NotificationPreferences {
  NotificationPreferences(this._prefs);

  final SharedPrefsHelper _prefs;

  bool get isEnabled =>
      _prefs.getBool(StorageKeys.notificationsEnabled) ?? true;

  bool get permissionPrompted =>
      _prefs.getBool(StorageKeys.notificationPermissionAsked) ?? false;

  Future<void> setEnabled(bool value) =>
      _prefs.setBool(StorageKeys.notificationsEnabled, value);

  Future<void> markPermissionPrompted() =>
      _prefs.setBool(StorageKeys.notificationPermissionAsked, true);
}
