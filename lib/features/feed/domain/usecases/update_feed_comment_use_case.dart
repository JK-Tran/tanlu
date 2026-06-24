import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/feed/domain/entity/author.dart';
import 'package:tanlu_management/features/feed/domain/entity/comment.dart';
import 'package:tanlu_management/features/feed/domain/repositories/feed_repository.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_output.dart';
import 'package:tanlu_management/shared/network/exceptions/app_exceptions.dart';

part 'update_feed_comment_use_case.freezed.dart';

@Injectable()
class UpdateFeedCommentUseCase
    extends BaseFutureUseCase<UpdateFeedCommentInput, UpdateFeedCommentOutput> {
  const UpdateFeedCommentUseCase(this._repository);

  final FeedRepository _repository;

  @protected
  @override
  Future<UpdateFeedCommentOutput> buildUseCase(
    UpdateFeedCommentInput input,
  ) async {
    if (input.content.trim().isEmpty) {
      throw const ValidationException('Nội dung bình luận không được để trống');
    }

    final comment = await _repository.updateFeedComment(
      feedId: input.feedId,
      feedAuthorId: input.feedAuthorId,
      commentId: input.commentId,
      currentUser: input.currentUser,
      content: input.content.trim(),
    );

    return UpdateFeedCommentOutput(comment: comment);
  }
}

@freezed
class UpdateFeedCommentInput extends BaseInput with _$UpdateFeedCommentInput {
  const factory UpdateFeedCommentInput({
    required String feedId,
    required String feedAuthorId,
    required String commentId,
    required Author currentUser,
    required String content,
  }) = _UpdateFeedCommentInput;
}

@freezed
class UpdateFeedCommentOutput extends BaseOutput with _$UpdateFeedCommentOutput {
  const factory UpdateFeedCommentOutput({required Comment comment}) =
      _UpdateFeedCommentOutput;
}
