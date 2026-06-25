import 'package:tanlu_management/features/attendance/domain/entity/attendance.dart';
import 'package:tanlu_management/features/attendance/domain/entity/attendance_session.dart';
import 'package:tanlu_management/features/attendance/domain/entity/daily_attendance.dart';
import 'package:tanlu_management/features/attendance/domain/entity/leave_request.dart';

abstract class AttendanceRepository {
  /// Roster + attendances + leave + session đã merge theo ngày.
  Future<DailyAttendance> getDailyAttendance(String classId, String date);

  Future<List<Attendance>> getAttendances(String classId, String date);

  Future<AttendanceSession?> getSession(String classId, String date);

  Future<List<LeaveRequest>> getLeaveRequests(String classId, String date);

  Stream<List<LeaveRequest>> streamLeaveRequests(String classId, String date);

  /// Lưu điểm danh sáng — ghi session + attendances.
  Future<void> submitAttendances({
    required AttendanceSession session,
    required List<Attendance> attendances,
  });

  /// Cập nhật attendances sau khi đã lưu điểm danh sáng.
  Future<void> updateAttendances({required List<Attendance> attendances});

  /// Chốt cuối ngày — ghi giờ về + isCheckOutCompleted.
  Future<void> submitCompleteCheckOut({
    required AttendanceSession session,
    required List<Attendance> attendances,
  });

  /// Duyệt / từ chối đơn xin phép.
  Future<void> submitLeaveDecision({
    required LeaveRequest request,
    required bool isApproved,
    required String reviewedBy,
    required bool updateAttendance,
  });

  Future<List<Attendance>> getAttendanceHistory({
    required String studentId,
    required String startDate,
    required String endDate,
  });
}
