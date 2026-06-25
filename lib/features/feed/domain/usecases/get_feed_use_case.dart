import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/feed/domain/entity/feed.dart';
import 'package:tanlu_management/features/feed/domain/repositories/feed_repository.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_output.dart';

part 'get_feed_use_case.freezed.dart';

@Injectable()
class GetFeedUseCase extends BaseFutureUseCase<GetFeedInput, GetFeedOutput> {
  const GetFeedUseCase(this._repository);

  final FeedRepository _repository;

  @protected
  @override
  Future<GetFeedOutput> buildUseCase(GetFeedInput input) async {
    final feed = await _repository.getFeed(
      feedId: input.feedId,
      viewerUserId: input.viewerUserId,
    );

    return GetFeedOutput(feed: feed);
  }
}

@freezed
class GetFeedInput extends BaseInput with _$GetFeedInput {
  const factory GetFeedInput({
    required String feedId,
    @Default('') String viewerUserId,
  }) = _GetFeedInput;
}

@freezed
class GetFeedOutput extends BaseOutput with _$GetFeedOutput {
  const factory GetFeedOutput({required Feed feed}) = _GetFeedOutput;
}
