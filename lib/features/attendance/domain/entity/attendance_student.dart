import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tanlu_management/features/attendance/domain/entity/leave_request.dart';

part 'attendance_student.freezed.dart';

@freezed
class AttendanceStudent with _$AttendanceStudent {
  const factory AttendanceStudent({
    @Default(0) int studentId,
    @Default('') String studentCode,
    @Default('') String fullName,
    @Default('') String nickName,
    @Default('') String avatarUrl,
    @Default('') String status,
    @Default(false) bool isExcused,
    @Default('') String note,
    DateTime? checkInTime,
    DateTime? checkOutTime,
    @Default(LeaveRequest()) LeaveRequest leaveRequest,
  }) = _AttendanceStudent;
}
