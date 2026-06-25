import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/chat/domain/entity/conversation.dart';
import 'package:tanlu_management/features/chat/domain/repositories/chat_repository.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/stream/base_stream_use_case.dart';

part 'stream_conversations_use_case.freezed.dart';

@Injectable()
class StreamConversationsUseCase extends BaseStreamUseCase<
    StreamConversationsInput, List<Conversation>> {
  const StreamConversationsUseCase(this._repository);

  final ChatRepository _repository;

  @override
  Stream<List<Conversation>> buildUseCase(StreamConversationsInput input) {
    return _repository.streamConversations(
      currentUserId: input.currentUserId,
    );
  }
}

@freezed
class StreamConversationsInput extends BaseInput
    with _$StreamConversationsInput {
  const factory StreamConversationsInput({required String currentUserId}) =
      _StreamConversationsInput;
}
