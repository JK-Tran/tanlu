import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/feed/domain/entity/author.dart';
import 'package:tanlu_management/features/feed/domain/entity/feed_like.dart';
import 'package:tanlu_management/features/feed/domain/repositories/feed_repository.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_output.dart';

part 'submit_feed_like_use_case.freezed.dart';

@Injectable()
class SubmitFeedLikeUseCase
    extends BaseFutureUseCase<SubmitFeedLikeInput, SubmitFeedLikeOutput> {
  const SubmitFeedLikeUseCase(this._repository);

  final FeedRepository _repository;

  @protected
  @override
  Future<SubmitFeedLikeOutput> buildUseCase(SubmitFeedLikeInput input) async {
    final result = await _repository.submitFeedLike(
      feedId: input.feedId,
      currentUser: input.currentUser,
    );

    return SubmitFeedLikeOutput(result: result);
  }
}

@freezed
class SubmitFeedLikeInput extends BaseInput with _$SubmitFeedLikeInput {
  const factory SubmitFeedLikeInput({
    required String feedId,
    required Author currentUser,
  }) = _SubmitFeedLikeInput;
}

@freezed
class SubmitFeedLikeOutput extends BaseOutput with _$SubmitFeedLikeOutput {
  const factory SubmitFeedLikeOutput({required LikeResult result}) =
      _SubmitFeedLikeOutput;
}
