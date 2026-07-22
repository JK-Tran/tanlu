import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/feed/domain/repositories/feed_repository.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/empty_output.dart';

part 'create_feed_comment_use_case.freezed.dart';

@Injectable()
class CreateFeedCommentUseCase
    extends BaseFutureUseCase<CreateFeedCommentInput, EmptyOutput> {
  CreateFeedCommentUseCase(this._repository);

  final FeedRepository _repository;

  @protected
  @override
  Future<EmptyOutput> buildUseCase(CreateFeedCommentInput input) async {
    await _repository.createFeedComment(
      postId: input.postId,
      content: input.content,
      parentId: input.parentId,
    );
    return const EmptyOutput();
  }
}

@freezed
class CreateFeedCommentInput extends BaseInput with _$CreateFeedCommentInput {
  const factory CreateFeedCommentInput({
    required int postId,
    required String content,
    int? parentId,
  }) = _CreateFeedCommentInput;
}
