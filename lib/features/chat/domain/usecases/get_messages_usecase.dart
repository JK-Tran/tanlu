import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/chat/domain/entity/chat_messages_response.dart';
import 'package:tanlu_management/features/chat/domain/repositories/chat_repository.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_output.dart';

part 'get_messages_usecase.freezed.dart';

@Injectable()
class GetMessagesUseCase
    extends BaseFutureUseCase<GetMessagesInput, GetMessagesOutput> {
  const GetMessagesUseCase(this._repository);

  final ChatRepository _repository;

  @protected
  @override
  Future<GetMessagesOutput> buildUseCase(GetMessagesInput input) async {
    if (input.targetMessageId != null) {
      final data = await _repository.getMessagesAround(
        conversationId: input.conversationId,
        targetMessageId: input.targetMessageId!,
        beforeLimit: input.limit ~/ 2,
        afterLimit: input.limit ~/ 2,
      );
      return GetMessagesOutput(data: data);
    } else {
      final data = await _repository.getMessages(
        conversationId: input.conversationId,
        limit: input.limit,
        before: input.before,
        after: input.after,
      );
      return GetMessagesOutput(data: data);
    }
  }
}

@freezed
class GetMessagesInput extends BaseInput with _$GetMessagesInput {
  const factory GetMessagesInput({
    required int conversationId,
    @Default(20) int limit,
    String? before,
    String? after,
    int? targetMessageId,
  }) = _GetMessagesInput;
}

@freezed
class GetMessagesOutput extends BaseOutput with _$GetMessagesOutput {
  const factory GetMessagesOutput({required ChatMessagesResponse data}) =
      _GetMessagesOutput;
  const GetMessagesOutput._();
}
