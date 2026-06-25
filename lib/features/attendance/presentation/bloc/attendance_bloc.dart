import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/core/base/base_bloc.dart';
import 'package:tanlu_management/core/di/injection_container.dart';
import 'package:tanlu_management/features/attendance/domain/entity/attendance.dart';
import 'package:tanlu_management/features/attendance/domain/entity/attendance_session.dart';
import 'package:tanlu_management/features/attendance/domain/entity/leave_request.dart';
import 'package:tanlu_management/features/attendance/domain/usecases/submit_complete_check_out_use_case.dart';
import 'package:tanlu_management/features/attendance/domain/usecases/get_daily_attendance_use_case.dart';
import 'package:tanlu_management/features/attendance/domain/usecases/stream_leave_requests_use_case.dart';
import 'package:tanlu_management/features/attendance/domain/usecases/submit_daily_attendance_use_case.dart';
import 'package:tanlu_management/features/attendance/domain/usecases/submit_leave_decision_use_case.dart';
import 'package:tanlu_management/features/attendance/domain/usecases/update_daily_attendance_use_case.dart';
import 'package:tanlu_management/features/auth/domain/repositories/auth_repository.dart';
import 'package:tanlu_management/features/student/domain/entity/student.dart';
import 'package:tanlu_management/shared/utils/date_time_utils.dart';

part 'attendance_bloc.freezed.dart';
part 'attendance_event.dart';
part 'attendance_state.dart';

@injectable
class AttendanceBloc extends BaseBloc<AttendanceEvent, AttendanceState> {
  AttendanceBloc(
    this._getDailyAttendanceUseCase,
    this._submitDailyAttendanceUseCase,
    this._updateDailyAttendanceUseCase,
    this._submitCompleteCheckOutUseCase,
    this._submitLeaveDecisionUseCase,
    this._streamLeaveRequestsUseCase,
  ) : super(const AttendanceState()) {
    on<FetchDailyAttendance>(_onFetchDailyAttendance);
    on<FetchAttendanceHistoryEvent>(_onFetchAttendanceHistory);
    on<MarkStudentAttendanceEvent>(_onMarkStudentAttendance);
    on<MarkStudentCheckOutEvent>(_onMarkStudentCheckOut);
    on<CompleteAttendanceSessionEvent>(_onCompleteAttendanceSession);
    on<UpdateDailyAttendanceEvent>(_onUpdateDailyAttendance);
    on<CompleteCheckOutSessionEvent>(_onCompleteCheckOutSession);
    on<SubmitLeaveDecisionEvent>(_onSubmitLeaveDecision);
    on<LeaveRequestsUpdatedEvent>(_onLeaveRequestsUpdated);
  }

  final GetDailyAttendanceUseCase _getDailyAttendanceUseCase;
  final SubmitDailyAttendanceUseCase _submitDailyAttendanceUseCase;
  final UpdateDailyAttendanceUseCase _updateDailyAttendanceUseCase;
  final SubmitCompleteCheckOutUseCase _submitCompleteCheckOutUseCase;
  final SubmitLeaveDecisionUseCase _submitLeaveDecisionUseCase;
  final StreamLeaveRequestsUseCase _streamLeaveRequestsUseCase;

  StreamSubscription<List<LeaveRequest>>? _leaveRequestStreamSub;

  void _startLeaveRequestStream(String classId, DateTime date) {
    final dateStr = DateTimeUtils.formatDateTimeDateOnly(date) ?? '';
    _leaveRequestStreamSub?.cancel();
    _leaveRequestStreamSub = _streamLeaveRequestsUseCase
        .execute(StreamLeaveRequestsInput(classId: classId, dateStr: dateStr))
        .listen((leaveRequests) {
          if (!isClosed) add(LeaveRequestsUpdatedEvent(leaveRequests));
        });
  }

  @override
  Future<void> close() {
    _leaveRequestStreamSub?.cancel();
    return super.close();
  }

  Future<void> _onFetchDailyAttendance(
    FetchDailyAttendance event,
    Emitter<AttendanceState> emit,
  ) async {
    await runBlocCatching(
      handleLoading: false,
      action: () async {
        emit(state.copyWith(isLoading: true, onPageError: ''));

        final result = await _getDailyAttendanceUseCase.execute(
          GetDailyAttendanceInput(classId: event.classId, date: event.date),
        );

        emit(
          state.copyWith(
            isLoading: false,
            classId: event.classId,
            selectedDate: event.date,
            students: result.students,
            attendances: result.attendanceList,
            leaveRequests: result.leaveRequests,
            session: result.session,
            hasUnsavedChanges: false,
          ),
        );

        _startLeaveRequestStream(event.classId, event.date);
      },
      doOnError: (e) {
        emit(state.copyWith(isLoading: false, onPageError: e.toString()));
      },
    );
  }

