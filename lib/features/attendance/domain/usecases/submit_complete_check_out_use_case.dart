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

part 'submit_complete_check_out_use_case.freezed.dart';

@Injectable()
class SubmitCompleteCheckOutUseCase
    extends
        BaseFutureUseCase<
          SubmitCompleteCheckOutInput,
          SubmitCompleteCheckOutOutput
        > {
  const SubmitCompleteCheckOutUseCase(this._repository);

  final AttendanceRepository _repository;

  @protected
  @override
  Future<SubmitCompleteCheckOutOutput> buildUseCase(
    SubmitCompleteCheckOutInput input,
  ) async {
    if (!input.session.isCheckInCompleted) {
      throw const ValidationException('Chưa lưu điểm danh sáng');
    }
    if (input.session.isCheckOutCompleted) {
      throw const ValidationException('Đã chốt cuối ngày rồi');
    }

    await _repository.submitCompleteCheckOut(
      session: input.session,
      attendances: input.attendances,
    );

    return const SubmitCompleteCheckOutOutput();
  }
}

@freezed
class SubmitCompleteCheckOutInput extends BaseInput
    with _$SubmitCompleteCheckOutInput {
  const factory SubmitCompleteCheckOutInput({
    required AttendanceSession session,
    required List<Attendance> attendances,
  }) = _SubmitCompleteCheckOutInput;
}

@freezed
class SubmitCompleteCheckOutOutput extends BaseOutput
    with _$SubmitCompleteCheckOutOutput {
  const factory SubmitCompleteCheckOutOutput() = _SubmitCompleteCheckOutOutput;

  const SubmitCompleteCheckOutOutput._();
}
