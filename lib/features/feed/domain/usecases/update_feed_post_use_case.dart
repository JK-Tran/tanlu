import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/feed/domain/repositories/feed_repository.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/empty_output.dart';

part 'update_feed_post_use_case.freezed.dart';

@Injectable()
class UpdateFeedPostUseCase extends BaseFutureUseCase<UpdateFeedPostInput, EmptyOutput> {
  UpdateFeedPostUseCase(this._repository);

  final FeedRepository _repository;

  @protected
  @override
  Future<EmptyOutput> buildUseCase(UpdateFeedPostInput input) async {
    await _repository.updateFeedPost(
      id: input.id,
      content: input.content,
      images: input.images,
      isPublic: input.isPublic,
    );
    return const EmptyOutput();
  }
}

@freezed
class UpdateFeedPostInput extends BaseInput with _$UpdateFeedPostInput {
  const factory UpdateFeedPostInput({
    required int id,
    String? content,
    List<String>? images,
    bool? isPublic,
  }) = _UpdateFeedPostInput;
}
