import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/chat/domain/entity/message.dart';
import 'package:tanlu_management/features/chat/domain/repositories/chat_repository.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_output.dart';

part 'send_message_use_case.freezed.dart';

@Injectable()
class SendMessageUseCase extends BaseFutureUseCase<SendMessageInput, SendMessageOutput> {
  const SendMessageUseCase(this._repository);

  final ChatRepository _repository;

  @protected
  @override
  Future<SendMessageOutput> buildUseCase(SendMessageInput input) async {
    return SendMessageOutput(
      await _repository.sendMessage(
        conversationId: input.conversationId,
        text: input.text,
        file: input.file,
        fileUrl: input.fileUrl,
      ),
    );
  }
}

@freezed
class SendMessageInput extends BaseInput with _$SendMessageInput {
  const factory SendMessageInput({
    required int conversationId,
    required String text,
    dynamic file,
    String? fileUrl,
  }) = _SendMessageInput;
}

@freezed
class SendMessageOutput extends BaseOutput with _$SendMessageOutput {
  const factory SendMessageOutput(Message message) = _SendMessageOutput;
}
