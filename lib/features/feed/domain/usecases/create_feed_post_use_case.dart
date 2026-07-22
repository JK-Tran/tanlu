import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/feed/domain/repositories/feed_repository.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/empty_output.dart';

part 'create_feed_post_use_case.freezed.dart';

@Injectable()
class CreateFeedPostUseCase extends BaseFutureUseCase<CreateFeedPostInput, EmptyOutput> {
  CreateFeedPostUseCase(this._repository);

  final FeedRepository _repository;

  @protected
  @override
  Future<EmptyOutput> buildUseCase(CreateFeedPostInput input) async {
    List<String>? remoteImages;

    if (input.images != null && input.images!.isNotEmpty) {
      remoteImages = [];
      for (final localPath in input.images!) {
        final url = await _repository.uploadMedia(localPath);
        if (url != null) {
          remoteImages.add(url);
        }
      }
    }

    await _repository.createFeedPost(
      content: input.content,
      images: remoteImages,
      isPublic: input.isPublic,
      classId: input.classId,
    );
    return const EmptyOutput();
  }
}

@freezed
class CreateFeedPostInput extends BaseInput with _$CreateFeedPostInput {
  const factory CreateFeedPostInput({
    required String content,
    List<String>? images,
    required bool isPublic,
    int? classId,
  }) = _CreateFeedPostInput;
}
