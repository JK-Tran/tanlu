import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/core/base/base_bloc.dart';
import 'package:tanlu_management/core/constants/app_media_limit.dart';
import 'package:tanlu_management/features/feed/domain/usecases/submit_feed_use_case.dart';
import 'package:tanlu_management/features/person/domain/usecases/get_class_name_use_case.dart';

part 'create_feed_bloc.freezed.dart';
part 'create_feed_event.dart';
part 'create_feed_state.dart';

typedef CreateFeedLocalMedia = ({String path, bool isVideo});

@injectable
class CreateFeedBloc extends BaseBloc<CreateFeedEvent, CreateFeedState> {
  CreateFeedBloc(this._submitFeedUseCase, this._getClassNameUseCase)
    : super(const CreateFeedState()) {
    on<CreateFeedStarted>(_onStarted);
    on<CreateFeedContentChanged>(_onContentChanged);
    on<CreateFeedIsPublicChanged>(_onIsPublicChanged);
    on<CreateFeedAllowCommentsChanged>(_onAllowCommentsChanged);
    on<CreateFeedMediaPicked>(_onMediaPicked);
    on<CreateFeedMediaRemoved>(_onMediaRemoved);
    on<CreateFeedSubmitted>(_onSubmitted);
  }

  final SubmitFeedUseCase _submitFeedUseCase;
  final GetClassNameUseCase _getClassNameUseCase;

  bool _isSubmitButtonEnabled({
    required String content,
    required String authorId,
    required String classId,
  }) {
    return content.trim().isNotEmpty &&
        authorId.isNotEmpty &&
        classId.isNotEmpty;
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
        isLoadingClassName: event.classId.isNotEmpty,
        onPageError: '',
        submitSuccess: null,
        isSubmitButtonEnabled: _isSubmitButtonEnabled(
          content: state.content,
          authorId: event.authorId,
          classId: event.classId,
        ),
      ),
    );

    if (event.classId.isEmpty) return;

    await runBlocCatching(
      handleLoading: false,
      action: () async {
        final output = await _getClassNameUseCase.execute(
          GetClassNameInput(classId: event.classId),
        );

        emit(
          state.copyWith(
            className: output.className,
            isLoadingClassName: false,
          ),
        );
      },
      doOnError: (_) {
        emit(state.copyWith(isLoadingClassName: false));
      },
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
        if (videoCount >= AppMediaLimit.maxVideoBytes) continue;
        videoCount++;
      } else {
        if (imageCount >= AppMediaLimit.maxImageBytes) continue;
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
        final videoPaths = state.localMedia
            .where((item) => item.isVideo)
            .map((item) => item.path)
            .toList();

        await _submitFeedUseCase.execute(
          SubmitFeedInput(
            authorId: state.authorId,
            fullName: state.fullName,
            avatar: state.avatar,
            role: state.role,
            userClassId: state.classId,
            classId: state.classId,
            className: state.className,
            centerId: state.centerId,
            content: state.content,
            isPublic: state.isPublic,
            allowComments: state.allowComments,
            localImagePaths: imagePaths,
            localVideoPaths: videoPaths,
          ),
        );

        emit(state.copyWith(isSubmitting: false, submitSuccess: true));
      },
      doOnError: (e) {
        emit(
          state.copyWith(
            isSubmitting: false,
            onPageError: e.toString(),
            submitSuccess: false,
          ),
        );
      },
    );
  }
}
