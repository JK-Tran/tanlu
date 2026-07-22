import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/core/base/base_bloc.dart';
import 'package:tanlu_management/core/constants/app_media_limit.dart';
import 'package:tanlu_management/features/feed/domain/usecases/create_feed_post_use_case.dart';
import 'package:tanlu_management/shared/utils/error_mapper.dart';

part 'create_feed_bloc.freezed.dart';
part 'create_feed_event.dart';
part 'create_feed_state.dart';

typedef CreateFeedLocalMedia = ({String path, bool isVideo});

@injectable
class CreateFeedBloc extends BaseBloc<CreateFeedEvent, CreateFeedState> {
  CreateFeedBloc(this._createFeedPostUseCase) : super(const CreateFeedState()) {
    on<CreateFeedStarted>(_onStarted);
    on<CreateFeedContentChanged>(_onContentChanged);
    on<CreateFeedIsPublicChanged>(_onIsPublicChanged);
    on<CreateFeedAllowCommentsChanged>(_onAllowCommentsChanged);
    on<CreateFeedMediaPicked>(_onMediaPicked);
    on<CreateFeedMediaRemoved>(_onMediaRemoved);
    on<CreateFeedSubmitted>(_onSubmitted);
  }

  final CreateFeedPostUseCase _createFeedPostUseCase;

  bool _isSubmitButtonEnabled({
    required String content,
    required int authorId,
    required int classId,
  }) {
    return content.trim().isNotEmpty && authorId > 0 && classId > 0;
  }

  int _imageCount(List<CreateFeedLocalMedia> media) =>
      media.where((item) => !item.isVideo).length;

  int _videoCount(List<CreateFeedLocalMedia> media) =>
      media.where((item) => item.isVideo).length;

  Future<void> _onStarted(
    CreateFeedStarted event,
    Emitter<CreateFeedState> emit,
  ) async {
    emit(
      state.copyWith(
        authorId: event.authorId,
        fullName: event.fullName,
        avatar: event.avatar,
        role: event.role,
        classId: event.classId,
        centerId: event.centerId,
        className: '',
        isLoadingClassName: event.classId > 0,
        onPageError: '',
        submitSuccess: null,
        isSubmitButtonEnabled: _isSubmitButtonEnabled(
          content: state.content,
          authorId: event.authorId,
          classId: event.classId,
        ),
      ),
    );
  }

  void _onContentChanged(
    CreateFeedContentChanged event,
    Emitter<CreateFeedState> emit,
  ) {
    emit(
      state.copyWith(
        content: event.content,
        onPageError: '',
        isSubmitButtonEnabled: _isSubmitButtonEnabled(
          content: event.content,
          authorId: state.authorId,
          classId: state.classId,
        ),
      ),
    );
  }

  void _onIsPublicChanged(
    CreateFeedIsPublicChanged event,
    Emitter<CreateFeedState> emit,
  ) {
    emit(state.copyWith(isPublic: event.isPublic));
  }

  void _onAllowCommentsChanged(
    CreateFeedAllowCommentsChanged event,
    Emitter<CreateFeedState> emit,
  ) {
    emit(state.copyWith(allowComments: event.allowComments));
  }

  void _onMediaPicked(
    CreateFeedMediaPicked event,
    Emitter<CreateFeedState> emit,
  ) {
    final merged = [...state.localMedia];
    var imageCount = _imageCount(merged);
    var videoCount = _videoCount(merged);

    for (final item in event.items) {
      if (item.isVideo) {
        if (videoCount >= AppMediaLimit.maxVideosPerPost) continue;
        videoCount++;
      } else {
        if (imageCount >= AppMediaLimit.maxImagesPerPost) continue;
        imageCount++;
      }
      merged.add(item);
    }

    emit(state.copyWith(localMedia: merged, onPageError: ''));
  }

  void _onMediaRemoved(
    CreateFeedMediaRemoved event,
    Emitter<CreateFeedState> emit,
  ) {
    if (event.index < 0 || event.index >= state.localMedia.length) return;

    final updated = [...state.localMedia]..removeAt(event.index);
    emit(state.copyWith(localMedia: updated));
  }

  Future<void> _onSubmitted(
    CreateFeedSubmitted event,
    Emitter<CreateFeedState> emit,
  ) async {
    await runBlocCatching(
      handleLoading: false,
      action: () async {
        emit(
          state.copyWith(
            isSubmitting: true,
            onPageError: '',
            submitSuccess: null,
          ),
        );

        final imagePaths = state.localMedia
            .where((item) => !item.isVideo)
            .map((item) => item.path)
            .toList();

        await _createFeedPostUseCase.execute(
          CreateFeedPostInput(
            content: state.content,
            isPublic: state.isPublic,
            images: imagePaths.isNotEmpty ? imagePaths : null,
            classId: state.classId,
          ),
        );

        emit(state.copyWith(isSubmitting: false, submitSuccess: true));
      },
      doOnError: (e) {
        emit(
          state.copyWith(
            isSubmitting: false,
            onPageError: ErrorMapper.getMessage(e),
            submitSuccess: false,
          ),
        );
      },
    );
  }
}
