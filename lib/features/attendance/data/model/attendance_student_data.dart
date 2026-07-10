import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tanlu_management/features/attendance/data/model/leave_request_data.dart';

part 'attendance_student_data.freezed.dart';
part 'attendance_student_data.g.dart';

@freezed
class AttendanceStudentData with _$AttendanceStudentData {
  const factory AttendanceStudentData({
    @JsonKey(name: 'studentId') int? studentId,
    @JsonKey(name: 'studentCode') String? studentCode,
    @JsonKey(name: 'fullName') String? fullName,
    @JsonKey(name: 'nickName') String? nickName,
    @JsonKey(name: 'avatarUrl') String? avatarUrl,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'isExcused') bool? isExcused,
    @JsonKey(name: 'note') String? note,
    @JsonKey(name: 'checkInTime') DateTime? checkInTime,
    @JsonKey(name: 'checkOutTime') DateTime? checkOutTime,
    @JsonKey(name: 'leaveRequest') LeaveRequestData? leaveRequest,
  }) = _AttendanceStudentData;

  const AttendanceStudentData._();
  factory AttendanceStudentData.fromJson(Map<String, dynamic> json) =>
      _$AttendanceStudentDataFromJson(json);
}
