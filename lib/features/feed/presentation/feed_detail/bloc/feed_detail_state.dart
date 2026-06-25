part of 'feed_detail_bloc.dart';

@freezed
class FeedDetailState with _$FeedDetailState {
  const factory FeedDetailState({
    Feed? feed,
    @Default([]) List<Comment> comments,
    @Default(false) bool isLoadingComments,
    @Default(false) bool openComments,
    @Default('') String viewerUserId,
    @Default('') String viewerFullName,
    @Default('') String viewerAvatar,
    @Default('') String viewerRole,
    @Default('') String errorMessage,
    String? replyParentId,
    @Default('') String replyToName,
    @Default('') String replyToContent,
    @Default(false) bool isSubmittingComment,
    String? editingCommentId,
    @Default(false) bool feedDeleted,
  }) = _FeedDetailState;

  factory FeedDetailState.initial() => const FeedDetailState(
    isLoadingComments: true,
  );
}

