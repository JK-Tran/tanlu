import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/notification/data/mapper/device_token_data_mapper.dart';
import 'package:tanlu_management/features/notification/data/sources/notification_firebase_source.dart';
import 'package:tanlu_management/features/notification/domain/entity/device_token.dart';
import 'package:tanlu_management/features/notification/domain/repositories/notification_repository.dart';
import 'package:tanlu_management/shared/services/local_storage/app_preferences.dart';

@LazySingleton(as: NotificationRepository)
class NotificationRepositoryImpl implements NotificationRepository {
  NotificationRepositoryImpl(
    this._appPreferences,
    this._firebaseSource,
    this._deviceTokenDataMapper,
  );

  final AppPreferences _appPreferences;
  final NotificationFirebaseSource _firebaseSource;
  final DeviceTokenDataMapper _deviceTokenDataMapper;

  @override
  String get localDeviceToken => _appPreferences.deviceToken;

  @override
  Future<void> saveDeviceToken(DeviceToken deviceToken) async {
    await _appPreferences.saveDeviceToken(deviceToken.token);
    await _firebaseSource.saveDeviceToken(
      _deviceTokenDataMapper.mapToData(deviceToken),
    );
  }

  @override
  Future<void> clearDeviceToken(String userId) async {
    await _firebaseSource.clearDeviceToken(userId);
  }

  @override
  Future<void> clearLocalDeviceToken() => _appPreferences.saveDeviceToken('');
}
