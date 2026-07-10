part of 'attendance_bloc.dart';

abstract class AttendanceEvent {
  const AttendanceEvent();
}

@freezed
class FetchDailyAttendance extends AttendanceEvent with _$FetchDailyAttendance {
  const factory FetchDailyAttendance({String? date}) = _FetchDailyAttendance;
}

@freezed
class FetchHistoryAttendance extends AttendanceEvent
    with _$FetchHistoryAttendance {
  const factory FetchHistoryAttendance({required DateTime date}) =
      _FetchHistoryAttendance;
}

@freezed
class RefreshHistoryAttendance extends AttendanceEvent
    with _$RefreshHistoryAttendance {
  const factory RefreshHistoryAttendance({
    required Completer<void> completer,
    required DateTime date,
  }) = _RefreshHistoryAttendance;
}

@freezed
class RefreshDailyAttendance extends AttendanceEvent
    with _$RefreshDailyAttendance {
  const factory RefreshDailyAttendance({
    required Completer<void> completer,
    String? date,
  }) = _RefreshDailyAttendance;
}

@freezed
class LeaveRequestsStarted extends AttendanceEvent with _$LeaveRequestsStarted {
  const factory LeaveRequestsStarted({@Default(10) int limit}) =
      _LeaveRequestsStarted;
}

@freezed
class LeaveRequestsLoadMore extends AttendanceEvent
    with _$LeaveRequestsLoadMore {
  const factory LeaveRequestsLoadMore() = _LeaveRequestsLoadMore;
}

@freezed
class LeaveRequestsRefreshed extends AttendanceEvent
    with _$LeaveRequestsRefreshed {
  const factory LeaveRequestsRefreshed({
    required Completer<void> completer,
    @Default(10) int limit,
  }) = _LeaveRequestsRefreshed;
}

@freezed
class ToggleStudentAttendanceEvent extends AttendanceEvent
    with _$ToggleStudentAttendanceEvent {
  const factory ToggleStudentAttendanceEvent({required int studentId}) =
      _ToggleStudentAttendanceEvent;
}

@freezed
class ChangeStudentAttendanceStatusEvent extends AttendanceEvent
    with _$ChangeStudentAttendanceStatusEvent {
  const factory ChangeStudentAttendanceStatusEvent({
    required int studentId,
    required AttendanceStatus status,
  }) = _ChangeStudentAttendanceStatusEvent;
}

class SubmitMorningAttendanceEvent extends AttendanceEvent {
  const SubmitMorningAttendanceEvent();
}

/// Cập nhật trạng thái 1 học sinh sau khi đã chốt sổ sáng.
/// Gọi PATCH /me/attendances/daily chỉ với bé đó.
class UpdateStudentAttendanceEvent extends AttendanceEvent {
  const UpdateStudentAttendanceEvent({
    required this.studentId,
    required this.status,
    this.note,
  });

  final int studentId;
  final AttendanceStatus status;
  final String? note;
}

@freezed
class SubmitCheckOutEvent extends AttendanceEvent with _$SubmitCheckOutEvent {
  const factory SubmitCheckOutEvent({
    required String studentId,
    required String checkOutTime,
  }) = _SubmitCheckOutEvent;
}

class SubmitCompleteCheckOutEvent extends AttendanceEvent {
  const SubmitCompleteCheckOutEvent();
}

@freezed
class SubmitLeaveDecisionEvent extends AttendanceEvent
    with _$SubmitLeaveDecisionEvent {
  const factory SubmitLeaveDecisionEvent({
    required int requestId,
    required bool isApproved,
    String? decisionNote,
  }) = _SubmitLeaveDecisionEvent;
}
