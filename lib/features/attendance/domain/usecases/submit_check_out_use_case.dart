import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_output.dart';

import '../repositories/attendance_repository.dart';

part 'submit_check_out_use_case.freezed.dart';

@Injectable()
class SubmitCheckOutUseCase
    extends BaseFutureUseCase<SubmitCheckOutInput, SubmitCheckOutOutput> {
  SubmitCheckOutUseCase(this._repository);

  final AttendanceRepository _repository;

  @protected
  @override
  Future<SubmitCheckOutOutput> buildUseCase(SubmitCheckOutInput input) async {
    await _repository.submitCheckOut(
      date: input.date,
      studentId: input.studentId,
      checkOutTime: input.checkOutTime,
    );
    return const SubmitCheckOutOutput();
  }
}

@freezed
class SubmitCheckOutInput extends BaseInput with _$SubmitCheckOutInput {
  const factory SubmitCheckOutInput({
    required String date,
    required String studentId,
    required String checkOutTime,
  }) = _SubmitCheckOutInput;
}

@freezed
class SubmitCheckOutOutput extends BaseOutput with _$SubmitCheckOutOutput {
  const factory SubmitCheckOutOutput() = _SubmitCheckOutOutput;
}
