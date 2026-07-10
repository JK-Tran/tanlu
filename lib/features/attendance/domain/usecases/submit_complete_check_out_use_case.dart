import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_output.dart';

import '../repositories/attendance_repository.dart';

part 'submit_complete_check_out_use_case.freezed.dart';

@Injectable()
class SubmitCompleteCheckOutUseCase
    extends
        BaseFutureUseCase<
          SubmitCompleteCheckOutInput,
          SubmitCompleteCheckOutOutput
        > {
  SubmitCompleteCheckOutUseCase(this._repository);

  final AttendanceRepository _repository;

  @protected
  @override
  Future<SubmitCompleteCheckOutOutput> buildUseCase(
    SubmitCompleteCheckOutInput input,
  ) async {
    await _repository.submitCompleteCheckOut(date: input.date);
    return const SubmitCompleteCheckOutOutput();
  }
}

@freezed
class SubmitCompleteCheckOutInput extends BaseInput
    with _$SubmitCompleteCheckOutInput {
  const factory SubmitCompleteCheckOutInput({required String date}) =
      _SubmitCompleteCheckOutInput;
}

@freezed
class SubmitCompleteCheckOutOutput extends BaseOutput
    with _$SubmitCompleteCheckOutOutput {
  const factory SubmitCompleteCheckOutOutput() = _SubmitCompleteCheckOutOutput;
}
