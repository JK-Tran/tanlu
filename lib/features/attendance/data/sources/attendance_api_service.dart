import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/attendance/domain/entity/attendance_student.dart';
import 'package:tanlu_management/shared/utils/date_time_utils.dart';

import '../../../../shared/infrastructure/data/api/model/data_response.dart';
import '../../../../shared/infrastructure/data/api/client/auth_app_server_api_client.dart';
import '../../../../shared/infrastructure/data/api/client/base/rest_api_client.dart';
import '../../../../shared/infrastructure/data/api/mapper/base_success_response_mapper.dart';
import '../../../../shared/model/typedef.dart';
import '../model/daily_attendance_result_data.dart';
import '../model/leave_request_data.dart';

@LazySingleton()
class AttendanceApiService {
  AttendanceApiService(this._authAppServerApiClient);

  final AuthAppServerApiClient _authAppServerApiClient;

  Future<DailyAttendanceResultData?> getDailyAttendance({String? date}) async {
    final defaultDate =
        date ?? DateTimeUtils.formatDateTimeDateOnly(DateTime.now());
    return _authAppServerApiClient.request(
      method: RestMethod.get,
      successResponseMapperType: SuccessResponseMapperType.jsonObject,
      path: '/attendances/me/daily',
      queryParameters: {'date': defaultDate},
      decoder: (json) => DailyAttendanceResultData.fromJson(json as JSON),
    );
  }

  Future<void> submitMorningAttendance({
    required String date,
    required List<AttendanceStudent> attendanceStudent,
  }) async {
    await _authAppServerApiClient.request(
      method: RestMethod.post,
      successResponseMapperType: SuccessResponseMapperType.plain,
      path: '/attendances/me/daily',
      body: {
        'date': date,
        'attendances': attendanceStudent
            .map(
              (a) => {
                'studentId': a.studentId,
                'status': a.status,
                if (a.checkInTime != null)
                  'checkInTime': a.checkInTime!.toIso8601String(),
                'note': a.note,
              },
            )
            .toList(),
      },
    );
  }

  Future<DataListResponse<LeaveRequestData>?> getLeaveRequests({
    required int page,
    required int limit,
  }) async {
    return _authAppServerApiClient.request(
      method: RestMethod.get,
      successResponseMapperType: SuccessResponseMapperType.dataJsonArray,
      path: '/leave-requests/me',
      queryParameters: {'page': page, 'limit': limit},
      decoder: (json) => LeaveRequestData.fromJson(json as JSON),
    );
  }

  Future<LeaveRequestData?> updateLeaveDecision({
    required int requestId,
    required String status,
    String? decisionNote,
  }) async {
    return _authAppServerApiClient.request(
      method: RestMethod.patch,
      successResponseMapperType: SuccessResponseMapperType.jsonObject,
      path: '/leave-requests/$requestId/decision',
      body: {'status': status, 'decisionNote': ?decisionNote},
      decoder: (json) => LeaveRequestData.fromJson(json as JSON),
    );
  }

  Future<void> submitCheckOut({
    required String date,
    required String studentId,
    required String checkOutTime,
  }) async {
    await _authAppServerApiClient.request(
      method: RestMethod.post,
      successResponseMapperType: SuccessResponseMapperType.plain,
      path: '/attendances/me/check-out',
      body: {
        'date': date,
        'studentId': studentId,
        'checkOutTime': checkOutTime,
      },
    );
  }

  Future<void> submitCompleteCheckOut({required String date}) async {
    await _authAppServerApiClient.request(
      method: RestMethod.post,
      successResponseMapperType: SuccessResponseMapperType.plain,
      path: '/attendances/me/complete-check-out',
      body: {'date': date},
    );
  }
}
