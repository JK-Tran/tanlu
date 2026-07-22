import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/feed/domain/repositories/feed_repository.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/empty_output.dart';

part 'toggle_post_like_use_case.freezed.dart';

@Injectable()
class TogglePostLikeUseCase
    extends BaseFutureUseCase<TogglePostLikeInput, EmptyOutput> {
  TogglePostLikeUseCase(this._repository);

  final FeedRepository _repository;

  @protected
  @override
  Future<EmptyOutput> buildUseCase(TogglePostLikeInput input) async {
    await _repository.togglePostLike(input.postId);
    return const EmptyOutput();
  }
}

@freezed
class TogglePostLikeInput extends BaseInput with _$TogglePostLikeInput {
  const factory TogglePostLikeInput({required int postId}) = _TogglePostLikeInput;
}
