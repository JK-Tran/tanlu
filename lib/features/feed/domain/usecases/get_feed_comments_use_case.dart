import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/feed/domain/entity/feed_comment.dart';
import 'package:tanlu_management/features/feed/domain/repositories/feed_repository.dart';
import 'package:tanlu_management/shared/infrastructure/domain/entity/paged_list.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_output.dart';

part 'get_feed_comments_use_case.freezed.dart';

@Injectable()
class GetFeedCommentsUseCase
    extends BaseFutureUseCase<GetFeedCommentsInput, GetFeedCommentsOutput> {
  GetFeedCommentsUseCase(this._repository);

  final FeedRepository _repository;

  @protected
  @override
  Future<GetFeedCommentsOutput> buildUseCase(GetFeedCommentsInput input) async {
    final comments = await _repository.getFeedComments(
      postId: input.postId,
      page: input.page,
      limit: input.limit,
      highlightCommentId: input.highlightCommentId,
    );
    return GetFeedCommentsOutput(comments: comments);
  }
}

@freezed
class GetFeedCommentsInput extends BaseInput with _$GetFeedCommentsInput {
  const factory GetFeedCommentsInput({
    required int postId,
    @Default(1) int page,
    @Default(20) int limit,
    int? highlightCommentId,
  }) = _GetFeedCommentsInput;
}

@freezed
class GetFeedCommentsOutput extends BaseOutput with _$GetFeedCommentsOutput {
  const factory GetFeedCommentsOutput({
    required PagedList<FeedComment> comments,
  }) = _GetFeedCommentsOutput;
}
