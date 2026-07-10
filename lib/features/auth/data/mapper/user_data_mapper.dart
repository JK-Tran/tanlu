import 'package:injectable/injectable.dart';
import 'package:tanlu_management/shared/infrastructure/data/base/base_data_mapper.dart';

import '../../domain/entity/user.dart';
import '../model/user_data.dart';

@Injectable()
class UserDataMapper extends BaseDataMapper<UserData, User>
    with DataMapperMixin<UserData, User> {
  UserDataMapper();

  @override
  User mapToEntity(UserData? data) {
    return User(
      id: data?.id ?? 0,
      email: data?.email ?? '',
      fullName: data?.fullName ?? '',
      role: data?.role ?? '',
      centerId: data?.centerId ?? 0,
      phone: data?.phone ?? '',
      avatarUrl: data?.avatarUrl ?? '',
      passwordHash: data?.passwordHash ?? '',
      fcmToken: data?.fcmToken ?? '',
      createdAt: data?.createdAt,
      updatedAt: data?.updatedAt,
      classId: data?.classId ?? 0,
    );
  }

  @override
  UserData mapToData(User entity) {
    return UserData(
      id: entity.id,
      email: entity.email,
      fullName: entity.fullName,
      role: entity.role,
      centerId: entity.centerId,
      phone: entity.phone,
      avatarUrl: entity.avatarUrl,
      passwordHash: entity.passwordHash,
      fcmToken: entity.fcmToken,
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
      classId: entity.classId,
    );
  }
}
