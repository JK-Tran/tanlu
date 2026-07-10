import 'package:injectable/injectable.dart';
import 'package:tanlu_management/core/constants/storage_keys.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tanlu_management/shared/services/local_storage/app_preferences.dart';

/// Implementation of [AppPreferences] using [SharedPrefsHelper].
@LazySingleton(as: AppPreferences)
class AppPreferencesService implements AppPreferences {
  AppPreferencesService(this._sharedPreference);

  final SharedPreferences _sharedPreference;

  @override
  bool get isDarkMode =>
      _sharedPreference.getBool(StorageKeys.isDarkMode) ?? false;

  @override
  String get deviceToken =>
      _sharedPreference.getString(StorageKeys.deviceToken) ?? '';

  @override
  String get languageCode =>
      _sharedPreference.getString(StorageKeys.locale) ?? '';

  @override
  bool get isFirstLogin =>
      _sharedPreference.getBool(StorageKeys.isFirstLogin) ?? true;

  @override
  bool get isFirstLaunchApp =>
      _sharedPreference.getBool(StorageKeys.isFirstLaunchApp) ?? true;

  @override
  String? get subUser => _sharedPreference.getString(StorageKeys.subUser);

  @override
  String? get currentUser => _sharedPreference.getString(StorageKeys.userData);

  @override
  Future<String> get accessToken =>
      Future.value(_sharedPreference.getString(StorageKeys.authToken) ?? '');

  @override
  Future<String> get refreshToken =>
      Future.value(_sharedPreference.getString(StorageKeys.refreshToken) ?? '');

  @override
  bool get isLoggedIn =>
      _sharedPreference.getBool(StorageKeys.isLoggedIn) ?? false;

  @override
  Future<String> get zaloAccessToken => Future.value(
    _sharedPreference.getString(StorageKeys.zaloAccessToken) ?? '',
  );

  @override
  Future<String> get zaloRefreshToken => Future.value(
    _sharedPreference.getString(StorageKeys.zaloRefreshToken) ?? '',
  );

  @override
  Future<bool> saveIsFirstLogin(bool isFirstLogin) =>
      _sharedPreference.setBool(StorageKeys.isFirstLogin, isFirstLogin);

  @override
  Future<bool> saveIsFirsLaunchApp(bool isFirstLaunchApp) =>
      _sharedPreference.setBool(StorageKeys.isFirstLaunchApp, isFirstLaunchApp);

  @override
  Future<void> saveAccessToken(String token) =>
      _sharedPreference.setString(StorageKeys.authToken, token);

  @override
  Future<void> saveRefreshToken(String token) =>
      _sharedPreference.setString(StorageKeys.refreshToken, token);

  @override
  Future<void> saveZaloAccessToken(String token) =>
      _sharedPreference.setString(StorageKeys.zaloAccessToken, token);

  @override
  Future<void> saveZaloRefreshToken(String token) =>
      _sharedPreference.setString(StorageKeys.zaloRefreshToken, token);

  @override
  Future<bool> saveIsDarkMode(bool isDarkMode) =>
      _sharedPreference.setBool(StorageKeys.isDarkMode, isDarkMode);

  @override
  Future<bool> saveDeviceToken(String token) =>
      _sharedPreference.setString(StorageKeys.deviceToken, token);

  @override
  Future<void> clearCurrentUserData() async {
    await _sharedPreference.remove(StorageKeys.authToken);
    await _sharedPreference.remove(StorageKeys.refreshToken);
    await _sharedPreference.remove(StorageKeys.accessToken);
    await _sharedPreference.remove(StorageKeys.userId);
    await _sharedPreference.remove(StorageKeys.userData);
    await _sharedPreference.setBool(StorageKeys.isLoggedIn, false);
  }

  Future<bool> saveSubUSer(String subUser) =>
      _sharedPreference.setString(StorageKeys.subUser, subUser);

  @override
  Future<bool> saveCurrentUser(String user) async {
    if (user.isEmpty) return true;
    await _sharedPreference.setString(StorageKeys.userData, user);
    await _sharedPreference.setBool(StorageKeys.isLoggedIn, true);
    return true;
  }
}
