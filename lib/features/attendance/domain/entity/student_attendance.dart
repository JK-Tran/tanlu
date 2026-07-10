import 'package:freezed_annotation/freezed_annotation.dart';

import 'enums/attendance_status.dart';

part 'student_attendance.freezed.dart';

/// Trạng thái điểm danh của 1 học sinh — dùng trong body POST chốt sổ sáng.
/// Tương ứng 1 phần tử trong mảng `attendances[]` của POST /me/attendances/daily.
@freezed
class StudentAttendance with _$StudentAttendance {
  const factory StudentAttendance({
    @Default(0) int studentId,
    @Default(AttendanceStatus.notMarked) AttendanceStatus status,
    DateTime? checkInTime,
    @Default('') String note,
  }) = _StudentAttendance;
}
