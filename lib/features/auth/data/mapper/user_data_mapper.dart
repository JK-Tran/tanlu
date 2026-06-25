import 'package:injectable/injectable.dart';
import 'package:tanlu_management/shared/infrastructure/mapper/base_data_mapper.dart';

import '../../domain/entity/user.dart';
import '../model/user_data.dart';

@Injectable()
class UserDataMapper extends BaseDataMapper<UserData, User>
    with DataMapperMixin<UserData, User> {
  UserDataMapper();

  @override
  User mapToEntity(UserData? data) {
    return User(
      id: data?.id ?? '',
      email: data?.email ?? '',
      fullName: data?.fullName ?? '',
      role: data?.role ?? '',
      centerId: data?.centerId,
      phone: data?.phone,
      avatar: data?.avatar,
      classId: data?.classId,
    );
  }

  @override
  UserData mapToData(User entity) {
    return UserData(
      id: entity.id.isNotEmpty ? entity.id : null,
      email: entity.email.isNotEmpty ? entity.email : null,
      fullName: entity.fullName.isNotEmpty ? entity.fullName : null,
      role: entity.role.isNotEmpty ? entity.role : null,
      centerId: entity.centerId,
      phone: entity.phone,
      avatar: entity.avatar,
      classId: entity.classId,
    );
  }
}
