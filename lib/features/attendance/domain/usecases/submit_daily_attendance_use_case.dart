import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/attendance/domain/entity/attendance.dart';
import 'package:tanlu_management/features/attendance/domain/entity/attendance_session.dart';
import 'package:tanlu_management/features/attendance/domain/repositories/attendance_repository.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_output.dart';

part 'submit_daily_attendance_use_case.freezed.dart';

@Injectable()
class SubmitDailyAttendanceUseCase
    extends
        BaseFutureUseCase<
          SubmitDailyAttendanceInput,
          SubmitDailyAttendanceOutput
        > {
  const SubmitDailyAttendanceUseCase(this._repository);

  final AttendanceRepository _repository;

  @protected
  @override
  Future<SubmitDailyAttendanceOutput> buildUseCase(
    SubmitDailyAttendanceInput input,
  ) async {
    final attendancesToSave = input.attendances.map((attendance) {
      if (attendance.status == 'not_marked') {
        return attendance.copyWith(status: 'absent_unexcused');
      }
      return attendance;
    }).toList();

    await _repository.submitAttendances(
      session: input.session.copyWith(
        isCheckInCompleted: true,
        completedAt: DateTime.now(),
      ),
      attendances: attendancesToSave,
    );

    return const SubmitDailyAttendanceOutput();
  }
}

@freezed
class SubmitDailyAttendanceInput extends BaseInput
    with _$SubmitDailyAttendanceInput {
  const factory SubmitDailyAttendanceInput({
    required AttendanceSession session,
    required List<Attendance> attendances,
  }) = _SubmitDailyAttendanceInput;
}

@freezed
class SubmitDailyAttendanceOutput extends BaseOutput
    with _$SubmitDailyAttendanceOutput {
  const factory SubmitDailyAttendanceOutput() = _SubmitDailyAttendanceOutput;

  const SubmitDailyAttendanceOutput._();
}
