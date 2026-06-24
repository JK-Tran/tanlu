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

part 'submit_feed_comment_use_case.freezed.dart';

@Injectable()
class SubmitFeedCommentUseCase
    extends BaseFutureUseCase<SubmitFeedCommentInput, SubmitFeedCommentOutput> {
  const SubmitFeedCommentUseCase(this._repository);

  final FeedRepository _repository;

  @protected
  @override
  Future<SubmitFeedCommentOutput> buildUseCase(
    SubmitFeedCommentInput input,
  ) async {
    if (input.content.trim().isEmpty) {
      throw const ValidationException('Nội dung bình luận không được để trống');
    }

    final comment = await _repository.submitFeedComment(
      feedId: input.feedId,
      feedAuthorId: input.feedAuthorId,
      author: input.author,
      content: input.content.trim(),
      parentId: input.parentId,
    );

    return SubmitFeedCommentOutput(comment: comment);
  }
}

@freezed
class SubmitFeedCommentInput extends BaseInput with _$SubmitFeedCommentInput {
  const factory SubmitFeedCommentInput({
    required String feedId,
    required String feedAuthorId,
    required Author author,
    required String content,
    String? parentId,
  }) = _SubmitFeedCommentInput;
}

@freezed
class SubmitFeedCommentOutput extends BaseOutput with _$SubmitFeedCommentOutput {
  const factory SubmitFeedCommentOutput({required Comment comment}) =
      _SubmitFeedCommentOutput;
}
