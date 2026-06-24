import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/feed/domain/entity/comment.dart';
import 'package:tanlu_management/features/feed/domain/repositories/feed_repository.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/stream/base_stream_use_case.dart';

part 'stream_feed_comments_use_case.freezed.dart';

@Injectable()
class StreamFeedCommentsUseCase
    extends BaseStreamUseCase<StreamFeedCommentsInput, List<Comment>> {
  const StreamFeedCommentsUseCase(this._repository);

  final FeedRepository _repository;

  @override
  Stream<List<Comment>> buildUseCase(StreamFeedCommentsInput input) {
    return _repository.streamFeedComments(
      feedId: input.feedId,
      feedAuthorId: input.feedAuthorId,
      viewerUserId: input.viewerUserId,
    );
  }
}

@freezed
class StreamFeedCommentsInput extends BaseInput with _$StreamFeedCommentsInput {
  const factory StreamFeedCommentsInput({
    required String feedId,
    required String feedAuthorId,
    @Default('') String viewerUserId,
  }) = _StreamFeedCommentsInput;
}
