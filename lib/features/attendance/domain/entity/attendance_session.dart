import 'package:freezed_annotation/freezed_annotation.dart';

part 'attendance_session.freezed.dart';

@freezed
class AttendanceSession with _$AttendanceSession {
  const factory AttendanceSession({
    @Default(false) bool isCheckInCompleted,
    @Default(false) bool isCheckOutCompleted,
    DateTime? completedAt,
  }) = _AttendanceSession;
}
