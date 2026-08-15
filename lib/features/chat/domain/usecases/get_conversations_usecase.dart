import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/chat/domain/entity/chat_conversation.dart';
import 'package:tanlu_management/features/chat/domain/repositories/chat_repository.dart';
import 'package:tanlu_management/shared/infrastructure/domain/entity/paged_list.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_output.dart';

part 'get_conversations_usecase.freezed.dart';

@Injectable()
class GetConversationsUseCase extends BaseFutureUseCase<GetConversationsInput, GetConversationsOutput> {
  const GetConversationsUseCase(this._repository);

  final ChatRepository _repository;

  @protected
  @override
  Future<GetConversationsOutput> buildUseCase(GetConversationsInput input) async {
    final data = await _repository.getConversations(
      page: input.page,
      limit: input.limit,
    );
    return GetConversationsOutput(data: data);
  }
}

@freezed
class GetConversationsInput extends BaseInput with _$GetConversationsInput {
  const factory GetConversationsInput({
    @Default(1) int page,
    @Default(10) int limit,
  }) = _GetConversationsInput;
}

@freezed
class GetConversationsOutput extends BaseOutput with _$GetConversationsOutput {
  const factory GetConversationsOutput({
    required PagedList<ChatConversation> data,
  }) = _GetConversationsOutput;
  const GetConversationsOutput._();
}
