part of 'overview_bloc.dart';

abstract class OverviewEvent {
  const OverviewEvent();
}

@freezed
class StartOverviewEvent extends OverviewEvent with _$StartOverviewEvent {
  const factory StartOverviewEvent({String? classId}) = _StartOverviewEvent;
}

@freezed
class PendingLeaveRequestsUpdatedEvent extends OverviewEvent
    with _$PendingLeaveRequestsUpdatedEvent {
  const factory PendingLeaveRequestsUpdatedEvent(
    List<LeaveRequest> leaveRequests,
  ) = _PendingLeaveRequestsUpdatedEvent;
}

class RefreshOverviewAttendanceEvent extends OverviewEvent {
  const RefreshOverviewAttendanceEvent();
}
