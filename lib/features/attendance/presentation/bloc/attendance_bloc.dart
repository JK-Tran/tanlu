import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/core/base/base_bloc.dart';
import 'package:tanlu_management/features/attendance/domain/entity/leave_request.dart';
import 'package:tanlu_management/shared/exception/base/app_exception.dart';
import 'package:tanlu_management/shared/infrastructure/domain/entity/paged_list.dart';
import 'package:tanlu_management/shared/utils/date_time_utils.dart';
import 'package:tanlu_management/shared/utils/error_mapper.dart';

import '../../domain/entity/daily_attendance_result.dart';
import '../../domain/usecases/get_daily_attendance_use_case.dart';
import '../../domain/usecases/get_leave_requests_use_case.dart';
import '../../domain/usecases/submit_daily_attendance_use_case.dart';
import '../../domain/usecases/submit_check_out_use_case.dart';
import '../../domain/usecases/submit_complete_check_out_use_case.dart';
import '../../domain/usecases/submit_leave_decision_use_case.dart';
import '../../domain/entity/enums/attendance_status.dart';

part 'attendance_bloc.freezed.dart';
part 'attendance_event.dart';
part 'attendance_state.dart';

@LazySingleton()
class AttendanceBloc extends BaseBloc<AttendanceEvent, AttendanceState> {
  AttendanceBloc(
    this._getDailyAttendanceUseCase,
    this._getLeaveRequestsUseCase,
    this._submitDailyAttendanceUseCase,
    this._submitCheckOutUseCase,
    this._submitCompleteCheckOutUseCase,
    this._submitLeaveDecisionUseCase,
  ) : super(const AttendanceState()) {
    on<FetchDailyAttendance>(_onFetchDailyAttendance);
    on<FetchHistoryAttendance>(_onFetchHistoryAttendance);
    on<RefreshHistoryAttendance>(_onRefreshHistoryAttendance);
    on<RefreshDailyAttendance>(_onRefreshDailyAttendance);
    on<LeaveRequestsStarted>(_onLeaveRequestsStarted);
    on<LeaveRequestsLoadMore>(_onLeaveRequestsLoadMore);
    on<LeaveRequestsRefreshed>(_onLeaveRequestsRefreshed);
    on<ToggleStudentAttendanceEvent>(_onToggleStudentAttendance);
    on<ChangeStudentAttendanceStatusEvent>(_onChangeStudentAttendanceStatus);
    on<SubmitMorningAttendanceEvent>(_onSubmitMorningAttendance);
    on<UpdateStudentAttendanceEvent>(_onUpdateStudentAttendance);
    on<SubmitCheckOutEvent>(_onSubmitCheckOut);
    on<SubmitCompleteCheckOutEvent>(_onSubmitCompleteCheckOut);
    on<SubmitLeaveDecisionEvent>(_onSubmitLeaveDecision);
  }

  final GetDailyAttendanceUseCase _getDailyAttendanceUseCase;
  final GetLeaveRequestsUseCase _getLeaveRequestsUseCase;
  final SubmitDailyAttendanceUseCase _submitDailyAttendanceUseCase;
  final SubmitCheckOutUseCase _submitCheckOutUseCase;
  final SubmitCompleteCheckOutUseCase _submitCompleteCheckOutUseCase;
  final SubmitLeaveDecisionUseCase _submitLeaveDecisionUseCase;

  FutureOr<void> _onFetchDailyAttendance(
    FetchDailyAttendance event,
    Emitter<AttendanceState> emit,
  ) async {
    await _getDailyAttendance(emit: emit, date: event.date);
  }

  FutureOr<void> _onFetchHistoryAttendance(
    FetchHistoryAttendance event,
    Emitter<AttendanceState> emit,
  ) async {
    await runBlocCatching(
      handleLoading: false,
      action: () async {
        emit(
          state.copyWith(
            isLoading: true,
            exception: null,
            onPageError: '',
            historyDate: event.date,
          ),
        );

        final dateStr = DateTimeUtils.formatDateTimeDateOnly(event.date);
        final output = await _getDailyAttendanceUseCase.execute(
          GetDailyAttendanceInput(date: dateStr),
        );

        emit(
          state.copyWith(
            isLoading: false,
            historyAttendance: output.dailyAttendance,
          ),
        );
      },
      doOnError: (e) {
        emit(
          state.copyWith(
            isLoading: false,
            exception: e,
            onPageError: ErrorMapper.getMessage(e),
          ),
        );
      },
    );
  }

