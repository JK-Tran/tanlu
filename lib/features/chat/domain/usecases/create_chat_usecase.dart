import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/chat/domain/repositories/chat_repository.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_output.dart';

part 'create_chat_usecase.freezed.dart';

@Injectable()
class CreateChatUseCase extends BaseFutureUseCase<CreateChatInput, CreateChatOutput> {
  const CreateChatUseCase(this._repository);

  final ChatRepository _repository;

  @protected
  @override
  Future<CreateChatOutput> buildUseCase(CreateChatInput input) async {
    final conversationId = await _repository.createChat(input.targetUserId);
    return CreateChatOutput(conversationId: conversationId);
  }
}

@freezed
class CreateChatInput extends BaseInput with _$CreateChatInput {
  const factory CreateChatInput({required int targetUserId}) = _CreateChatInput;
}

@freezed
class CreateChatOutput extends BaseOutput with _$CreateChatOutput {
  const factory CreateChatOutput({required int conversationId}) = _CreateChatOutput;
  const CreateChatOutput._();
}
