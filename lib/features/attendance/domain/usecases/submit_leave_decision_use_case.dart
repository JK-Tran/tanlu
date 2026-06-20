import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/attendance/domain/entity/leave_request.dart';
import 'package:tanlu_management/features/attendance/domain/repositories/attendance_repository.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_output.dart';

part 'submit_leave_decision_use_case.freezed.dart';

@Injectable()
class SubmitLeaveDecisionUseCase
    extends
        BaseFutureUseCase<SubmitLeaveDecisionInput, SubmitLeaveDecisionOutput> {
  const SubmitLeaveDecisionUseCase(this._repository);

  final AttendanceRepository _repository;

  @protected
  @override
  Future<SubmitLeaveDecisionOutput> buildUseCase(
    SubmitLeaveDecisionInput input,
  ) async {
    await _repository.submitLeaveDecision(
      request: input.request,
      isApproved: input.isApproved,
      reviewedBy: input.reviewedBy ?? '',
      updateAttendance: input.updateAttendance,
    );
    return const SubmitLeaveDecisionOutput();
  }
}

@freezed
class SubmitLeaveDecisionInput extends BaseInput
    with _$SubmitLeaveDecisionInput {
  const factory SubmitLeaveDecisionInput({
    required LeaveRequest request,
    required bool isApproved,
    required bool updateAttendance,
    String? reviewedBy,
  }) = _SubmitLeaveDecisionInput;
}

@freezed
class SubmitLeaveDecisionOutput extends BaseOutput
    with _$SubmitLeaveDecisionOutput {
  const factory SubmitLeaveDecisionOutput() = _SubmitLeaveDecisionOutput;

  const SubmitLeaveDecisionOutput._();
}
