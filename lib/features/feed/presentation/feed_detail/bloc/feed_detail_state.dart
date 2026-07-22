part of 'feed_detail_bloc.dart';

@freezed
class FeedDetailState with _$FeedDetailState {
  const factory FeedDetailState({
    FeedPost? feed,
    @Default(0) int viewerUserId,
    @Default('') String viewerFullName,
    @Default('') String viewerAvatar,
    @Default('') String viewerRole,
    @Default('') String errorMessage,
    @Default(false) bool feedDeleted,
    @Default(false) bool isLoadingFeed,
    // Comments
    @Default([]) List<FeedComment> comments,
    @Default(false) bool isLoadingComments,
    @Default(false) bool isSubmittingComment,
    int? highlightCommentId,
    // Realtime state
    @Default(false) bool isSocketConnected,
  }) = _FeedDetailState;

  factory FeedDetailState.initial() => const FeedDetailState();
}
