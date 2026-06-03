import 'package:injectable/injectable.dart';
import 'package:tanlu_management/shared/infrastructure/mapper/base_data_mapper.dart';
import 'package:tanlu_management/features/auth/data/mapper/user_data_mapper.dart';
import 'package:tanlu_management/features/student/data/model/parent_data.dart';
import 'package:tanlu_management/features/student/domain/entity/parent.dart';
import 'package:tanlu_management/shared/utils/date_time_utils.dart';

@Injectable()
class ParentDataMapper extends BaseDataMapper<ParentData, Parent>
    with DataMapperMixin<ParentData, Parent> {
  ParentDataMapper(this._userDataMapper);

  final UserDataMapper _userDataMapper;

  @override
  Parent mapToEntity(ParentData? data) {
    return Parent(
      id: data?.id ?? 0,
      address: data?.address ?? '',
      occupation: data?.occupation ?? '',
      createdAt: DateTimeUtils.parseDateTime(data?.createdAt),
      updatedAt: DateTimeUtils.parseDateTime(data?.updatedAt),
      user: _userDataMapper.mapToEntity(data?.user),
    );
  }

  @override
  ParentData mapToData(Parent entity) {
    return ParentData(
      id: entity.id,
      address: entity.address,
      occupation: entity.occupation,
      createdAt: entity.createdAt?.toIso8601String(),
      updatedAt: entity.updatedAt?.toIso8601String(),
      user: _userDataMapper.mapToData(entity.user),
    );
  }
}
