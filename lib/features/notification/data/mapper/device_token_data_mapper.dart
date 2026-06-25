import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/notification/data/model/device_token_data.dart';
import 'package:tanlu_management/features/notification/domain/entity/device_token.dart';
import 'package:tanlu_management/shared/infrastructure/mapper/base_data_mapper.dart';

@injectable
class DeviceTokenDataMapper extends BaseDataMapper<DeviceTokenData, DeviceToken>
    with DataMapperMixin<DeviceTokenData, DeviceToken> {
  @override
  DeviceToken mapToEntity(DeviceTokenData? model) {
    return DeviceToken(
      userId: model?.userId ?? '',
      token: model?.fcmToken ?? '',
      updatedAt: model?.fcmTokenUpdatedAt,
    );
  }

  @override
  DeviceTokenData mapToData(DeviceToken entity) {
    return DeviceTokenData(
      userId: entity.userId,
      fcmToken: entity.token,
      fcmTokenUpdatedAt: entity.updatedAt,
    );
  }
}
