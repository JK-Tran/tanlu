import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/core/base/base_bloc.dart';
import 'package:tanlu_management/features/attendance/domain/entity/attendance.dart';
import 'package:tanlu_management/features/attendance/domain/entity/attendance_session.dart';
import 'package:tanlu_management/features/attendance/domain/entity/leave_request.dart';
import 'package:tanlu_management/features/attendance/domain/usecases/get_daily_attendance_use_case.dart';
import 'package:tanlu_management/features/attendance/domain/usecases/stream_leave_requests_use_case.dart';
import 'package:tanlu_management/features/attendance/presentation/enums/leave_status.dart';
import 'package:tanlu_management/features/student/domain/entity/student.dart';
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
    this._getDailyAttendanceUseCase,
  ) : super(const OverviewState()) {
    on<StartOverviewEvent>(_onStartOverview);
    on<RefreshOverviewAttendanceEvent>(_onRefreshAttendance);
    on<PendingLeaveRequestsUpdatedEvent>(_onPendingLeaveRequestsUpdated);
  }

  final StreamLeaveRequestsUseCase _streamLeaveRequestsUseCase;
  final GetAllStudentByClassIdUseCase _getAllStudentByClassIdUseCase;
  final GetDailyAttendanceUseCase _getDailyAttendanceUseCase;
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
          isLoadingAttendance: false,
          isMorningCheckInCompleted: false,
          pendingLeaveRequests: [],
          attendanceTotal: 0,
          attendancePresentCount: 0,
          attendanceAbsentCount: 0,
          attendanceExcusedCount: 0,
          markedAttendanceStudents: const [],
          classId: classId,
        ),
      );
      return;
    }

    emit(
      state.copyWith(
        isLoadingLeaveRequests: true,
        isLoadingAttendance: true,
        classId: classId,
      ),
    );

    _startLeaveRequestStream(classId);

    final results = await Future.wait([
      _fetchStudentAvatarUrls(classId),
      _fetchTodayAttendance(classId),
    ]);

    emit(
      _applySummary(
        state.copyWith(
          studentAvatarUrls: results[0] as Map<String, String>,
          isLoadingAttendance: false,
        ),
        results[1] as _MorningAttendanceSummary,
      ),
    );
  }

  Future<void> _onRefreshAttendance(
    RefreshOverviewAttendanceEvent event,
    Emitter<OverviewState> emit,
  ) async {
    final classId = state.classId;
    if (classId == null || classId.isEmpty) return;

    emit(state.copyWith(isLoadingAttendance: true));
    final summary = await _fetchTodayAttendance(classId);
    emit(
      _applySummary(
        state.copyWith(isLoadingAttendance: false),
        summary,
      ),
    );
  }

  OverviewState _applySummary(
    OverviewState base,
    _MorningAttendanceSummary summary,
  ) {
    return base.copyWith(
      isMorningCheckInCompleted: summary.isMorningCheckInCompleted,
      attendanceTotal: summary.total,
      attendancePresentCount: summary.presentCount,
      attendanceAbsentCount: summary.absentCount,
      attendanceExcusedCount: summary.excusedCount,
      markedAttendanceStudents: summary.presentStudents,
    );
  }

  Future<Map<String, String>> _fetchStudentAvatarUrls(String classId) async {
    final studentsResult = await _getAllStudentByClassIdUseCase.execute(
      GetAllStudentByClassIdInput(classId: classId),
    );
    return {
      for (final student in studentsResult.students)
        if (student.avatarUrl.isNotEmpty) student.id: student.avatarUrl,
    };
  }

  Future<_MorningAttendanceSummary> _fetchTodayAttendance(String classId) async {
    try {
      final output = await _getDailyAttendanceUseCase.execute(
        GetDailyAttendanceInput(classId: classId, date: DateTime.now()),
      );
      return _buildMorningSummary(
        output.students,
        output.attendanceList,
        output.session,
      );
    } catch (_) {
      return const _MorningAttendanceSummary.empty();
    }
  }

  void _startLeaveRequestStream(String classId) {
    final dateStr = DateTimeUtils.formatDateTimeDateOnly(DateTime.now()) ?? '';
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

  /// Chỉ phản ánh điểm danh buổi sáng sau khi GV bấm "Lưu điểm danh sáng".
  _MorningAttendanceSummary _buildMorningSummary(
    List<Student> students,
    List<Attendance> attendances,
    AttendanceSession? session,
  ) {
    final total = students.length;

    if (session?.isCheckInCompleted != true) {
      return _MorningAttendanceSummary(
        isMorningCheckInCompleted: false,
        total: total,
        presentCount: 0,
        absentCount: 0,
        excusedCount: 0,
        presentStudents: const [],
      );
    }

    final attMap = {for (final att in attendances) att.studentId: att.status};
    final presentStudents = <OverviewMarkedStudent>[];
    var presentCount = 0;
    var absentCount = 0;
    var excusedCount = 0;

    for (final student in students) {
      switch (attMap[student.id] ?? 'not_marked') {
        case 'present':
        case 'late':
          presentCount++;
          if (presentStudents.length < 3) {
            presentStudents.add(
              OverviewMarkedStudent(
                nickname: student.nickname.isNotEmpty
                    ? student.nickname
                    : student.fullName,
                avatarUrl:
                    student.avatarUrl.isNotEmpty ? student.avatarUrl : null,
              ),
            );
          }
        case 'absent_unexcused':
          absentCount++;
        case 'absent_excused':
          excusedCount++;
      }
    }

    return _MorningAttendanceSummary(
      isMorningCheckInCompleted: true,
      total: total,
      presentCount: presentCount,
      absentCount: absentCount,
      excusedCount: excusedCount,
      presentStudents: presentStudents,
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

class _MorningAttendanceSummary {
  const _MorningAttendanceSummary({
    required this.isMorningCheckInCompleted,
    required this.total,
    required this.presentCount,
    required this.absentCount,
    required this.excusedCount,
    required this.presentStudents,
  });

  const _MorningAttendanceSummary.empty()
      : isMorningCheckInCompleted = false,
        total = 0,
        presentCount = 0,
        absentCount = 0,
        excusedCount = 0,
        presentStudents = const [];

  final bool isMorningCheckInCompleted;
  final int total;
  final int presentCount;
  final int absentCount;
  final int excusedCount;
  final List<OverviewMarkedStudent> presentStudents;
}
