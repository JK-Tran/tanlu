import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/chat/domain/repositories/chat_repository.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_output.dart';

part 'submit_reaction_usecase.freezed.dart';

@Injectable()
class SubmitReactionUseCase extends BaseFutureUseCase<SubmitReactionInput, SubmitReactionOutput> {
  const SubmitReactionUseCase(this._repository);

  final ChatRepository _repository;

  @protected
  @override
  Future<SubmitReactionOutput> buildUseCase(SubmitReactionInput input) async {
    await _repository.reactMessage(
      conversationId: input.conversationId,
      messageId: input.messageId,
      reactionType: input.reactionType,
    );
    return const SubmitReactionOutput(success: true);
  }
}

@freezed
class SubmitReactionInput extends BaseInput with _$SubmitReactionInput {
  const factory SubmitReactionInput({
    required int conversationId,
    required int messageId,
    required int reactionType,
  }) = _SubmitReactionInput;
}

@freezed
class SubmitReactionOutput extends BaseOutput with _$SubmitReactionOutput {
  const factory SubmitReactionOutput({
    @Default(true) bool success,
  }) = _SubmitReactionOutput;
  const SubmitReactionOutput._();
}
