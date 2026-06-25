import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/core/constants/chat_constants.dart';
import 'package:tanlu_management/features/chat/domain/entity/message.dart';
import 'package:tanlu_management/features/chat/domain/repositories/chat_repository.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/stream/base_stream_use_case.dart';

part 'stream_messages_use_case.freezed.dart';

@Injectable()
class StreamMessagesUseCase
    extends BaseStreamUseCase<StreamMessagesInput, List<Message>> {
  const StreamMessagesUseCase(this._repository);

  final ChatRepository _repository;

  @override
  Stream<List<Message>> buildUseCase(StreamMessagesInput input) {
    return _repository.streamMessages(
      conversationId: input.conversationId,
      currentUserId: input.currentUserId,
      limit: input.limit,
    );
  }
}

@freezed
class StreamMessagesInput extends BaseInput with _$StreamMessagesInput {
  const factory StreamMessagesInput({
    required String conversationId,
    required String currentUserId,
    @Default(ChatConstants.messagePageSize) int limit,
  }) = _StreamMessagesInput;
}
