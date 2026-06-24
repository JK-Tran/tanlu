import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/feed/domain/entity/author.dart';
import 'package:tanlu_management/features/feed/domain/repositories/feed_repository.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_output.dart';

part 'delete_feed_comment_use_case.freezed.dart';

@Injectable()
class DeleteFeedCommentUseCase
    extends BaseFutureUseCase<DeleteFeedCommentInput, DeleteFeedCommentOutput> {
  const DeleteFeedCommentUseCase(this._repository);

  final FeedRepository _repository;

  @protected
  @override
  Future<DeleteFeedCommentOutput> buildUseCase(
    DeleteFeedCommentInput input,
  ) async {
    await _repository.deleteFeedComment(
      feedId: input.feedId,
      feedAuthorId: input.feedAuthorId,
      commentId: input.commentId,
      currentUser: input.currentUser,
    );

    return DeleteFeedCommentOutput(
      feedId: input.feedId,
      commentId: input.commentId,
    );
  }
}

@freezed
class DeleteFeedCommentInput extends BaseInput with _$DeleteFeedCommentInput {
  const factory DeleteFeedCommentInput({
    required String feedId,
    required String feedAuthorId,
    required String commentId,
    required Author currentUser,
  }) = _DeleteFeedCommentInput;
}

@freezed
class DeleteFeedCommentOutput extends BaseOutput with _$DeleteFeedCommentOutput {
  const factory DeleteFeedCommentOutput({
    required String feedId,
    required String commentId,
  }) = _DeleteFeedCommentOutput;
}
