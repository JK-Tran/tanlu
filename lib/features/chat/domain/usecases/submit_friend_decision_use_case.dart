import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/chat/domain/repositories/chat_repository.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_output.dart';

part 'submit_friend_decision_use_case.freezed.dart';

@Injectable()
class SubmitFriendDecisionUseCase extends BaseFutureUseCase<
    SubmitFriendDecisionInput, SubmitFriendDecisionOutput> {
  const SubmitFriendDecisionUseCase(this._repository);

  final ChatRepository _repository;

  @protected
  @override
  Future<SubmitFriendDecisionOutput> buildUseCase(
    SubmitFriendDecisionInput input,
  ) async {
    await _repository.submitFriendDecision(
      requestId: input.requestId,
      accept: input.accept,
      currentUserId: input.currentUserId,
    );
    return const SubmitFriendDecisionOutput();
  }
}

@freezed
class SubmitFriendDecisionInput extends BaseInput
    with _$SubmitFriendDecisionInput {
  const factory SubmitFriendDecisionInput({
    required String requestId,
    required bool accept,
    required String currentUserId,
  }) = _SubmitFriendDecisionInput;
}

@freezed
class SubmitFriendDecisionOutput extends BaseOutput
    with _$SubmitFriendDecisionOutput {
  const factory SubmitFriendDecisionOutput() = _SubmitFriendDecisionOutput;
}