  Future<void> _onFetchAttendanceHistory(
    FetchAttendanceHistoryEvent event,
    Emitter<AttendanceState> emit,
  ) async {
    await runBlocCatching(
      handleLoading: false,
      action: () async {
        emit(state.copyWith(isHistoryLoading: true, historyError: ''));

        final result = await _getDailyAttendanceUseCase.execute(
          GetDailyAttendanceInput(classId: event.classId, date: event.date),
        );

        emit(
          state.copyWith(
            isHistoryLoading: false,
            historyDate: event.date,
            historyStudents: result.students,
            historyAttendances: result.attendanceList,
            historySession: result.session,
          ),
        );
      },
      doOnError: (e) {
        emit(
          state.copyWith(isHistoryLoading: false, historyError: e.toString()),
        );
      },
    );
  }

  Future<void> _onMarkStudentAttendance(
    MarkStudentAttendanceEvent event,
    Emitter<AttendanceState> emit,
  ) async {
    final now = DateTime.now();
    final currentUser = sl<AuthRepository>().getCurrentUser();
    final updatedAttendance = event.attendance.copyWith(
      classId: state.classId,
      date: state.selectedDate,
      recordedBy: currentUser.id,
      updatedAt: now,
      createdAt: event.attendance.createdAt ?? now,
    );

    final updatedList = state.attendances.map((a) {
      return a.studentId == updatedAttendance.studentId ? updatedAttendance : a;
    }).toList();

    emit(
      state.copyWith(
        attendances: updatedList,
        hasUnsavedChanges: true,
        onPageError: '',
      ),
    );
  }

  Future<void> _onMarkStudentCheckOut(
    MarkStudentCheckOutEvent event,
    Emitter<AttendanceState> emit,
  ) async {
    final now = DateTime.now();
    final currentUser = sl<AuthRepository>().getCurrentUser();

    final updatedList = state.attendances.map((a) {
      if (a.studentId != event.studentId) return a;
      if (a.status != 'present' && a.status != 'late') return a;
      if (a.checkOutTime != null) return a;

      return a.copyWith(
        checkOutTime: now,
        classId: state.classId,
        date: state.selectedDate,
        recordedBy: currentUser.id,
        updatedAt: now,
        createdAt: a.createdAt ?? now,
      );
    }).toList();

    emit(
      state.copyWith(
        attendances: updatedList,
        hasUnsavedChanges: true,
        onPageError: '',
      ),
    );
  }

  bool _shouldApplyLeaveToAttendance(
    Attendance attendance,
    bool isApproved,
    bool confirmPresentOverride,
  ) {
    if (!isApproved) return false;
    if (attendance.status == 'absent_excused') return false;
    if (attendance.status == 'not_marked' ||
        attendance.status == 'absent_unexcused') {
      return true;
    }
    if (attendance.status == 'present' || attendance.status == 'late') {
      return confirmPresentOverride;
    }
    return false;
  }

  Attendance _applyApprovedLeave(
    Attendance attendance,
    LeaveRequest request,
    String reviewedBy,
  ) {
    final now = DateTime.now();
    return attendance.copyWith(
      status: 'absent_excused',
      note: request.reason,
      checkInTime: null,
      checkOutTime: null,
      classId: state.classId,
      date: state.selectedDate,
      recordedBy: reviewedBy,
      updatedAt: now,
    );
  }

  Future<void> _onCompleteAttendanceSession(
    CompleteAttendanceSessionEvent event,
    Emitter<AttendanceState> emit,
  ) async {
    await runBlocCatching(
      action: () async {
        emit(state.copyWith(isSaving: true, onPageError: ''));

        final session =
            state.session ??
            AttendanceSession(classId: state.classId, date: state.selectedDate);

        final attendancesToSave = state.attendances.map((attendance) {
          final now = DateTime.now();
          if (attendance.status == 'not_marked') {
            return attendance.copyWith(status: 'absent_unexcused');
          }
          if ((attendance.status == 'present' || attendance.status == 'late') &&
              attendance.checkInTime == null) {
            return attendance.copyWith(checkInTime: now);
          }
          return attendance;
        }).toList();

        await _submitDailyAttendanceUseCase.execute(
          SubmitDailyAttendanceInput(
            session: session,
            attendances: attendancesToSave,
          ),
        );

        emit(
          state.copyWith(
            isSaving: false,
            hasUnsavedChanges: false,
            session: session.copyWith(isCheckInCompleted: true),
            attendances: attendancesToSave,
          ),
        );
      },
      doOnError: (e) {
        emit(state.copyWith(isSaving: false, onPageError: e.toString()));
      },
    );
  }

