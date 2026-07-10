import 'package:freezed_annotation/freezed_annotation.dart';

import 'attendance_session.dart';
import 'attendance_student.dart';
import 'attendance_summary.dart';

part 'daily_attendance_result.freezed.dart';

@freezed
class DailyAttendanceResult with _$DailyAttendanceResult {
  const factory DailyAttendanceResult({
    @Default('') String date,
    @Default(AttendanceSession()) AttendanceSession session,
    @Default(AttendanceSummary()) AttendanceSummary summary,
    @Default([]) List<AttendanceStudent> roster,
  }) = _DailyAttendanceResult;
}
