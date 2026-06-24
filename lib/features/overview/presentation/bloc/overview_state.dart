part of 'overview_bloc.dart';

@freezed
class OverviewState with _$OverviewState {
  const factory OverviewState({
    @Default([]) List<LeaveRequest> pendingLeaveRequests,
    @Default(true) bool isLoadingLeaveRequests,
    @Default({}) Map<String, String> studentAvatarUrls,
    @Default(true) bool isLoadingAttendance,
    @Default(false) bool isMorningCheckInCompleted,
    @Default(0) int attendanceTotal,
    @Default(0) int attendancePresentCount,
    @Default(0) int attendanceAbsentCount,
    @Default(0) int attendanceExcusedCount,
    @Default([]) List<OverviewMarkedStudent> markedAttendanceStudents,
    String? classId,
  }) = _OverviewState;
}

class OverviewMarkedStudent {
  const OverviewMarkedStudent({
    required this.nickname,
    this.avatarUrl,
  });

  final String nickname;
  final String? avatarUrl;
}
