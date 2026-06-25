import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/core/constants/app_media_limit.dart';
import 'package:tanlu_management/features/feed/domain/entity/feed.dart';
import 'package:tanlu_management/features/feed/domain/repositories/feed_repository.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_output.dart';
import 'package:tanlu_management/shared/network/exceptions/app_exceptions.dart';
import 'package:tanlu_management/shared/utils/string_utils.dart';

part 'submit_feed_use_case.freezed.dart';

@Injectable()
class SubmitFeedUseCase
    extends BaseFutureUseCase<SubmitFeedInput, SubmitFeedOutput> {
  const SubmitFeedUseCase(this._repository);

  final FeedRepository _repository;

  @protected
  @override
  Future<SubmitFeedOutput> buildUseCase(SubmitFeedInput input) async {
    if (input.role != 'teacher') {
      throw const ValidationException('Chỉ giáo viên mới được đăng bài');
    }

    if (input.classId != input.userClassId) {
      throw const ValidationException('Không thể đăng bài cho lớp khác');
    }

    if (input.content.trim().isEmpty) {
      throw const ValidationException('Nội dung không được để trống');
    }

    if (input.localImagePaths.length > AppMediaLimit.maxImageBytes) {
      throw ValidationException(
        'Tối đa ${AppMediaLimit.maxImageMegabytes} ảnh mỗi bài',
      );
    }

    if (input.localVideoPaths.length > AppMediaLimit.maxVideoBytes) {
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

    final feed = await _repository.submitFeed(
      authorId: input.authorId,
      fullName: input.fullName,
      avatar: input.avatar,
      role: input.role,
      classId: input.classId,
      className: input.className,
      centerId: input.centerId,
      content: input.content.trim(),
      isPublic: input.isPublic,
      allowComments: input.allowComments,
      localImagePaths: input.localImagePaths,
      localVideoPaths: input.localVideoPaths,
    );

    return SubmitFeedOutput(feed: feed);
  }
}

@freezed
class SubmitFeedInput extends BaseInput with _$SubmitFeedInput {
  const factory SubmitFeedInput({
    required String authorId,
    required String fullName,
    @Default('') String avatar,
    required String role,
    required String userClassId,
    required String classId,
    required String className,
    @Default('') String centerId,
    required String content,
    @Default(false) bool isPublic,
    @Default(true) bool allowComments,
    @Default([]) List<String> localImagePaths,
    @Default([]) List<String> localVideoPaths,
  }) = _SubmitFeedInput;
}

@freezed
class SubmitFeedOutput extends BaseOutput with _$SubmitFeedOutput {
  const factory SubmitFeedOutput({required Feed feed}) = _SubmitFeedOutput;
}
