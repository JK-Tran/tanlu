import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/core/base/base_bloc.dart';
import 'package:tanlu_management/features/attendance/domain/entity/leave_request.dart';
import 'package:tanlu_management/features/attendance/domain/usecases/stream_leave_requests_use_case.dart';
import 'package:tanlu_management/features/attendance/presentation/enums/leave_status.dart';
import 'package:tanlu_management/features/student/domain/usecases/get_all_student_by_class_id.dart';
import 'package:tanlu_management/shared/utils/date_time_utils.dart';

part 'overview_bloc.freezed.dart';
part 'overview_event.dart';
part 'overview_state.dart';

@injectable
class OverviewBloc extends BaseBloc<OverviewEvent, OverviewState> {
  OverviewBloc(
    this._streamLeaveRequestsUseCase,
    this._getAllStudentByClassIdUseCase,
  ) : super(const OverviewState()) {
    on<StartOverviewEvent>(_onStartOverview);
    on<PendingLeaveRequestsUpdatedEvent>(_onPendingLeaveRequestsUpdated);
  }

  final StreamLeaveRequestsUseCase _streamLeaveRequestsUseCase;
  final GetAllStudentByClassIdUseCase _getAllStudentByClassIdUseCase;
  StreamSubscription<List<LeaveRequest>>? _leaveRequestStreamSub;

  Future<void> _onStartOverview(
    StartOverviewEvent event,
    Emitter<OverviewState> emit,
  ) async {
    final classId = event.classId;
    if (classId == null || classId.isEmpty) {
      emit(
        state.copyWith(
          isLoadingLeaveRequests: false,
          pendingLeaveRequests: [],
          classId: classId,
        ),
      );
      return;
    }

    emit(
      state.copyWith(
        isLoadingLeaveRequests: true,
        classId: classId,
      ),
    );

    final studentsResult = await _getAllStudentByClassIdUseCase.execute(
      GetAllStudentByClassIdInput(classId: classId),
    );
    final studentAvatarUrls = {
      for (final student in studentsResult.students)
        if (student.avatarUrl.isNotEmpty) student.id: student.avatarUrl,
    };

    emit(state.copyWith(studentAvatarUrls: studentAvatarUrls));

    final dateStr =
        DateTimeUtils.formatDateTimeDateOnly(DateTime.now()) ?? '';
    _leaveRequestStreamSub?.cancel();
    _leaveRequestStreamSub = _streamLeaveRequestsUseCase
        .execute(StreamLeaveRequestsInput(classId: classId, dateStr: dateStr))
        .listen(
      (leaveRequests) {
        if (!isClosed) {
          add(PendingLeaveRequestsUpdatedEvent(leaveRequests));
        }
      },
      onError: (Object error, StackTrace stackTrace) {
        if (!isClosed) {
          add(const PendingLeaveRequestsUpdatedEvent([]));
        }
      },
    );
  }

  void _onPendingLeaveRequestsUpdated(
    PendingLeaveRequestsUpdatedEvent event,
    Emitter<OverviewState> emit,
  ) {
    final pending = event.leaveRequests
        .where((request) => request.leaveStatus == LeaveStatus.pending)
        .toList();

    emit(
      state.copyWith(
        isLoadingLeaveRequests: false,
        pendingLeaveRequests: pending,
      ),
    );
  }

  @override
  Future<void> close() {
    _leaveRequestStreamSub?.cancel();
    return super.close();
  }
}
