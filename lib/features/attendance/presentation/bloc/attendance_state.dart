part of 'attendance_bloc.dart';

@freezed
class AttendanceState with _$AttendanceState {
  const factory AttendanceState({
    @Default(false) bool isLoading,
    @Default(false) bool isSubmitting,
    @Default('') String onPageError,
    String? successMessage,
    AppException? exception,
    DailyAttendanceResult? dailyAttendance,
    DailyAttendanceResult? historyAttendance,
    DateTime? historyDate,
    PagedList<LeaveRequest>? leaveRequests,
  }) = _AttendanceState;
}
