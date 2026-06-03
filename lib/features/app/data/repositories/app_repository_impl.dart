import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/app/domain/repositories/app_repository.dart';
import 'package:tanlu_management/shared/services/local_storage/app_preferences.dart';

@LazySingleton(as: AppRepository)
class AppRepositoryImpl implements AppRepository {
  AppRepositoryImpl(this._appPreferences);

  final AppPreferences _appPreferences;

  @override
  bool get isFirstLogin => _appPreferences.isFirstLogin;

  @override
  bool get isFirstLaunchApp => _appPreferences.isFirstLaunchApp;

  @override
  Stream<bool> get onConnectivityChanged => Connectivity().onConnectivityChanged
      .map((event) => !event.contains(ConnectivityResult.none));

  @override
  bool get isDarkMode => _appPreferences.isDarkMode;

  @override
  Future<bool> saveIsFirstLogin(bool isFirstLogin) =>
      _appPreferences.saveIsFirstLogin(isFirstLogin);

  @override
  Future<bool> saveIsFirstLaunchApp(bool isFirstLaunchApp) =>
      _appPreferences.saveIsFirsLaunchApp(isFirstLaunchApp);

  @override
  Future<bool> saveDeviceToken(String deviceToken) =>
      _appPreferences.saveDeviceToken(deviceToken);

  @override
  Future<bool> saveIsDarkMode(bool isDarkMode) =>
      _appPreferences.saveIsDarkMode(isDarkMode);
}
