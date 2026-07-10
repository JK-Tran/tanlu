import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_output.dart';

import '../entity/leave_request.dart';
import '../repositories/attendance_repository.dart';

part 'submit_leave_decision_use_case.freezed.dart';

@Injectable()
class SubmitLeaveDecisionUseCase
    extends
        BaseFutureUseCase<SubmitLeaveDecisionInput, SubmitLeaveDecisionOutput> {
  SubmitLeaveDecisionUseCase(this._repository);

  final AttendanceRepository _repository;

  @protected
  @override
  Future<SubmitLeaveDecisionOutput> buildUseCase(
    SubmitLeaveDecisionInput input,
  ) async {
    final leaveRequest = await _repository.submitLeaveDecision(
      requestId: input.requestId,
      status: input.status,
      decisionNote: input.decisionNote,
    );
    return SubmitLeaveDecisionOutput(leaveRequest: leaveRequest);
  }
}

@freezed
class SubmitLeaveDecisionInput extends BaseInput
    with _$SubmitLeaveDecisionInput {
  const factory SubmitLeaveDecisionInput({
    required int requestId,
    required String status,
    String? decisionNote,
  }) = _SubmitLeaveDecisionInput;
}

@freezed
class SubmitLeaveDecisionOutput extends BaseOutput
    with _$SubmitLeaveDecisionOutput {
  const factory SubmitLeaveDecisionOutput({
    required LeaveRequest leaveRequest,
  }) = _SubmitLeaveDecisionOutput;
}
