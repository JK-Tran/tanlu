import 'package:freezed_annotation/freezed_annotation.dart';

import 'leave_request.dart';

part 'attendance_record.freezed.dart';

/// Một bản ghi điểm danh của 1 học sinh trong 1 ngày.
@freezed
class AttendanceRecord with _$AttendanceRecord {
  const factory AttendanceRecord({
    @Default('') String id,
    @Default(0) int studentId,
    @Default('') String studentCode,
    @Default('') String fullName,
    @Default('') String avatarUrl,
    @Default('') String status,
    @Default('') String note,
    DateTime? checkInTime,
    DateTime? checkOutTime,
    @Default(LeaveRequest()) LeaveRequest leaveRequest,
  }) = _AttendanceRecord;
}
