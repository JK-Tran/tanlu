import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/attendance/domain/entity/attendance_student.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_output.dart';

import '../repositories/attendance_repository.dart';

part 'submit_daily_attendance_use_case.freezed.dart';

@Injectable()
class SubmitDailyAttendanceUseCase
    extends
        BaseFutureUseCase<
          SubmitDailyAttendanceInput,
          SubmitDailyAttendanceOutput
        > {
  SubmitDailyAttendanceUseCase(this._repository);

  final AttendanceRepository _repository;

  @protected
  @override
  Future<SubmitDailyAttendanceOutput> buildUseCase(
    SubmitDailyAttendanceInput input,
  ) async {
    await _repository.submitMorningAttendance(
      date: input.date,
      attendanceStudent: input.attendanceStudent,
    );
    return SubmitDailyAttendanceOutput();
  }
}

@freezed
class SubmitDailyAttendanceInput extends BaseInput
    with _$SubmitDailyAttendanceInput {
  const factory SubmitDailyAttendanceInput({
    required String date,
    required List<AttendanceStudent> attendanceStudent,
  }) = _SubmitDailyAttendanceInput;
}

@freezed
class SubmitDailyAttendanceOutput extends BaseOutput
    with _$SubmitDailyAttendanceOutput {
  const factory SubmitDailyAttendanceOutput() = _SubmitDailyAttendanceOutput;
}
