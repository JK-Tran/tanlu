part of 'feed_detail_bloc.dart';

abstract class FeedDetailEvent {
  const FeedDetailEvent();
}

@freezed
class FeedDetailStarted extends FeedDetailEvent with _$FeedDetailStarted {
  const factory FeedDetailStarted({
    required Feed feed,
    required String viewerUserId,
    @Default('') String fullName,
    @Default('') String avatar,
    @Default('') String role,
    @Default(false) bool openComments,
  }) = _FeedDetailStarted;
}

@freezed
class FeedDetailToggleLike extends FeedDetailEvent with _$FeedDetailToggleLike {
  const factory FeedDetailToggleLike() = _FeedDetailToggleLike;
}

@freezed
class FeedDetailReplyToComment extends FeedDetailEvent
    with _$FeedDetailReplyToComment {
  const factory FeedDetailReplyToComment({
    required String commentId,
    required String authorName,
    required String commentContent,
  }) = _FeedDetailReplyToComment;
}

@freezed
class FeedDetailCancelReply extends FeedDetailEvent
    with _$FeedDetailCancelReply {
  const factory FeedDetailCancelReply() = _FeedDetailCancelReply;
}

@freezed
class FeedDetailSubmitComment extends FeedDetailEvent
    with _$FeedDetailSubmitComment {
  const factory FeedDetailSubmitComment({required String content}) =
      _FeedDetailSubmitComment;
}

@freezed
class FeedDetailToggleCommentLike extends FeedDetailEvent
    with _$FeedDetailToggleCommentLike {
  const factory FeedDetailToggleCommentLike({required String commentId}) =
      _FeedDetailToggleCommentLike;
}

@freezed
class FeedDetailStartEditComment extends FeedDetailEvent
    with _$FeedDetailStartEditComment {
  const factory FeedDetailStartEditComment({required String commentId}) =
      _FeedDetailStartEditComment;
}

@freezed
class FeedDetailCancelEditComment extends FeedDetailEvent
    with _$FeedDetailCancelEditComment {
  const factory FeedDetailCancelEditComment() = _FeedDetailCancelEditComment;
}

@freezed
class FeedDetailUpdateComment extends FeedDetailEvent
    with _$FeedDetailUpdateComment {
  const factory FeedDetailUpdateComment({required String content}) =
      _FeedDetailUpdateComment;
}

@freezed
class FeedDetailDeleteComment extends FeedDetailEvent
    with _$FeedDetailDeleteComment {
  const factory FeedDetailDeleteComment({required String commentId}) =
      _FeedDetailDeleteComment;
}

@freezed
class FeedDetailDeleteFeed extends FeedDetailEvent with _$FeedDetailDeleteFeed {
  const factory FeedDetailDeleteFeed() = _FeedDetailDeleteFeed;
}
