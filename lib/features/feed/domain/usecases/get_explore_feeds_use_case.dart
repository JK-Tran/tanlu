import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/feed/domain/entity/feed.dart';
import 'package:tanlu_management/features/feed/domain/repositories/feed_repository.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_output.dart';
import 'package:tanlu_management/shared/infrastructure/domain/pagination/paging_constants.dart';

part 'get_explore_feeds_use_case.freezed.dart';

@Injectable()
class GetExploreFeedsUseCase
    extends BaseFutureUseCase<GetExploreFeedsInput, GetExploreFeedsOutput> {
  const GetExploreFeedsUseCase(this._repository);

  final FeedRepository _repository;

  @protected
  @override
  Future<GetExploreFeedsOutput> buildUseCase(GetExploreFeedsInput input) async {
    final response = await _repository.getExploreFeeds(
      viewerUserId: input.viewerUserId,
      cursor: input.cursor,
      limit: input.limit,
    );

    return GetExploreFeedsOutput(response: response);
  }
}

@freezed
class GetExploreFeedsInput extends BaseInput with _$GetExploreFeedsInput {
  const factory GetExploreFeedsInput({
    @Default('') String viewerUserId,
    String? cursor,
    @Default(PagingConstants.itemsPerPage * 2) int limit,
  }) = _GetExploreFeedsInput;
}

@freezed
class GetExploreFeedsOutput extends BaseOutput with _$GetExploreFeedsOutput {
  const factory GetExploreFeedsOutput({required FeedResponse response}) =
      _GetExploreFeedsOutput;
}
