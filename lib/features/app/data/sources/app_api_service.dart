import 'package:injectable/injectable.dart';
import 'package:tanlu_management/core/constants/storage_keys.dart';
import 'package:tanlu_management/core/utils/shared_prefs_helper.dart';
import 'package:tanlu_management/shared/services/local_storage/app_preferences.dart';

/// Implementation of [AppPreferences] using [SharedPrefsHelper].
@LazySingleton(as: AppPreferences)
class AppApiService implements AppPreferences {
  AppApiService(this._prefs);

  final SharedPrefsHelper _prefs;

  @override
  bool get isDarkMode => _prefs.getBool(StorageKeys.isDarkMode) ?? false;

  @override
  String get deviceToken => _prefs.getString(StorageKeys.deviceToken) ?? '';

  @override
  String get languageCode => _prefs.getString(StorageKeys.locale) ?? '';

  @override
  bool get isFirstLogin => _prefs.getBool(StorageKeys.isFirstLogin) ?? true;

  @override
  bool get isFirstLaunchApp =>
      _prefs.getBool(StorageKeys.isFirstLaunchApp) ?? true;

  @override
  String? get subUser => _prefs.getString(StorageKeys.subUser);

  @override
  String? get currentUser => _prefs.getString(StorageKeys.userData);

  @override
  Future<String> get accessToken =>
      Future.value(_prefs.getString(StorageKeys.authToken) ?? '');

  @override
  Future<String> get refreshToken =>
      Future.value(_prefs.getString(StorageKeys.refreshToken) ?? '');

  @override
  bool get isLoggedIn => _prefs.getBool(StorageKeys.isLoggedIn) ?? false;

  @override
  Future<String> get zaloAccessToken =>
      Future.value(_prefs.getString(StorageKeys.zaloAccessToken) ?? '');

  @override
  Future<String> get zaloRefreshToken =>
      Future.value(_prefs.getString(StorageKeys.zaloRefreshToken) ?? '');

  @override
  Future<bool> saveIsFirstLogin(bool isFirstLogin) =>
      _prefs.setBool(StorageKeys.isFirstLogin, isFirstLogin);

  @override
  Future<bool> saveIsFirsLaunchApp(bool isFirstLaunchApp) =>
      _prefs.setBool(StorageKeys.isFirstLaunchApp, isFirstLaunchApp);

  @override
  Future<void> saveAccessToken(String token) =>
      _prefs.setString(StorageKeys.authToken, token);

  @override
  Future<void> saveRefreshToken(String token) =>
      _prefs.setString(StorageKeys.refreshToken, token);

  @override
  Future<void> saveZaloAccessToken(String token) =>
      _prefs.setString(StorageKeys.zaloAccessToken, token);

  @override
  Future<void> saveZaloRefreshToken(String token) =>
      _prefs.setString(StorageKeys.zaloRefreshToken, token);

  @override
  Future<bool> saveIsDarkMode(bool isDarkMode) =>
      _prefs.setBool(StorageKeys.isDarkMode, isDarkMode);

  @override
  Future<bool> saveDeviceToken(String token) =>
      _prefs.setString(StorageKeys.deviceToken, token);

  @override
  Future<void> clearCurrentUserData() async {
    await _prefs.remove(StorageKeys.authToken);
    await _prefs.remove(StorageKeys.refreshToken);
    await _prefs.remove(StorageKeys.accessToken);
    await _prefs.remove(StorageKeys.userId);
    await _prefs.remove(StorageKeys.userData);
    await _prefs.setBool(StorageKeys.isLoggedIn, false);
  }

  @override
  Future<bool> saveSubUSer(String subUser) =>
      _prefs.setString(StorageKeys.subUser, subUser);

  @override
  Future<bool> saveCurrentUser(String user) async {
    if (user.isEmpty) return true;
    await _prefs.setString(StorageKeys.userData, user);
    await _prefs.setBool(StorageKeys.isLoggedIn, true);
    return true;
  }
}
