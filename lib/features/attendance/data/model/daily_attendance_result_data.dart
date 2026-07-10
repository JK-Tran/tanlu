import 'package:freezed_annotation/freezed_annotation.dart';

import 'attendance_session_data.dart';
import 'attendance_student_data.dart';
import 'attendance_summary_data.dart';

part 'daily_attendance_result_data.freezed.dart';
part 'daily_attendance_result_data.g.dart';

@freezed
class DailyAttendanceResultData with _$DailyAttendanceResultData {
  const factory DailyAttendanceResultData({
    @JsonKey(name: 'date') String? date,
    @JsonKey(name: 'session') AttendanceSessionData? session,
    @JsonKey(name: 'summary') AttendanceSummaryData? summary,
    @JsonKey(name: 'roster') List<AttendanceStudentData>? roster,
  }) = _DailyAttendanceResultData;

  const DailyAttendanceResultData._();
  factory DailyAttendanceResultData.fromJson(Map<String, dynamic> json) =>
      _$DailyAttendanceResultDataFromJson(json);
}