  FutureOr<void> _onRefreshDailyAttendance(
    RefreshDailyAttendance event,
    Emitter<AttendanceState> emit,
  ) async {
    await _getDailyAttendance(emit: emit, date: event.date);
    if (!event.completer.isCompleted) {
      event.completer.complete();
    }
  }

  FutureOr<void> _onRefreshHistoryAttendance(
    RefreshHistoryAttendance event,
    Emitter<AttendanceState> emit,
  ) async {
    await runBlocCatching(
      handleLoading: false,
      action: () async {
        emit(
          state.copyWith(
            isLoading: true,
            exception: null,
            onPageError: '',
            historyDate: event.date,
          ),
        );

        final dateStr = DateTimeUtils.formatDateTimeDateOnly(event.date);
        final output = await _getDailyAttendanceUseCase.execute(
          GetDailyAttendanceInput(date: dateStr),
        );

        emit(
          state.copyWith(
            isLoading: false,
            historyAttendance: output.dailyAttendance,
          ),
        );
      },
      doOnError: (e) {
        emit(
          state.copyWith(
            isLoading: false,
            exception: e,
            onPageError: ErrorMapper.getMessage(e),
          ),
        );
      },
    );
    if (!event.completer.isCompleted) {
      event.completer.complete();
    }
  }

  FutureOr<void> _onLeaveRequestsStarted(
    LeaveRequestsStarted event,
    Emitter<AttendanceState> emit,
  ) async {
    await _getLeaveRequests(
      emit: emit,
      isInitialLoad: true,
      limit: event.limit,
    );
  }

  FutureOr<void> _onLeaveRequestsLoadMore(
    LeaveRequestsLoadMore event,
    Emitter<AttendanceState> emit,
  ) async {
    await _getLeaveRequests(emit: emit, isInitialLoad: false);
  }

  FutureOr<void> _onLeaveRequestsRefreshed(
    LeaveRequestsRefreshed event,
    Emitter<AttendanceState> emit,
  ) async {
    await _getLeaveRequests(
      emit: emit,
      isInitialLoad: true,
      limit: event.limit,
    );
    if (!event.completer.isCompleted) {
      event.completer.complete();
    }
  }

  void _onToggleStudentAttendance(
    ToggleStudentAttendanceEvent event,
    Emitter<AttendanceState> emit,
  ) {
    final daily = state.dailyAttendance;
    final roster = List.of(daily!.roster);
    final index = roster.indexWhere((s) => s.studentId == event.studentId);
    if (index < 0) return;

    final student = roster[index];
    final currentStatus = AttendanceStatusMapper.fromApi(student.status);

    String newStatusApi;
    DateTime? newCheckIn;

    if (currentStatus == AttendanceStatus.notMarked) {
      newStatusApi = AttendanceStatus.present.apiValue;
      newCheckIn = DateTime.now();
    } else {
      newStatusApi = AttendanceStatus.notMarked.apiValue;
      newCheckIn = null; // Revert checkInTime if toggling off
    }

    roster[index] = student.copyWith(
      status: newStatusApi,
      checkInTime: newCheckIn,
    );

    emit(state.copyWith(dailyAttendance: daily.copyWith(roster: roster)));
  }

  void _onChangeStudentAttendanceStatus(
    ChangeStudentAttendanceStatusEvent event,
    Emitter<AttendanceState> emit,
  ) {
    final daily = state.dailyAttendance;
    final roster = List.of(daily!.roster);
    final index = roster.indexWhere((s) => s.studentId == event.studentId);
    if (index < 0) return;

    final student = roster[index];
    final currentStatus = AttendanceStatusMapper.fromApi(student.status);
    if (currentStatus == event.status) return;

    String newStatusApi = event.status.apiValue;
    DateTime? newCheckIn = student.checkInTime;

    if (event.status == AttendanceStatus.notMarked ||
        event.status == AttendanceStatus.absentExcused ||
        event.status == AttendanceStatus.absentUnexcused) {
      newCheckIn = null;
    } else if (currentStatus == AttendanceStatus.notMarked ||
        currentStatus == AttendanceStatus.absentExcused ||
        currentStatus == AttendanceStatus.absentUnexcused) {
      newCheckIn = DateTime.now();
    }

    roster[index] = student.copyWith(
      status: newStatusApi,
      checkInTime: newCheckIn,
    );

    emit(state.copyWith(dailyAttendance: daily.copyWith(roster: roster)));
  }

