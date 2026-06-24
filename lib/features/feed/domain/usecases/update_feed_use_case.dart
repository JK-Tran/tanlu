import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/core/constants/app_media_limit.dart';
import 'package:tanlu_management/features/feed/domain/entity/author.dart';
import 'package:tanlu_management/features/feed/domain/entity/feed.dart';
import 'package:tanlu_management/features/feed/domain/repositories/feed_repository.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_output.dart';
import 'package:tanlu_management/shared/network/exceptions/app_exceptions.dart';
import 'package:tanlu_management/shared/utils/string_utils.dart';

part 'update_feed_use_case.freezed.dart';

@Injectable()
class UpdateFeedUseCase
    extends BaseFutureUseCase<UpdateFeedInput, UpdateFeedOutput> {
  const UpdateFeedUseCase(this._repository);

  final FeedRepository _repository;

  @protected
  @override
  Future<UpdateFeedOutput> buildUseCase(UpdateFeedInput input) async {
    if (input.content.trim().isEmpty) {
      throw const ValidationException('Nội dung không được để trống');
    }

    final totalImages = input.keptImageUrls.length + input.localImagePaths.length;
    if (totalImages > AppMediaLimit.maxImageBytes) {
      throw ValidationException(
        'Tối đa ${AppMediaLimit.maxImageMegabytes} ảnh mỗi bài',
      );
    }

    final totalVideos = input.keptVideoUrls.length + input.localVideoPaths.length;
    if (totalVideos > AppMediaLimit.maxVideoBytes) {
      throw ValidationException(
        'Tối đa ${AppMediaLimit.maxVideoMegabytes} video mỗi bài',
      );
    }

    for (final path in input.localVideoPaths) {
      final file = File(path);
      if (!file.existsSync()) {
        throw const ValidationException('Không tìm thấy file video');
      }
      final bytes = file.lengthSync();
      if (bytes > AppMediaLimit.maxVideoBytes) {
        throw ValidationException(
          'Video tối đa ${AppMediaLimit.maxVideoMegabytes} MB '
          '(file hiện tại: ${StringUtils.formatBytes(bytes)})',
        );
      }
    }

    final feed = await _repository.updateFeed(
      feedId: input.feedId,
      currentUser: input.currentUser,
      content: input.content.trim(),
      isPublic: input.isPublic,
      allowComments: input.allowComments,
      keptImageUrls: input.keptImageUrls,
      keptVideoUrls: input.keptVideoUrls,
      localImagePaths: input.localImagePaths,
      localVideoPaths: input.localVideoPaths,
    );

    return UpdateFeedOutput(feed: feed);
  }
}

@freezed
class UpdateFeedInput extends BaseInput with _$UpdateFeedInput {
  const factory UpdateFeedInput({
    required String feedId,
    required Author currentUser,
    required String content,
    @Default(false) bool isPublic,
    @Default(true) bool allowComments,
    @Default([]) List<String> keptImageUrls,
    @Default([]) List<String> keptVideoUrls,
    @Default([]) List<String> localImagePaths,
    @Default([]) List<String> localVideoPaths,
  }) = _UpdateFeedInput;
}

@freezed
class UpdateFeedOutput extends BaseOutput with _$UpdateFeedOutput {
  const factory UpdateFeedOutput({required Feed feed}) = _UpdateFeedOutput;
}
