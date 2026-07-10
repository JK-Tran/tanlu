import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/student/data/model/class_info_data.dart';
import 'package:tanlu_management/features/student/domain/entity/class_info.dart';
import 'package:tanlu_management/shared/infrastructure/data/base/base_data_mapper.dart';

@Injectable()
class ClassInfoDataMapper extends BaseDataMapper<ClassInfoData, ClassInfo>
    with DataMapperMixin<ClassInfoData, ClassInfo> {
  ClassInfoDataMapper();

  @override
  ClassInfo mapToEntity(ClassInfoData? data) {
    return ClassInfo(id: data?.id ?? 0, name: data?.name ?? '');
  }

  @override
  ClassInfoData mapToData(ClassInfo entity) {
    return ClassInfoData(id: entity.id, name: entity.name);
  }
}
