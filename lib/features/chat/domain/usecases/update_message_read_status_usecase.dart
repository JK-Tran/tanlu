import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/chat/domain/repositories/chat_repository.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_output.dart';

part 'update_message_read_status_usecase.freezed.dart';

@Injectable()
class UpdateMessageReadStatusUseCase extends BaseFutureUseCase<UpdateMessageReadStatusInput, UpdateMessageReadStatusOutput> {
  const UpdateMessageReadStatusUseCase(this._repository);

  final ChatRepository _repository;

  @protected
  @override
  Future<UpdateMessageReadStatusOutput> buildUseCase(UpdateMessageReadStatusInput input) async {
    await _repository.updateMessageReadStatus(
      conversationId: input.conversationId,
      messageId: input.messageId,
    );
    return const UpdateMessageReadStatusOutput(success: true);
  }
}

@freezed
class UpdateMessageReadStatusInput extends BaseInput with _$UpdateMessageReadStatusInput {
  const factory UpdateMessageReadStatusInput({
    required int conversationId,
    required int messageId,
  }) = _UpdateMessageReadStatusInput;
}

@freezed
class UpdateMessageReadStatusOutput extends BaseOutput with _$UpdateMessageReadStatusOutput {
  const factory UpdateMessageReadStatusOutput({
    @Default(true) bool success,
  }) = _UpdateMessageReadStatusOutput;
  const UpdateMessageReadStatusOutput._();
}
