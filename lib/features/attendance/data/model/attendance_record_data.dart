import 'package:freezed_annotation/freezed_annotation.dart';

import 'leave_request_data.dart';

part 'attendance_record_data.freezed.dart';
part 'attendance_record_data.g.dart';

@freezed
class AttendanceRecordData with _$AttendanceRecordData {
  const factory AttendanceRecordData({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'studentId') int? studentId,
    @JsonKey(name: 'studentCode') String? studentCode,
    @JsonKey(name: 'fullName') String? fullName,
    @JsonKey(name: 'avatarUrl') String? avatarUrl,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'note') String? note,
    @JsonKey(name: 'checkInTime') DateTime? checkInTime,
    @JsonKey(name: 'checkOutTime') DateTime? checkOutTime,
    @JsonKey(name: 'leaveRequest') LeaveRequestData? leaveRequest,
  }) = _AttendanceRecordData;

  const AttendanceRecordData._();
  factory AttendanceRecordData.fromJson(Map<String, dynamic> json) =>
      _$AttendanceRecordDataFromJson(json);
}
