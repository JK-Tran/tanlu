import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/auth/data/mapper/center_data_mapper.dart';
import 'package:tanlu_management/features/student/data/model/student_data.dart';
import 'package:tanlu_management/features/student/domain/entity/student.dart';
import 'package:tanlu_management/shared/infrastructure/mapper/base_data_mapper.dart';

@Injectable()
class ClassroomDataMapper extends BaseDataMapper<ClassroomData, Classroom>
    with DataMapperMixin<ClassroomData, Classroom> {
  ClassroomDataMapper(this._centerDataMapper);

  final CenterDataMapper _centerDataMapper;
  @override
  Classroom mapToEntity(ClassroomData? data) {
    return Classroom(
      id: data?.id ?? 0,
      name: data?.name ?? '',
      code: data?.code ?? '',
      center: _centerDataMapper.mapToEntity(data?.center),
    );
  }

  @override
  ClassroomData mapToData(Classroom entity) {
    return ClassroomData(
      id: entity.id,
      name: entity.name,
      code: entity.code,
      center: _centerDataMapper.mapToData(entity.center),
    );
  }
}
