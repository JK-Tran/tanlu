import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/attendance/data/model/student_attendance_data.dart';
import 'package:tanlu_management/features/attendance/domain/entity/enums/attendance_status.dart';
import 'package:tanlu_management/features/attendance/domain/entity/student_attendance.dart';
import 'package:tanlu_management/shared/infrastructure/data/base/base_data_mapper.dart';
import 'package:tanlu_management/shared/utils/date_time_utils.dart';

@Injectable()
class StudentAttendanceDataMapper
    extends BaseDataMapper<StudentAttendanceData, StudentAttendance>
    with DataMapperMixin<StudentAttendanceData, StudentAttendance> {
  StudentAttendanceDataMapper();

  @override
  StudentAttendance mapToEntity(StudentAttendanceData? data) {
    return StudentAttendance(
      studentId: data?.studentId ?? 0,
      status: AttendanceStatusMapper.fromApi(data?.status ?? ''),
      checkInTime: DateTimeUtils.parseDateTimeDateOnlyType2(data?.checkInTime),
      note: data?.note ?? '',
    );
  }

  @override
  StudentAttendanceData mapToData(StudentAttendance entity) {
    return StudentAttendanceData(
      studentId: entity.studentId,
      status: entity.status.apiValue,
      checkInTime: entity.checkInTime?.toIso8601String(),
      note: entity.note.isEmpty ? null : entity.note,
    );
  }
}
