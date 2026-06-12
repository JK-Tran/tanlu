import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/chat/domain/repositories/chat_repository.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_output.dart';

part 'mark_messages_as_read_use_case.freezed.dart';

@Injectable()
class MarkMessagesAsReadUseCase
    extends
        BaseFutureUseCase<MarkMessagesAsReadInput, MarkMessagesAsReadOutput> {
  const MarkMessagesAsReadUseCase(this._repository);

  final ChatRepository _repository;

  @protected
  @override
  Future<MarkMessagesAsReadOutput> buildUseCase(
    MarkMessagesAsReadInput input,
  ) async {
    await _repository.markMessagesAsRead(input.conversationId);
    return const MarkMessagesAsReadOutput();
  }
}

@freezed
class MarkMessagesAsReadInput extends BaseInput with _$MarkMessagesAsReadInput {
  const factory MarkMessagesAsReadInput({required int conversationId}) =
      _MarkMessagesAsReadInput;
}

@freezed
class MarkMessagesAsReadOutput extends BaseOutput
    with _$MarkMessagesAsReadOutput {
  const factory MarkMessagesAsReadOutput() = _MarkMessagesAsReadOutput;
}
