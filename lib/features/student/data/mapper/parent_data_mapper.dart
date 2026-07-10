import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/student/data/model/parent_data.dart';
import 'package:tanlu_management/features/student/domain/entity/parent.dart';
import 'package:tanlu_management/shared/infrastructure/data/base/base_data_mapper.dart';

@Injectable()
class ParentDataMapper extends BaseDataMapper<ParentData, Parent>
    with DataMapperMixin<ParentData, Parent> {
  ParentDataMapper();

  @override
  Parent mapToEntity(ParentData? data) {
    return Parent(
      id: data?.id ?? 0,
      fullName: data?.fullName ?? '',
      phone: data?.phone ?? '',
      avatarUrl: data?.avatarUrl ?? '',
    );
  }

  @override
  ParentData mapToData(Parent entity) {
    return ParentData(
      id: entity.id,
      fullName: entity.fullName,
      phone: entity.phone,
      avatarUrl: entity.avatarUrl,
    );
  }
}
