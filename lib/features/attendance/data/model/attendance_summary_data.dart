import 'package:freezed_annotation/freezed_annotation.dart';

part 'attendance_summary_data.freezed.dart';
part 'attendance_summary_data.g.dart';

@freezed
class AttendanceSummaryData with _$AttendanceSummaryData {
  const factory AttendanceSummaryData({
    @JsonKey(name: 'total') int? total,
    @JsonKey(name: 'present') int? present,
    @JsonKey(name: 'absent_excused') int? absentExcused,
    @JsonKey(name: 'absent_unexcused') int? absentUnexcused,
    @JsonKey(name: 'leave_requests') int? leaveRequests,
  }) = _AttendanceSummaryData;

  const AttendanceSummaryData._();
  factory AttendanceSummaryData.fromJson(Map<String, dynamic> json) =>
      _$AttendanceSummaryDataFromJson(json);
}
