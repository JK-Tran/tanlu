import 'package:injectable/injectable.dart';
import 'package:tanlu_management/shared/infrastructure/mapper/base_data_mapper.dart';
import 'package:tanlu_management/features/student/data/mapper/teacher_data_mapper.dart';
import 'package:tanlu_management/features/student/data/model/student_teacher_data.dart';
import 'package:tanlu_management/features/student/domain/entity/student_teacher.dart';
import 'package:tanlu_management/shared/utils/date_time_utils.dart';

@Injectable()
class StudentTeacherDataMapper
    extends BaseDataMapper<StudentTeacherData, StudentTeacher>
    with DataMapperMixin<StudentTeacherData, StudentTeacher> {
  StudentTeacherDataMapper(this._teacherDataMapper);

  final TeacherDataMapper _teacherDataMapper;

  @override
  StudentTeacher mapToEntity(StudentTeacherData? data) {
    return StudentTeacher(
      id: data?.id ?? 0,
      studentId: data?.studentId ?? 0,
      teacherId: data?.teacherId ?? 0,
      isPrimaryTeacher: data?.isPrimaryTeacher ?? false,
      startDate: DateTimeUtils.parseDateTime(data?.startDate),
      endDate: DateTimeUtils.parseDateTime(data?.endDate),
      status: data?.status ?? '',
      createdAt: DateTimeUtils.parseDateTime(data?.createdAt),
      teacher: _teacherDataMapper.mapToEntity(data?.teacher),
    );
  }

  @override
  StudentTeacherData mapToData(StudentTeacher entity) {
    return StudentTeacherData(
      id: entity.id,
      studentId: entity.studentId,
      teacherId: entity.teacherId,
      isPrimaryTeacher: entity.isPrimaryTeacher,
      startDate: entity.startDate?.toIso8601String(),
      endDate: entity.endDate?.toIso8601String(),
      status: entity.status,
      createdAt: entity.createdAt?.toIso8601String(),
      teacher: _teacherDataMapper.mapToData(entity.teacher),
    );
  }
}
