import 'package:tanlu_management/features/attendance/domain/entity/attendance_student.dart';
import 'package:tanlu_management/shared/infrastructure/domain/entity/paged_list.dart';

import '../entity/daily_attendance_result.dart';
import '../entity/leave_request.dart';

abstract class AttendanceRepository {
  Future<DailyAttendanceResult> getDailyAttendance({String? date});

  Future<PagedList<LeaveRequest>> getLeaveRequests({
    required int page,
    required int limit,
  });

  Future<void> submitMorningAttendance({
    required String date,
    required List<AttendanceStudent> attendanceStudent,
  });

  Future<void> submitCheckOut({
    required String date,
    required String studentId,
    required String checkOutTime,
  });

  Future<void> submitCompleteCheckOut({required String date});

  Future<LeaveRequest> submitLeaveDecision({
    required int requestId,
    required String status,
    String? decisionNote,
  });
}