  Future<void> _onSubmitMorningAttendance(
    SubmitMorningAttendanceEvent event,
    Emitter<AttendanceState> emit,
  ) async {
    await runBlocCatching(
      handleLoading: false,
      action: () async {
        emit(
          state.copyWith(isSubmitting: true, isLoading: true, onPageError: ''),
        );

        final daily = state.dailyAttendance!;

        await _submitDailyAttendanceUseCase.execute(
          SubmitDailyAttendanceInput(
            date: daily.date,
            attendanceStudent: daily.roster,
          ),
        );

        // Refresh để lấy session đã cập nhật từ server
        await _getDailyAttendance(emit: emit, date: daily.date);

        // Hoàn thành submit
        emit(state.copyWith(isSubmitting: false));
      },
      doOnError: (e) {
        emit(
          state.copyWith(
            isSubmitting: false,
            isLoading: false,
            onPageError: ErrorMapper.getMessage(e),
          ),
        );
      },
    );
  }

  Future<void> _onUpdateStudentAttendance(
    UpdateStudentAttendanceEvent event,
    Emitter<AttendanceState> emit,
  ) async {
    await runBlocCatching(
      handleLoading: false,
      action: () async {
        emit(
          state.copyWith(isSubmitting: true, isLoading: true, onPageError: ''),
        );

        final daily = state.dailyAttendance!;

        // Cập nhật student trong danh sách roster
        final roster = List.of(daily.roster);
        final index = roster.indexWhere((s) => s.studentId == event.studentId);
        if (index < 0) {
          emit(state.copyWith(isSubmitting: false, isLoading: false));
          return;
        }

        final existing = roster[index];
        final currentStatus = AttendanceStatusMapper.fromApi(existing.status);

        // Xác định checkInTime hợp lý
        DateTime? checkInTime = existing.checkInTime;
        if (event.status == AttendanceStatus.present ||
            event.status == AttendanceStatus.late) {
          if (checkInTime == null ||
              currentStatus == AttendanceStatus.absentUnexcused ||
              currentStatus == AttendanceStatus.absentExcused ||
              currentStatus == AttendanceStatus.notMarked) {
            checkInTime = DateTime.now(); // Ghi thời gian hiện tại
          }
        } else if (event.status == AttendanceStatus.absentUnexcused ||
            event.status == AttendanceStatus.absentExcused) {
          checkInTime = null; // Xoá giờ vào khi đổi sang vắng
        }

        final updatedStudent = existing.copyWith(
          status: event.status.apiValue,
          checkInTime: checkInTime,
          note: event.note ?? existing.note,
        );

        roster[index] = updatedStudent;

        await _submitDailyAttendanceUseCase.execute(
          SubmitDailyAttendanceInput(
            date: daily.date,
            attendanceStudent: roster,
          ),
        );

        await _getDailyAttendance(emit: emit, date: daily.date);

        emit(state.copyWith(isSubmitting: false));
      },
      doOnError: (e) {
        emit(
          state.copyWith(
            isSubmitting: false,
            isLoading: false,
            onPageError: ErrorMapper.getMessage(e),
          ),
        );
      },
    );
  }

  Future<void> _onSubmitCheckOut(
    SubmitCheckOutEvent event,
    Emitter<AttendanceState> emit,
  ) async {
    await runBlocCatching(
      handleLoading: false,
      action: () async {
        emit(
          state.copyWith(isSubmitting: true, isLoading: true, onPageError: ''),
        );

        final daily = state.dailyAttendance!;

        await _submitCheckOutUseCase.execute(
          SubmitCheckOutInput(
            date: daily.date,
            studentId: event.studentId,
            checkOutTime: event.checkOutTime,
          ),
        );

        await _getDailyAttendance(emit: emit, date: daily.date);
        emit(state.copyWith(isSubmitting: false));
      },
      doOnError: (e) {
        emit(
          state.copyWith(
            isSubmitting: false,
            isLoading: false,
            onPageError: ErrorMapper.getMessage(e),
          ),
        );
      },
    );
  }

