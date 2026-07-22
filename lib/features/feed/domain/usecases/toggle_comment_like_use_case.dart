import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/feed/domain/repositories/feed_repository.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/empty_output.dart';

part 'toggle_comment_like_use_case.freezed.dart';

@Injectable()
class ToggleCommentLikeUseCase
    extends BaseFutureUseCase<ToggleCommentLikeInput, EmptyOutput> {
  ToggleCommentLikeUseCase(this._repository);

  final FeedRepository _repository;

  @protected
  @override
  Future<EmptyOutput> buildUseCase(ToggleCommentLikeInput input) async {
    await _repository.toggleCommentLike(input.commentId);
    return const EmptyOutput();
  }
}

@freezed
class ToggleCommentLikeInput extends BaseInput with _$ToggleCommentLikeInput {
  const factory ToggleCommentLikeInput({required int commentId}) =
      _ToggleCommentLikeInput;
}
