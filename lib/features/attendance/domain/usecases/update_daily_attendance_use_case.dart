import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/attendance/domain/entity/attendance.dart';
import 'package:tanlu_management/features/attendance/domain/entity/attendance_session.dart';
import 'package:tanlu_management/features/attendance/domain/repositories/attendance_repository.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_output.dart';
import 'package:tanlu_management/shared/network/exceptions/app_exceptions.dart';

part 'update_daily_attendance_use_case.freezed.dart';

@Injectable()
class UpdateDailyAttendanceUseCase
    extends
        BaseFutureUseCase<
          UpdateDailyAttendanceInput,
          UpdateDailyAttendanceOutput
        > {
  const UpdateDailyAttendanceUseCase(this._repository);

  final AttendanceRepository _repository;

  @protected
  @override
  Future<UpdateDailyAttendanceOutput> buildUseCase(
    UpdateDailyAttendanceInput input,
  ) async {
    if (!input.session.isCheckInCompleted) {
      throw const ValidationException(
        'Chưa lưu điểm danh sáng — không thể cập nhật',
      );
    }

    await _repository.updateAttendances(attendances: input.attendances);

    return const UpdateDailyAttendanceOutput();
  }
}

@freezed
class UpdateDailyAttendanceInput extends BaseInput
    with _$UpdateDailyAttendanceInput {
  const factory UpdateDailyAttendanceInput({
    required AttendanceSession session,
    required List<Attendance> attendances,
  }) = _UpdateDailyAttendanceInput;
}

@freezed
class UpdateDailyAttendanceOutput extends BaseOutput
    with _$UpdateDailyAttendanceOutput {
  const factory UpdateDailyAttendanceOutput() = _UpdateDailyAttendanceOutput;

  const UpdateDailyAttendanceOutput._();
}
