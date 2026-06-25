import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/chat/domain/entity/friend_request.dart';
import 'package:tanlu_management/features/chat/domain/repositories/chat_repository.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/stream/base_stream_use_case.dart';

part 'stream_friend_requests_use_case.freezed.dart';

@Injectable()
class StreamFriendRequestsUseCase extends BaseStreamUseCase<
    StreamFriendRequestsInput, List<FriendRequest>> {
  const StreamFriendRequestsUseCase(this._repository);

  final ChatRepository _repository;

  @override
  Stream<List<FriendRequest>> buildUseCase(StreamFriendRequestsInput input) {
    return _repository.streamIncomingFriendRequests(userId: input.userId);
  }
}

@freezed
class StreamFriendRequestsInput extends BaseInput
    with _$StreamFriendRequestsInput {
  const factory StreamFriendRequestsInput({required String userId}) =
      _StreamFriendRequestsInput;
}
