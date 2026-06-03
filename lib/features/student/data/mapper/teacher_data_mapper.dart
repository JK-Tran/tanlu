import 'package:injectable/injectable.dart';
import 'package:tanlu_management/shared/infrastructure/mapper/base_data_mapper.dart';
import 'package:tanlu_management/features/auth/data/mapper/user_data_mapper.dart';
import 'package:tanlu_management/features/student/data/model/teacher_data.dart';
import 'package:tanlu_management/features/student/domain/entity/teacher.dart';
import 'package:tanlu_management/shared/utils/date_time_utils.dart';

@Injectable()
class TeacherDataMapper extends BaseDataMapper<TeacherData, Teacher>
    with DataMapperMixin<TeacherData, Teacher> {
  TeacherDataMapper(this._userDataMapper);

  final UserDataMapper _userDataMapper;

  @override
  Teacher mapToEntity(TeacherData? data) {
    return Teacher(
      id: data?.id ?? 0,
      classId: data?.classId ?? 0,
      specialty: data?.specialty ?? '',
      qualification: data?.qualification ?? '',
      createdAt: DateTimeUtils.parseDateTime(data?.createdAt),
      updatedAt: DateTimeUtils.parseDateTime(data?.updatedAt),
      user: _userDataMapper.mapToEntity(data?.user),
    );
  }

  @override
  TeacherData mapToData(Teacher entity) {
    return TeacherData(
      id: entity.id,
      classId: entity.classId,
      specialty: entity.specialty,
      qualification: entity.qualification,
      createdAt: entity.createdAt?.toIso8601String(),
      updatedAt: entity.updatedAt?.toIso8601String(),
      user: _userDataMapper.mapToData(entity.user),
    );
  }
}
