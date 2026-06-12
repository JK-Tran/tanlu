import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/chat/domain/entity/message.dart';
import 'package:tanlu_management/features/chat/domain/repositories/chat_repository.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_output.dart';

part 'get_messages_use_case.freezed.dart';

@Injectable()
class GetMessagesUseCase extends BaseFutureUseCase<GetMessagesInput, GetMessagesOutput> {
  const GetMessagesUseCase(this._repository);

  final ChatRepository _repository;

  @protected
  @override
  Future<GetMessagesOutput> buildUseCase(GetMessagesInput input) async {
    return GetMessagesOutput(
      await _repository.getMessages(
        conversationId: input.conversationId,
        skip: input.skip,
        take: input.take,
      ),
    );
  }
}

@freezed
class GetMessagesInput extends BaseInput with _$GetMessagesInput {
  const factory GetMessagesInput({
    required int conversationId,
    @Default(0) int skip,
    @Default(50) int take,
  }) = _GetMessagesInput;
}

@freezed
class GetMessagesOutput extends BaseOutput with _$GetMessagesOutput {
  const factory GetMessagesOutput(List<Message> messages) = _GetMessagesOutput;
}
