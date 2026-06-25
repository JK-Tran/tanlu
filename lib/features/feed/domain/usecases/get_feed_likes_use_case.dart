import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/feed/domain/entity/feed_like.dart';
import 'package:tanlu_management/features/feed/domain/repositories/feed_repository.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_output.dart';

part 'get_feed_likes_use_case.freezed.dart';

@Injectable()
class GetFeedLikesUseCase
    extends BaseFutureUseCase<GetFeedLikesInput, GetFeedLikesOutput> {
  const GetFeedLikesUseCase(this._repository);

  final FeedRepository _repository;

  @protected
  @override
  Future<GetFeedLikesOutput> buildUseCase(GetFeedLikesInput input) async {
    final likes = await _repository.getFeedLikes(input.feedId);
    return GetFeedLikesOutput(likes: likes);
  }
}

@freezed
class GetFeedLikesInput extends BaseInput with _$GetFeedLikesInput {
  const factory GetFeedLikesInput({required String feedId}) = _GetFeedLikesInput;
}

@freezed
class GetFeedLikesOutput extends BaseOutput with _$GetFeedLikesOutput {
  const factory GetFeedLikesOutput({required List<FeedLike> likes}) =
      _GetFeedLikesOutput;
}
