part of 'feed_detail_bloc.dart';

abstract class FeedDetailEvent {
  const FeedDetailEvent();
}

@freezed
class FeedDetailStarted extends FeedDetailEvent with _$FeedDetailStarted {
  const factory FeedDetailStarted({
    FeedPost? feed,
    int? postId,
    required int viewerUserId,
    required String viewerFullName,
    required String viewerAvatar,
    required String viewerRole,
    @Default(false) bool openComments,
    int? highlightCommentId,
  }) = _FeedDetailStarted;
}

@freezed
class FeedDetailDeleteFeed extends FeedDetailEvent with _$FeedDetailDeleteFeed {
  const factory FeedDetailDeleteFeed() = _FeedDetailDeleteFeed;
}

@freezed
class FeedDetailLoadComments extends FeedDetailEvent
    with _$FeedDetailLoadComments {
  const factory FeedDetailLoadComments({
    int? highlightCommentId,
  }) = _FeedDetailLoadComments;
}

@freezed
class FeedDetailSubmitComment extends FeedDetailEvent
    with _$FeedDetailSubmitComment {
  const factory FeedDetailSubmitComment({
    required String content,
    int? parentId,
  }) = _FeedDetailSubmitComment;
}

@freezed
class FeedDetailToggleLike extends FeedDetailEvent with _$FeedDetailToggleLike {
  const factory FeedDetailToggleLike() = _FeedDetailToggleLike;
}

@freezed
class FeedDetailToggleCommentLike extends FeedDetailEvent
    with _$FeedDetailToggleCommentLike {
  const factory FeedDetailToggleCommentLike({required int commentId}) =
      _FeedDetailToggleCommentLike;
}

// Realtime socket events
class FeedDetailSocketNewComment extends FeedDetailEvent {
  const FeedDetailSocketNewComment({required this.data});
  final Map<String, dynamic> data;
}

class FeedDetailSocketPostLikeUpdated extends FeedDetailEvent {
  const FeedDetailSocketPostLikeUpdated({required this.totalLikes});
  final int totalLikes;
}

class FeedDetailSocketCommentLikeUpdated extends FeedDetailEvent {
  const FeedDetailSocketCommentLikeUpdated({
    required this.commentId,
    required this.totalLikes,
  });
  final int commentId;
  final int totalLikes;
}
