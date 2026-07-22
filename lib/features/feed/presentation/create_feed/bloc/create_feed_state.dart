part of 'create_feed_bloc.dart';

@freezed
class CreateFeedState with _$CreateFeedState {
  const factory CreateFeedState({
    @Default(0) int authorId,
    @Default('') String fullName,
    @Default('') String avatar,
    @Default('') String role,
    @Default(0) int classId,
    @Default('') String className,
    @Default(false) bool isLoadingClassName,
    @Default(0) int centerId,
    @Default('') String content,
    @Default(false) bool isPublic,
    @Default(true) bool allowComments,
    @Default([]) List<CreateFeedLocalMedia> localMedia,
    @Default(false) bool isSubmitting,
    @Default(false) bool isSubmitButtonEnabled,
    @Default('') String onPageError,
    bool? submitSuccess,
  }) = _CreateFeedState;
}
