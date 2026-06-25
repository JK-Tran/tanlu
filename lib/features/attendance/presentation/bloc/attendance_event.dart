part of 'attendance_bloc.dart';

abstract class AttendanceEvent {
  const AttendanceEvent();
}

@freezed
class FetchDailyAttendance extends AttendanceEvent with _$FetchDailyAttendance {
  const factory FetchDailyAttendance({
    required String classId,
    required DateTime date,
  }) = _FetchDailyAttendance;
}

@freezed
class FetchAttendanceHistoryEvent extends AttendanceEvent
    with _$FetchAttendanceHistoryEvent {
  const factory FetchAttendanceHistoryEvent({
    required String classId,
    required DateTime date,
  }) = _FetchAttendanceHistoryEvent;
}

@freezed
class MarkStudentAttendanceEvent extends AttendanceEvent
    with _$MarkStudentAttendanceEvent {
  const factory MarkStudentAttendanceEvent({required Attendance attendance}) =
      _MarkStudentAttendanceEvent;
}

@freezed
class CompleteAttendanceSessionEvent extends AttendanceEvent
    with _$CompleteAttendanceSessionEvent {
  const factory CompleteAttendanceSessionEvent() =
      _CompleteAttendanceSessionEvent;
}

@freezed
class UpdateDailyAttendanceEvent extends AttendanceEvent
    with _$UpdateDailyAttendanceEvent {
  const factory UpdateDailyAttendanceEvent() = _UpdateDailyAttendanceEvent;
}

@freezed
class CompleteCheckOutSessionEvent extends AttendanceEvent
    with _$CompleteCheckOutSessionEvent {
  const factory CompleteCheckOutSessionEvent() = _CompleteCheckOutSessionEvent;
}

@freezed
class MarkStudentCheckOutEvent extends AttendanceEvent
    with _$MarkStudentCheckOutEvent {
  const factory MarkStudentCheckOutEvent({required String studentId}) =
      _MarkStudentCheckOutEvent;
}

@freezed
class SubmitLeaveDecisionEvent extends AttendanceEvent
    with _$SubmitLeaveDecisionEvent {
  const factory SubmitLeaveDecisionEvent({
    required String requestId,
    required bool isApproved,
    @Default(false) bool confirmPresentOverride,
  }) = _SubmitLeaveDecisionEvent;
}

@freezed
class LeaveRequestsUpdatedEvent extends AttendanceEvent
    with _$LeaveRequestsUpdatedEvent {
  const factory LeaveRequestsUpdatedEvent(List<LeaveRequest> leaveRequests) =
      _LeaveRequestsUpdatedEvent;
}
