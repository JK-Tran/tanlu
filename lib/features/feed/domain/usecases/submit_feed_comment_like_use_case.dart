import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/feed/domain/entity/author.dart';
import 'package:tanlu_management/features/feed/domain/entity/feed_like.dart';
import 'package:tanlu_management/features/feed/domain/repositories/feed_repository.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_output.dart';

part 'submit_feed_comment_like_use_case.freezed.dart';

@Injectable()
class SubmitFeedCommentLikeUseCase
    extends BaseFutureUseCase<SubmitFeedCommentLikeInput, SubmitFeedCommentLikeOutput> {
  const SubmitFeedCommentLikeUseCase(this._repository);

  final FeedRepository _repository;

  @protected
  @override
  Future<SubmitFeedCommentLikeOutput> buildUseCase(
    SubmitFeedCommentLikeInput input,
  ) async {
    final result = await _repository.submitFeedCommentLike(
      feedId: input.feedId,
      commentId: input.commentId,
      currentUser: input.currentUser,
    );

    return SubmitFeedCommentLikeOutput(result: result);
  }
}

@freezed
class SubmitFeedCommentLikeInput extends BaseInput with _$SubmitFeedCommentLikeInput {
  const factory SubmitFeedCommentLikeInput({
    required String feedId,
    required String commentId,
    required Author currentUser,
  }) = _SubmitFeedCommentLikeInput;
}

@freezed
class SubmitFeedCommentLikeOutput extends BaseOutput with _$SubmitFeedCommentLikeOutput {
  const factory SubmitFeedCommentLikeOutput({required LikeResult result}) =
      _SubmitFeedCommentLikeOutput;
}
