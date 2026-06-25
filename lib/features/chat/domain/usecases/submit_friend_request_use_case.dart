import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/chat/domain/repositories/chat_repository.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_output.dart';

part 'submit_friend_request_use_case.freezed.dart';

@Injectable()
class SubmitFriendRequestUseCase extends BaseFutureUseCase<
    SubmitFriendRequestInput, SubmitFriendRequestOutput> {
  const SubmitFriendRequestUseCase(this._repository);

  final ChatRepository _repository;

  @protected
  @override
  Future<SubmitFriendRequestOutput> buildUseCase(
    SubmitFriendRequestInput input,
  ) async {
    await _repository.submitFriendRequest(
      fromUserId: input.fromUserId,
      toUserId: input.toUserId,
    );
    return const SubmitFriendRequestOutput();
  }
}

@freezed
class SubmitFriendRequestInput extends BaseInput
    with _$SubmitFriendRequestInput {
  const factory SubmitFriendRequestInput({
    required String fromUserId,
    required String toUserId,
  }) = _SubmitFriendRequestInput;
}

@freezed
class SubmitFriendRequestOutput extends BaseOutput
    with _$SubmitFriendRequestOutput {
  const factory SubmitFriendRequestOutput() = _SubmitFriendRequestOutput;
}
