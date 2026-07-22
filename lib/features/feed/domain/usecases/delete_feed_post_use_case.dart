import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/feed/domain/repositories/feed_repository.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/empty_output.dart';

part 'delete_feed_post_use_case.freezed.dart';

@Injectable()
class DeleteFeedPostUseCase extends BaseFutureUseCase<DeleteFeedPostInput, EmptyOutput> {
  DeleteFeedPostUseCase(this._repository);

  final FeedRepository _repository;

  @protected
  @override
  Future<EmptyOutput> buildUseCase(DeleteFeedPostInput input) async {
    await _repository.deleteFeedPost(input.id);
    return const EmptyOutput();
  }
}

@freezed
class DeleteFeedPostInput extends BaseInput with _$DeleteFeedPostInput {
  const factory DeleteFeedPostInput({
    required int id,
  }) = _DeleteFeedPostInput;
}
