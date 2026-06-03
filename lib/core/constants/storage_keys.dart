/// Keys cho SharedPreferences.
abstract final class StorageKeys {
  StorageKeys._();

  static const String locale = 'app_locale';
  static const String authToken = 'auth_token';
  static const String refreshToken = 'refresh_token';
  static const String accessToken = 'access_token';
  static const String userId = 'user_id';
  static const String userData = 'user_data';
  static const String isLoggedIn = 'is_logged_in';
  static const String hasLaunchedBefore = 'has_launched_before';

  // AppPreferences (shared)
  static const String isDarkMode = 'is_dark_mode';
  static const String deviceToken = 'device_token';
  static const String isFirstLogin = 'is_first_login';
  static const String isFirstLaunchApp = 'is_first_launch_app';
  static const String subUser = 'sub_user';
  static const String zaloAccessToken = 'zalo_access_token';
  static const String zaloRefreshToken = 'zalo_refresh_token';
}
