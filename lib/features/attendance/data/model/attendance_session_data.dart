import 'package:freezed_annotation/freezed_annotation.dart';

part 'attendance_session_data.freezed.dart';
part 'attendance_session_data.g.dart';

@freezed
class AttendanceSessionData with _$AttendanceSessionData {
  const factory AttendanceSessionData({
    @JsonKey(name: 'isCheckInCompleted') bool? isCheckInCompleted,
    @JsonKey(name: 'isCheckOutCompleted') bool? isCheckOutCompleted,
    @JsonKey(name: 'completedAt') DateTime? completedAt,
  }) = _AttendanceSessionData;

  const AttendanceSessionData._();
  factory AttendanceSessionData.fromJson(Map<String, dynamic> json) =>
      _$AttendanceSessionDataFromJson(json);
}
