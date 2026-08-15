import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/chat/domain/entity/chat_message.dart';
import 'package:tanlu_management/features/chat/domain/repositories/chat_repository.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_output.dart';

part 'submit_message_usecase.freezed.dart';

@Injectable()
class SubmitMessageUseCase extends BaseFutureUseCase<SubmitMessageInput, SubmitMessageOutput> {
  const SubmitMessageUseCase(this._repository);

  final ChatRepository _repository;

  @protected
  @override
  Future<SubmitMessageOutput> buildUseCase(SubmitMessageInput input) async {
    final message = await _repository.submitMessage(
      conversationId: input.conversationId,
      content: input.content,
      type: input.type,
      fileUrl: input.fileUrl,
      replyToId: input.replyToId,
    );
    return SubmitMessageOutput(message: message);
  }
}

@freezed
class SubmitMessageInput extends BaseInput with _$SubmitMessageInput {
  const factory SubmitMessageInput({
    required int conversationId,
    String? content,
    @Default('text') String type,
    String? fileUrl,
    int? replyToId,
  }) = _SubmitMessageInput;
}

@freezed
class SubmitMessageOutput extends BaseOutput with _$SubmitMessageOutput {
  const factory SubmitMessageOutput({
    required ChatMessage message,
  }) = _SubmitMessageOutput;
  const SubmitMessageOutput._();
}
