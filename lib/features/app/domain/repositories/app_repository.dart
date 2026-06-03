abstract class AppRepository {
  bool get isFirstLaunchApp;

  bool get isFirstLogin;

  bool get isDarkMode;

  Stream<bool> get onConnectivityChanged;

  Future<bool> saveDeviceToken(String deviceToken);

  Future<bool> saveIsFirstLogin(bool isFirstLogin);

  Future<bool> saveIsFirstLaunchApp(bool isFirstLaunchApp);

  Future<bool> saveIsDarkMode(bool isDarkMode);
}
