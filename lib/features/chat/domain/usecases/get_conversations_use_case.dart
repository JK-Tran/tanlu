import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/chat/domain/entity/conversation.dart';
import 'package:tanlu_management/features/chat/domain/repositories/chat_repository.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_output.dart';

part 'get_conversations_use_case.freezed.dart';

@Injectable()
class GetConversationsUseCase extends BaseFutureUseCase<GetConversationsInput, GetConversationsOutput> {
  const GetConversationsUseCase(this._repository);

  final ChatRepository _repository;

  @protected
  @override
  Future<GetConversationsOutput> buildUseCase(GetConversationsInput input) async {
    return GetConversationsOutput(await _repository.getConversations());
  }
}

@freezed
class GetConversationsInput extends BaseInput with _$GetConversationsInput {
  const factory GetConversationsInput() = _GetConversationsInput;
}

@freezed
class GetConversationsOutput extends BaseOutput with _$GetConversationsOutput {
  const factory GetConversationsOutput(List<Conversation> conversations) = _GetConversationsOutput;
}
