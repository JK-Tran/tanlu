import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/feed/domain/entity/feed.dart';
import 'package:tanlu_management/features/feed/domain/repositories/feed_repository.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_output.dart';

part 'get_class_feeds_use_case.freezed.dart';

@Injectable()
class GetClassFeedsUseCase
    extends BaseFutureUseCase<GetClassFeedsInput, GetClassFeedsOutput> {
  const GetClassFeedsUseCase(this._repository);

  final FeedRepository _repository;

  @protected
  @override
  Future<GetClassFeedsOutput> buildUseCase(GetClassFeedsInput input) async {
    final response = await _repository.getClassFeeds(
      authorId: input.authorId,
      viewerUserId: input.viewerUserId ?? input.authorId,
      cursor: input.cursor,
      limit: input.limit,
    );

    return GetClassFeedsOutput(response: response);
  }
}

@freezed
class GetClassFeedsInput extends BaseInput with _$GetClassFeedsInput {
  const factory GetClassFeedsInput({
    required String authorId,
    String? viewerUserId,
    String? cursor,
    @Default(20) int limit,
  }) = _GetClassFeedsInput;
}

@freezed
class GetClassFeedsOutput extends BaseOutput with _$GetClassFeedsOutput {
  const factory GetClassFeedsOutput({required FeedResponse response}) =
      _GetClassFeedsOutput;
}
