import 'package:freezed_annotation/freezed_annotation.dart';

part 'attendance_summary.freezed.dart';

@freezed
class AttendanceSummary with _$AttendanceSummary {
  const factory AttendanceSummary({
    @Default(0) int total,
    @Default(0) int present,
    @Default(0) int absentExcused,
    @Default(0) int absentUnexcused,
    @Default(0) int leaveRequests,
  }) = _AttendanceSummary;
}
