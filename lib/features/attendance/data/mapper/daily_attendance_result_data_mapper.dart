import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/attendance/data/mapper/attendance_session_data_mapper.dart';
import 'package:tanlu_management/features/attendance/data/mapper/attendance_student_data_mapper.dart';
import 'package:tanlu_management/features/attendance/data/mapper/attendance_summary_data_mapper.dart';
import 'package:tanlu_management/features/attendance/data/model/daily_attendance_result_data.dart';
import 'package:tanlu_management/features/attendance/domain/entity/daily_attendance_result.dart';
import 'package:tanlu_management/shared/infrastructure/data/base/base_data_mapper.dart';

@Injectable()
class DailyAttendanceResultDataMapper
    extends BaseDataMapper<DailyAttendanceResultData, DailyAttendanceResult>
    with DataMapperMixin<DailyAttendanceResultData, DailyAttendanceResult> {
  DailyAttendanceResultDataMapper(
    this._attendanceSessionDataMapper,
    this._attendanceSummaryDataMapper,
    this._attendanceStudentDataMapper,
  );

  final AttendanceSessionDataMapper _attendanceSessionDataMapper;
  final AttendanceSummaryDataMapper _attendanceSummaryDataMapper;
  final AttendanceStudentDataMapper _attendanceStudentDataMapper;

  @override
  DailyAttendanceResult mapToEntity(DailyAttendanceResultData? data) {
    return DailyAttendanceResult(
      date: data?.date ?? '',
      session: _attendanceSessionDataMapper.mapToEntity(data?.session),
      summary: _attendanceSummaryDataMapper.mapToEntity(data?.summary),
      roster: _attendanceStudentDataMapper.mapToListEntity(data?.roster),
    );
  }

  @override
  DailyAttendanceResultData mapToData(DailyAttendanceResult entity) {
    return DailyAttendanceResultData(
      date: entity.date,
      session: _attendanceSessionDataMapper.mapToData(entity.session),
      summary: _attendanceSummaryDataMapper.mapToData(entity.summary),
      roster: _attendanceStudentDataMapper.mapToListData(entity.roster),
    );
  }
}
