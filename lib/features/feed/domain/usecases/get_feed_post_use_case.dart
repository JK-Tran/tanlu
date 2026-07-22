import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/feed/domain/entity/feed_post.dart';
import 'package:tanlu_management/features/feed/domain/repositories/feed_repository.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_output.dart';

part 'get_feed_post_use_case.freezed.dart';

@Injectable()
class GetFeedPostUseCase
    extends BaseFutureUseCase<GetFeedPostInput, GetFeedPostOutput> {
  GetFeedPostUseCase(this._repository);

  final FeedRepository _repository;

  @protected
  @override
  Future<GetFeedPostOutput> buildUseCase(GetFeedPostInput input) async {
    final post = await _repository.getFeedPost(input.id);
    return GetFeedPostOutput(post: post);
  }
}

@freezed
class GetFeedPostInput extends BaseInput with _$GetFeedPostInput {
  const factory GetFeedPostInput({
    required int id,
  }) = _GetFeedPostInput;
}

@freezed
class GetFeedPostOutput extends BaseOutput with _$GetFeedPostOutput {
  const factory GetFeedPostOutput({
    required FeedPost post,
  }) = _GetFeedPostOutput;
}