  Future<void> _onSubmitCompleteCheckOut(
    SubmitCompleteCheckOutEvent event,
    Emitter<AttendanceState> emit,
  ) async {
    await runBlocCatching(
      handleLoading: false,
      action: () async {
        emit(
          state.copyWith(isSubmitting: true, isLoading: true, onPageError: ''),
        );

        final daily = state.dailyAttendance!;

        await _submitCompleteCheckOutUseCase.execute(
          SubmitCompleteCheckOutInput(date: daily.date),
        );

        await _getDailyAttendance(emit: emit, date: daily.date);
        emit(state.copyWith(isSubmitting: false));
      },
      doOnError: (e) {
        emit(
          state.copyWith(
            isSubmitting: false,
            isLoading: false,
            onPageError: ErrorMapper.getMessage(e),
          ),
        );
      },
    );
  }

  Future<void> _getDailyAttendance({
    required Emitter<AttendanceState> emit,
    String? date,
  }) async {
    await runBlocCatching(
      handleLoading: false,
      action: () async {
        emit(state.copyWith(isLoading: true, exception: null, onPageError: ''));

        final output = await _getDailyAttendanceUseCase.execute(
          GetDailyAttendanceInput(date: date),
        );

        emit(
          state.copyWith(
            isLoading: false,
            dailyAttendance: output.dailyAttendance,
          ),
        );
      },
      doOnError: (e) {
        emit(
          state.copyWith(
            isLoading: false,
            exception: e,
            onPageError: ErrorMapper.getMessage(e),
          ),
        );
      },
    );
  }

  Future<void> _getLeaveRequests({
    required Emitter<AttendanceState> emit,
    required bool isInitialLoad,
    int? limit,
  }) async {
    await runBlocCatching(
      handleLoading: false,
      action: () async {
        if (isInitialLoad) {
          emit(
            state.copyWith(isLoading: true, exception: null, onPageError: ''),
          );
        }

        final output = await _getLeaveRequestsUseCase.execute(
          GetLeaveRequestsInput(limit: limit ?? 10),
          isInitialLoad,
        );

        emit(
          state.copyWith(
            isLoading: false,
            leaveRequests: PagedList(
              data: output.data,
              otherData: output.otherData,
              currentPage: output.page,
              hasMore: !output.isLastPage,
              totalItems: output.totalItems,
              totalPage: output.totalPage,
              itemsPerPage: output.itemsPerPage,
              offset: output.offset,
              nextCursor: output.nextCursor,
            ),
          ),
        );
      },
      doOnError: (e) {
        emit(
          state.copyWith(
            isLoading: false,
            exception: e,
            onPageError: ErrorMapper.getMessage(e),
          ),
        );
      },
    );
  }

  FutureOr<void> _onSubmitLeaveDecision(
    SubmitLeaveDecisionEvent event,
    Emitter<AttendanceState> emit,
  ) async {
    await runBlocCatching(
      handleLoading: false,
      action: () async {
        emit(state.copyWith(isSubmitting: true, successMessage: null));

        final status = event.isApproved ? 'approved' : 'rejected';
        final output = await _submitLeaveDecisionUseCase.execute(
          SubmitLeaveDecisionInput(
            requestId: event.requestId,
            status: status,
            decisionNote: event.decisionNote,
          ),
        );

        final updatedRequest = output.leaveRequest;
        final successMsg = event.isApproved
            ? 'Duyệt xin phép thành công!'
            : 'Từ chối xin phép thành công!';

        // Update the list of leave requests in the state
        if (state.leaveRequests != null) {
          final currentList = List<LeaveRequest>.from(
            state.leaveRequests!.data,
          );
          final index = currentList.indexWhere(
            (r) => r.id == updatedRequest.id,
          );
          if (index != -1) {
            currentList[index] = updatedRequest;
            emit(
              state.copyWith(
                leaveRequests: state.leaveRequests!.copyWith(data: currentList),
                successMessage: successMsg,
              ),
            );
            return;
          }
        }

        emit(state.copyWith(successMessage: successMsg));
      },
      doOnEventCompleted: () {
        emit(state.copyWith(isSubmitting: false));
      },
      doOnError: (e) {
        emit(state.copyWith(isSubmitting: false));
      },
    );
  }
}
