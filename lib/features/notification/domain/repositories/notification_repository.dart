import 'package:tanlu_management/features/notification/domain/entity/device_token.dart';

abstract class NotificationRepository {
  String get localDeviceToken;

  Future<void> saveDeviceToken(DeviceToken deviceToken);

  Future<void> clearDeviceToken(String userId);

  Future<void> clearLocalDeviceToken();
}
