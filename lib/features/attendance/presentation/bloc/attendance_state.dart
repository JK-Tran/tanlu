part of 'attendance_bloc.dart';

@freezed
class AttendanceState with _$AttendanceState {
  const factory AttendanceState({
    @Default('') String classId,
    DateTime? selectedDate,
    @Default([]) List<Student> students,
    @Default([]) List<Attendance> attendances,
    @Default([]) List<LeaveRequest> leaveRequests,
    AttendanceSession? session,
    @Default('') String onPageError,
    @Default(false) bool isLoading,
    @Default(false) bool isSaving,
    @Default(false) bool hasUnsavedChanges,
    DateTime? historyDate,
    @Default([]) List<Student> historyStudents,
    @Default([]) List<Attendance> historyAttendances,
    AttendanceSession? historySession,
    @Default(false) bool isHistoryLoading,
    @Default('') String historyError,
  }) = _AttendanceState;
}
