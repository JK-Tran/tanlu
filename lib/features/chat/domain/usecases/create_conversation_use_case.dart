import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/chat/domain/entity/conversation.dart';
import 'package:tanlu_management/features/chat/domain/repositories/chat_repository.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_output.dart';

part 'create_conversation_use_case.freezed.dart';

@Injectable()
class CreateConversationUseCase extends BaseFutureUseCase<CreateConversationInput, CreateConversationOutput> {
  const CreateConversationUseCase(this._repository);

  final ChatRepository _repository;

  @protected
  @override
  Future<CreateConversationOutput> buildUseCase(CreateConversationInput input) async {
    return CreateConversationOutput(
      await _repository.createConversation(
        participantIds: input.participantIds,
        type: input.type,
        name: input.name,
      ),
    );
  }
}

@freezed
class CreateConversationInput extends BaseInput with _$CreateConversationInput {
  const factory CreateConversationInput({
    required List<int> participantIds,
    required String type,
    String? name,
  }) = _CreateConversationInput;
}

@freezed
class CreateConversationOutput extends BaseOutput with _$CreateConversationOutput {
  const factory CreateConversationOutput(Conversation conversation) = _CreateConversationOutput;
}
