import 'package:injectable/injectable.dart';
import 'package:tanlu_management/shared/infrastructure/mapper/base_data_mapper.dart';

import '../../domain/entity/user.dart';
import '../model/user_data.dart';

@Injectable()
class RoleDataMapper extends BaseDataMapper<RoleData, Role>
    with DataMapperMixin<RoleData, Role> {
  RoleDataMapper();

  @override
  Role mapToEntity(RoleData? data) {
    return Role(code: data?.code ?? '', name: data?.name ?? '');
  }

  @override
  RoleData mapToData(Role entity) {
    return RoleData(code: entity.code, name: entity.name);
  }
}
