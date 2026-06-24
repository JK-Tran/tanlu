import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/feed/domain/entity/author.dart';
import 'package:tanlu_management/features/feed/domain/repositories/feed_repository.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_output.dart';

part 'delete_feed_use_case.freezed.dart';

@Injectable()
class DeleteFeedUseCase
    extends BaseFutureUseCase<DeleteFeedInput, DeleteFeedOutput> {
  const DeleteFeedUseCase(this._repository);

  final FeedRepository _repository;

  @protected
  @override
  Future<DeleteFeedOutput> buildUseCase(DeleteFeedInput input) async {
    await _repository.deleteFeed(
      feedId: input.feedId,
      currentUser: input.currentUser,
    );

    return DeleteFeedOutput(feedId: input.feedId);
  }
}

@freezed
class DeleteFeedInput extends BaseInput with _$DeleteFeedInput {
  const factory DeleteFeedInput({
    required String feedId,
    required Author currentUser,
  }) = _DeleteFeedInput;
}

@freezed
class DeleteFeedOutput extends BaseOutput with _$DeleteFeedOutput {
  const factory DeleteFeedOutput({required String feedId}) = _DeleteFeedOutput;
}
