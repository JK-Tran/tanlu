import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/attendance/data/mapper/daily_attendance_result_data_mapper.dart';
import 'package:tanlu_management/features/attendance/data/mapper/leave_request_data_mapper.dart';
import 'package:tanlu_management/features/attendance/domain/entity/attendance_student.dart';
import 'package:tanlu_management/shared/infrastructure/domain/entity/paged_list.dart';

import '../../domain/entity/daily_attendance_result.dart';
import '../../domain/entity/leave_request.dart';
import '../../domain/repositories/attendance_repository.dart';
import '../sources/attendance_api_service.dart';

@LazySingleton(as: AttendanceRepository)
class AttendanceRepositoryImpl implements AttendanceRepository {
  AttendanceRepositoryImpl(
    this._apiService,
    this._dailyAttendanceResultDataMapper,
    this._leaveRequestDataMapper,
  );

  final AttendanceApiService _apiService;
  final DailyAttendanceResultDataMapper _dailyAttendanceResultDataMapper;
  final LeaveRequestDataMapper _leaveRequestDataMapper;

  @override
  Future<DailyAttendanceResult> getDailyAttendance({String? date}) async {
    final response = await _apiService.getDailyAttendance(date: date);
    return _dailyAttendanceResultDataMapper.mapToEntity(response);
  }

  @override
  Future<PagedList<LeaveRequest>> getLeaveRequests({
    required int page,
    required int limit,
  }) async {
    final response = await _apiService.getLeaveRequests(
      page: page,
      limit: limit,
    );

    return PagedList<LeaveRequest>(
      data: _leaveRequestDataMapper.mapToListEntity(response?.data),
      currentPage: response?.pagination?.currentPage ?? 1,
      totalItems: response?.pagination?.totalItems ?? 0,
      totalPage: response?.pagination?.totalPage ?? 0,
      itemsPerPage: response?.pagination?.itemsPerPage ?? 0,
      hasMore:
          response?.pagination?.hasMore ??
          ((response?.pagination?.currentPage ?? 1) <
              (response?.pagination?.totalPage ?? 0)),
    );
  }

  @override
  Future<void> submitMorningAttendance({
    required String date,
    required List<AttendanceStudent> attendanceStudent,
  }) async {
    await _apiService.submitMorningAttendance(
      date: date,
      attendanceStudent: attendanceStudent,
    );
  }

  @override
  Future<void> submitCheckOut({
    required String date,
    required String studentId,
    required String checkOutTime,
  }) async {
    await _apiService.submitCheckOut(
      date: date,
      studentId: studentId,
      checkOutTime: checkOutTime,
    );
  }

  @override
  Future<void> submitCompleteCheckOut({required String date}) async {
    await _apiService.submitCompleteCheckOut(date: date);
  }

  @override
  Future<LeaveRequest> submitLeaveDecision({
    required int requestId,
    required String status,
    String? decisionNote,
  }) async {
    final response = await _apiService.updateLeaveDecision(
      requestId: requestId,
      status: status,
      decisionNote: decisionNote,
    );
    if (response == null) {
      throw Exception('Failed to update leave decision');
    }
    return _leaveRequestDataMapper.mapToEntity(response);
  }
}
