import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/auth/data/mapper/center_data_mapper.dart';
import 'package:tanlu_management/features/auth/data/mapper/role_data_mapper.dart';
import 'package:tanlu_management/shared/infrastructure/mapper/base_data_mapper.dart';

import '../../domain/entity/user.dart';
import '../model/user_data.dart';

@Injectable()
class UserDataMapper extends BaseDataMapper<UserData, User>
    with DataMapperMixin<UserData, User> {
  UserDataMapper({
    required CenterDataMapper centerDataMapper,
    required RoleDataMapper roleDataMapper,
  }) : _centerDataMapper = centerDataMapper,
       _roleDataMapper = roleDataMapper;

  final CenterDataMapper _centerDataMapper;
  final RoleDataMapper _roleDataMapper;
  @override
  User mapToEntity(UserData? data) {
    return User(
      id: data?.id ?? 0,
      email: data?.email ?? '',
      fullName: data?.fullName ?? '',
      phone: data?.phone ?? '',
      avatarFileId: data?.avatarFileId ?? '',
      status: data?.status ?? '',
      createdAt: data?.createdAt != null
          ? DateTime.tryParse(data!.createdAt!)
          : null,
      center: _centerDataMapper.mapToEntity(data?.center),
      role: _roleDataMapper.mapToEntity(data?.role),
    );
  }

  @override
  UserData mapToData(User entity) {
    return UserData(
      id: entity.id,
      email: entity.email,
      fullName: entity.fullName,
      phone: entity.phone.isNotEmpty ? entity.phone : null,
      avatarFileId: entity.avatarFileId.isNotEmpty ? entity.avatarFileId : null,
      status: entity.status.isNotEmpty ? entity.status : null,
      createdAt: entity.createdAt?.toIso8601String(),
      center: _centerDataMapper.mapToData(entity.center),
      role: _roleDataMapper.mapToData(entity.role),
    );
  }
}
