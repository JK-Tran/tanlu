import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tanlu_management/features/attendance/domain/entity/attendance.dart';
import 'package:tanlu_management/features/attendance/domain/entity/attendance_session.dart';
import 'package:tanlu_management/features/attendance/domain/entity/leave_request.dart';
import 'package:tanlu_management/features/student/domain/entity/student.dart';

part 'daily_attendance.freezed.dart';

@freezed
class DailyAttendance with _$DailyAttendance {
  const factory DailyAttendance({
    @Default([]) List<Student> students,
    @Default([]) List<Attendance> attendances,
    @Default([]) List<LeaveRequest> leaveRequests,
    AttendanceSession? session,
  }) = _DailyAttendance;
}