  Future<void> _onUpdateDailyAttendance(
    UpdateDailyAttendanceEvent event,
    Emitter<AttendanceState> emit,
  ) async {
    await runBlocCatching(
      action: () async {
        emit(state.copyWith(isSaving: true, onPageError: ''));

        final session = state.session;
        if (session == null) {
          throw Exception('Không tìm thấy phiên điểm danh');
        }

        await _updateDailyAttendanceUseCase.execute(
          UpdateDailyAttendanceInput(
            session: session,
            attendances: state.attendances,
          ),
        );

        emit(state.copyWith(isSaving: false, hasUnsavedChanges: false));
      },
      doOnError: (e) {
        emit(state.copyWith(isSaving: false, onPageError: e.toString()));
      },
    );
  }

  Future<void> _onCompleteCheckOutSession(
    CompleteCheckOutSessionEvent event,
    Emitter<AttendanceState> emit,
  ) async {
    await runBlocCatching(
      action: () async {
        emit(state.copyWith(isSaving: true, onPageError: ''));

        final session = state.session;
        if (session == null) {
          throw Exception('Không tìm thấy phiên điểm danh');
        }

        final now = DateTime.now();
        final currentUser = sl<AuthRepository>().getCurrentUser();

        final attendancesWithCheckout = state.attendances.map((a) {
          if ((a.status == 'present' || a.status == 'late') &&
              a.checkOutTime == null) {
            return a.copyWith(
              checkOutTime: now,
              recordedBy: currentUser.id,
              updatedAt: now,
            );
          }
          return a;
        }).toList();

        await _submitCompleteCheckOutUseCase.execute(
          SubmitCompleteCheckOutInput(
            session: session,
            attendances: attendancesWithCheckout,
          ),
        );

        emit(
          state.copyWith(
            isSaving: false,
            hasUnsavedChanges: false,
            attendances: attendancesWithCheckout,
            session: session.copyWith(isCheckOutCompleted: true),
          ),
        );
      },
      doOnError: (e) {
        emit(state.copyWith(isSaving: false, onPageError: e.toString()));
      },
    );
  }

  Future<void> _onSubmitLeaveDecision(
    SubmitLeaveDecisionEvent event,
    Emitter<AttendanceState> emit,
  ) async {
    await runBlocCatching(
      handleLoading: false,
      action: () async {
        final currentUser = sl<AuthRepository>().getCurrentUser();
        final request = state.leaveRequests.firstWhere(
          (lr) => lr.id == event.requestId,
          orElse: () => throw Exception('Không tìm thấy đơn xin phép'),
        );

        final attendance = state.attendances.firstWhere(
          (a) => a.studentId == request.studentId,
          orElse: () => Attendance(
            studentId: request.studentId,
            classId: state.classId,
            date: state.selectedDate,
          ),
        );

        if (event.isApproved &&
            (attendance.status == 'present' || attendance.status == 'late') &&
            !event.confirmPresentOverride) {
          throw Exception('Cần xác nhận ghi đè điểm danh');
        }

        final applyToAttendance = _shouldApplyLeaveToAttendance(
          attendance,
          event.isApproved,
          event.confirmPresentOverride,
        );
        final isCheckInCompleted = state.session?.isCheckInCompleted == true;
        final updateFirestoreAttendance =
            applyToAttendance && isCheckInCompleted;

        final newStatus = event.isApproved ? 'approved' : 'rejected';
        final updatedLeaveRequests = state.leaveRequests.map((lr) {
          return lr.id == event.requestId ? lr.copyWith(status: newStatus) : lr;
        }).toList();

        final updatedAttendances = applyToAttendance
            ? state.attendances.map((a) {
                if (a.studentId != request.studentId) return a;
                return _applyApprovedLeave(a, request, currentUser.id);
              }).toList()
            : state.attendances;

        emit(
          state.copyWith(
            leaveRequests: updatedLeaveRequests,
            attendances: updatedAttendances,
            hasUnsavedChanges: applyToAttendance && !isCheckInCompleted
                ? true
                : state.hasUnsavedChanges,
          ),
        );

        await _submitLeaveDecisionUseCase.execute(
          SubmitLeaveDecisionInput(
            request: request,
            isApproved: event.isApproved,
            reviewedBy: currentUser.id,
            updateAttendance: updateFirestoreAttendance,
          ),
        );
      },
      doOnError: (e) {
        emit(state.copyWith(onPageError: e.toString()));
      },
    );
  }

  void _onLeaveRequestsUpdated(
    LeaveRequestsUpdatedEvent event,
    Emitter<AttendanceState> emit,
  ) {
    final updatedAttendances = state.attendances.map((attendance) {
      final approvedLeave = event.leaveRequests.where(
        (r) => r.studentId == attendance.studentId && r.status == 'approved',
      );
      if (approvedLeave.isEmpty) return attendance;
      if (attendance.status != 'not_marked' &&
          attendance.status != 'absent_unexcused') {
        return attendance;
      }
      final leave = approvedLeave.first;
      return attendance.copyWith(status: 'absent_excused', note: leave.reason);
    }).toList();

    emit(
      state.copyWith(
        leaveRequests: event.leaveRequests,
        attendances: updatedAttendances,
      ),
    );
  }
}
