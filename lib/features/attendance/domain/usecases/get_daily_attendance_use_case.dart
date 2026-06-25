import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/attendance/domain/entity/attendance.dart';
import 'package:tanlu_management/features/attendance/domain/entity/attendance_session.dart';
import 'package:tanlu_management/features/attendance/domain/entity/leave_request.dart';
import 'package:tanlu_management/features/attendance/domain/repositories/attendance_repository.dart';
import 'package:tanlu_management/features/student/domain/entity/student.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_output.dart';
import 'package:tanlu_management/shared/utils/date_time_utils.dart';

part 'get_daily_attendance_use_case.freezed.dart';

@Injectable()
class GetDailyAttendanceUseCase
    extends
        BaseFutureUseCase<GetDailyAttendanceInput, GetDailyAttendanceOutput> {
  const GetDailyAttendanceUseCase(this._repository);

  final AttendanceRepository _repository;

  @protected
  @override
  Future<GetDailyAttendanceOutput> buildUseCase(
    GetDailyAttendanceInput input,
  ) async {
    final dateStr = DateTimeUtils.formatDateTimeDateOnly(input.date) ?? '';
    final daily = await _repository.getDailyAttendance(input.classId, dateStr);

    return GetDailyAttendanceOutput(
      students: daily.students,
      attendanceList: daily.attendances,
      leaveRequests: daily.leaveRequests,
      session: daily.session,
    );
  }
}

@freezed
class GetDailyAttendanceInput extends BaseInput with _$GetDailyAttendanceInput {
  const factory GetDailyAttendanceInput({
    required String classId,
    required DateTime date,
  }) = _GetDailyAttendanceInput;
}

@freezed
class GetDailyAttendanceOutput extends BaseOutput
    with _$GetDailyAttendanceOutput {
  const factory GetDailyAttendanceOutput({
    @Default([]) List<Student> students,
    @Default([]) List<Attendance> attendanceList,
    @Default([]) List<LeaveRequest> leaveRequests,
    AttendanceSession? session,
  }) = _GetDailyAttendanceOutput;

  const GetDailyAttendanceOutput._();
}
