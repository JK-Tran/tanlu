abstract class AppPreferences {
  bool get isDarkMode;

  String get deviceToken;

  String get languageCode;

  bool get isFirstLogin;

  bool get isFirstLaunchApp;

  String? get subUser;

  String? get currentUser;

  Future<String> get accessToken;

  Future<String> get refreshToken;

  bool get isLoggedIn;

  Future<bool> saveIsFirstLogin(bool isFirstLogin);

  Future<bool> saveIsFirsLaunchApp(bool isFirstLaunchApp);

  Future<void> saveAccessToken(String token);

  Future<void> saveRefreshToken(String token);

  Future<String> get zaloAccessToken;

  Future<String> get zaloRefreshToken;

  Future<void> saveZaloAccessToken(String token);

  Future<void> saveZaloRefreshToken(String token);

  Future<bool> saveIsDarkMode(bool isDarkMode);

  Future<bool> saveDeviceToken(String token);

  Future<void> clearCurrentUserData();

  Future<bool> saveCurrentUser(String user);
}
