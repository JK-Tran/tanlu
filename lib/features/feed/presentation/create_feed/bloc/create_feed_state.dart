part of 'create_feed_bloc.dart';

@freezed
class CreateFeedState with _$CreateFeedState {
  const factory CreateFeedState({
    @Default('') String authorId,
    @Default('') String fullName,
    @Default('') String avatar,
    @Default('') String role,
    @Default('') String classId,
    @Default('') String className,
    @Default(false) bool isLoadingClassName,
    @Default('') String centerId,
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
