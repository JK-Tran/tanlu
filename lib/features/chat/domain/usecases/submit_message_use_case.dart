import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/chat/domain/entity/message.dart';
import 'package:tanlu_management/features/chat/domain/repositories/chat_repository.dart';
import 'package:tanlu_management/features/feed/domain/entity/author.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_output.dart';

part 'submit_message_use_case.freezed.dart';

@Injectable()
class SubmitMessageUseCase
    extends BaseFutureUseCase<SubmitMessageInput, SubmitMessageOutput> {
  const SubmitMessageUseCase(this._repository);

  final ChatRepository _repository;

  @protected
  @override
  Future<SubmitMessageOutput> buildUseCase(SubmitMessageInput input) async {
    final message = await _repository.submitMessage(
      conversationId: input.conversationId,
      sender: input.sender,
      receiverId: input.receiverId,
      text: input.text,
      type: input.type,
      fileUrl: input.fileUrl,
    );
    return SubmitMessageOutput(message: message);
  }
}

@freezed
class SubmitMessageInput extends BaseInput with _$SubmitMessageInput {
  const factory SubmitMessageInput({
    required String conversationId,
    required Author sender,
    String? receiverId,
    required String text,
    @Default('text') String type,
    String? fileUrl,
  }) = _SubmitMessageInput;
}

@freezed
class SubmitMessageOutput extends BaseOutput with _$SubmitMessageOutput {
  const factory SubmitMessageOutput({required Message message}) =
      _SubmitMessageOutput;
}
