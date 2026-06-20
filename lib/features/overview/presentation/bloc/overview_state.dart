part of 'overview_bloc.dart';

@freezed
class OverviewState with _$OverviewState {
  const factory OverviewState({
    @Default([]) List<LeaveRequest> pendingLeaveRequests,
    @Default(true) bool isLoadingLeaveRequests,
    @Default({}) Map<String, String> studentAvatarUrls,
    String? classId,
  }) = _OverviewState;
}
