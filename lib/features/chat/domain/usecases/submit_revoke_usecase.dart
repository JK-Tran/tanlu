import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/chat/domain/repositories/chat_repository.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_output.dart';

part 'submit_revoke_usecase.freezed.dart';

@Injectable()
class SubmitRevokeUseCase extends BaseFutureUseCase<SubmitRevokeInput, SubmitRevokeOutput> {
  const SubmitRevokeUseCase(this._repository);

  final ChatRepository _repository;

  @protected
  @override
  Future<SubmitRevokeOutput> buildUseCase(SubmitRevokeInput input) async {
    await _repository.revokeMessage(
      conversationId: input.conversationId,
      messageId: input.messageId,
    );
    return const SubmitRevokeOutput(success: true);
  }
}

@freezed
class SubmitRevokeInput extends BaseInput with _$SubmitRevokeInput {
  const factory SubmitRevokeInput({
    required int conversationId,
    required int messageId,
  }) = _SubmitRevokeInput;
}

@freezed
class SubmitRevokeOutput extends BaseOutput with _$SubmitRevokeOutput {
  const factory SubmitRevokeOutput({
    @Default(true) bool success,
  }) = _SubmitRevokeOutput;
  const SubmitRevokeOutput._();
}
