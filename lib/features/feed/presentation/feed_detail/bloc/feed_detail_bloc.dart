import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/core/base/base_bloc.dart';
import 'package:tanlu_management/features/feed/domain/entity/author.dart';
import 'package:tanlu_management/features/feed/domain/entity/comment.dart';
import 'package:tanlu_management/features/feed/domain/entity/feed.dart';
import 'package:tanlu_management/features/feed/domain/repositories/feed_repository.dart';
import 'package:tanlu_management/features/feed/domain/usecases/delete_feed_comment_use_case.dart';
import 'package:tanlu_management/features/feed/domain/usecases/delete_feed_use_case.dart';
import 'package:tanlu_management/features/feed/domain/usecases/stream_feed_comments_use_case.dart';
import 'package:tanlu_management/features/feed/domain/usecases/submit_feed_comment_like_use_case.dart';
import 'package:tanlu_management/features/feed/domain/usecases/submit_feed_comment_use_case.dart';
import 'package:tanlu_management/features/feed/domain/usecases/submit_feed_like_use_case.dart';
import 'package:tanlu_management/features/feed/domain/usecases/update_feed_comment_use_case.dart';

part 'feed_detail_bloc.freezed.dart';
part 'feed_detail_event.dart';
part 'feed_detail_state.dart';

@injectable
class FeedDetailBloc extends BaseBloc<FeedDetailEvent, FeedDetailState> {
  FeedDetailBloc(
    this._repository,
    this._submitFeedLikeUseCase,
    this._streamFeedCommentsUseCase,
    this._submitFeedCommentUseCase,
    this._submitFeedCommentLikeUseCase,
    this._updateFeedCommentUseCase,
    this._deleteFeedCommentUseCase,
    this._deleteFeedUseCase,
  ) : super(FeedDetailState.initial()) {
    on<FeedDetailStarted>(_onStarted);
    on<FeedDetailToggleLike>(_onToggleLike);
    on<FeedDetailReplyToComment>(_onReplyToComment);
    on<FeedDetailCancelReply>(_onCancelReply);
    on<FeedDetailSubmitComment>(_onSubmitComment);
    on<FeedDetailToggleCommentLike>(_onToggleCommentLike);
    on<FeedDetailStartEditComment>(_onStartEditComment);
    on<FeedDetailCancelEditComment>(_onCancelEditComment);
    on<FeedDetailUpdateComment>(_onUpdateComment);
    on<FeedDetailDeleteComment>(_onDeleteComment);
    on<FeedDetailDeleteFeed>(_onDeleteFeed);
    on<_FeedUpdated>(_onFeedUpdated);
    on<_CommentsUpdated>(_onCommentsUpdated);
  }

  final FeedRepository _repository;
  final SubmitFeedLikeUseCase _submitFeedLikeUseCase;
  final StreamFeedCommentsUseCase _streamFeedCommentsUseCase;
  final SubmitFeedCommentUseCase _submitFeedCommentUseCase;
  final SubmitFeedCommentLikeUseCase _submitFeedCommentLikeUseCase;
  final UpdateFeedCommentUseCase _updateFeedCommentUseCase;
  final DeleteFeedCommentUseCase _deleteFeedCommentUseCase;
  final DeleteFeedUseCase _deleteFeedUseCase;

  @override
  Future<void> close() {
    _feedSubscription?.cancel();
    _commentsSubscription?.cancel();
    return super.close();
  }

  StreamSubscription<Feed>? _feedSubscription;
  StreamSubscription<List<Comment>>? _commentsSubscription;

  Author get _viewerAuthor => Author(
    id: state.viewerUserId,
    fullName: state.viewerFullName,
    avatar: state.viewerAvatar,
    role: state.viewerRole,
  );

  Future<void> _onStarted(
    FeedDetailStarted event,
    Emitter<FeedDetailState> emit,
  ) async {
    emit(
      state.copyWith(
        feed: event.feed,
        viewerUserId: event.viewerUserId,
        viewerFullName: event.fullName,
        viewerAvatar: event.avatar,
        viewerRole: event.role,
        openComments: event.openComments,
      ),
    );

    await _feedSubscription?.cancel();
    _feedSubscription = _repository
        .streamFeed(feedId: event.feed.id, viewerUserId: event.viewerUserId)
        .listen(
          (feed) => add(_FeedUpdated(feed)),
          onError: (Object e) => emit(state.copyWith(errorMessage: '$e')),
        );

    await _commentsSubscription?.cancel();
    _commentsSubscription = _streamFeedCommentsUseCase
        .execute(
          StreamFeedCommentsInput(
            feedId: event.feed.id,
            feedAuthorId: event.feed.author.id,
            viewerUserId: event.viewerUserId,
          ),
        )
        .listen(
          (comments) => add(_CommentsUpdated(comments)),
          onError: (Object e) => emit(state.copyWith(errorMessage: '$e')),
        );
  }

  void _onFeedUpdated(_FeedUpdated event, Emitter<FeedDetailState> emit) {
    emit(state.copyWith(feed: event.feed));
  }

  void _onCommentsUpdated(
    _CommentsUpdated event,
    Emitter<FeedDetailState> emit,
  ) {
    emit(state.copyWith(comments: event.comments, isLoadingComments: false));
  }

  void _onReplyToComment(
    FeedDetailReplyToComment event,
    Emitter<FeedDetailState> emit,
  ) {
    emit(
      state.copyWith(
        replyParentId: event.commentId,
        replyToName: event.authorName,
        replyToContent: event.commentContent,
      ),
    );
  }

  void _onCancelReply(FeedDetailCancelReply event, Emitter<FeedDetailState> emit) {
    emit(
      state.copyWith(
        replyParentId: null,
        replyToName: '',
        replyToContent: '',
      ),
    );
  }

  void _onStartEditComment(
    FeedDetailStartEditComment event,
    Emitter<FeedDetailState> emit,
  ) {
    if (_findComment(state.comments, event.commentId) == null) return;

    emit(
      state.copyWith(
        editingCommentId: event.commentId,
        replyParentId: null,
        replyToName: '',
        replyToContent: '',
      ),
    );
  }

  void _onCancelEditComment(
    FeedDetailCancelEditComment event,
    Emitter<FeedDetailState> emit,
  ) {
    emit(state.copyWith(editingCommentId: null));
  }

  Future<void> _onUpdateComment(
    FeedDetailUpdateComment event,
    Emitter<FeedDetailState> emit,
  ) async {
    final feed = state.feed;
    final commentId = state.editingCommentId;
    if (feed == null || commentId == null) return;

    await runBlocCatching(
      handleLoading: false,
      action: () async {
        emit(state.copyWith(isSubmittingComment: true, errorMessage: ''));

        await _updateFeedCommentUseCase.execute(
          UpdateFeedCommentInput(
            feedId: feed.id,
            feedAuthorId: feed.author.id,
            commentId: commentId,
            currentUser: _viewerAuthor,
            content: event.content,
          ),
        );

        emit(
          state.copyWith(
            isSubmittingComment: false,
            editingCommentId: null,
          ),
        );
      },
      doOnError: (e) {
        emit(state.copyWith(isSubmittingComment: false, errorMessage: '$e'));
      },
    );
  }

  Future<void> _onDeleteComment(
    FeedDetailDeleteComment event,
    Emitter<FeedDetailState> emit,
  ) async {
    final feed = state.feed;
    if (feed == null) return;

    await runBlocCatching(
      handleLoading: false,
      action: () async {
        await _deleteFeedCommentUseCase.execute(
          DeleteFeedCommentInput(
            feedId: feed.id,
            feedAuthorId: feed.author.id,
            commentId: event.commentId,
            currentUser: _viewerAuthor,
          ),
        );
      },
      doOnError: (e) => emit(state.copyWith(errorMessage: '$e')),
    );
  }

  Future<void> _onDeleteFeed(
    FeedDetailDeleteFeed event,
    Emitter<FeedDetailState> emit,
  ) async {
    final feed = state.feed;
    if (feed == null) return;

    await runBlocCatching(
      handleLoading: false,
      action: () async {
        await _deleteFeedUseCase.execute(
          DeleteFeedInput(
            feedId: feed.id,
            currentUser: _viewerAuthor,
          ),
        );
        emit(state.copyWith(feedDeleted: true));
      },
      doOnError: (e) => emit(state.copyWith(errorMessage: '$e')),
    );
  }

  Future<void> _onSubmitComment(
    FeedDetailSubmitComment event,
    Emitter<FeedDetailState> emit,
  ) async {
    final feed = state.feed;
    if (feed == null || !feed.allowComments) return;

    await runBlocCatching(
      handleLoading: false,
      action: () async {
        emit(state.copyWith(isSubmittingComment: true, errorMessage: ''));

        await _submitFeedCommentUseCase.execute(
          SubmitFeedCommentInput(
            feedId: feed.id,
            feedAuthorId: feed.author.id,
            author: _viewerAuthor,
            content: event.content,
            parentId: state.replyParentId,
          ),
        );

        emit(
          state.copyWith(
            isSubmittingComment: false,
            replyParentId: null,
            replyToName: '',
            replyToContent: '',
          ),
        );
      },
      doOnError: (e) {
        emit(state.copyWith(isSubmittingComment: false, errorMessage: '$e'));
      },
    );
  }

  Future<void> _onToggleCommentLike(
    FeedDetailToggleCommentLike event,
    Emitter<FeedDetailState> emit,
  ) async {
    final feed = state.feed;
    if (feed == null) return;

    final target = _findComment(state.comments, event.commentId);
    if (target == null) return;

    final wasLiked = target.isLiked;
    final optimisticCount = wasLiked
        ? (target.likeCount - 1).clamp(0, 999999)
        : target.likeCount + 1;

    emit(
      state.copyWith(
        comments: _patchCommentLike(
          state.comments,
          event.commentId,
          isLiked: !wasLiked,
          likeCount: optimisticCount,
        ),
      ),
    );

    try {
      final output = await _submitFeedCommentLikeUseCase.execute(
        SubmitFeedCommentLikeInput(
          feedId: feed.id,
          commentId: event.commentId,
          currentUser: _viewerAuthor,
        ),
      );
      emit(
        state.copyWith(
          comments: _patchCommentLike(
            state.comments,
            event.commentId,
            isLiked: output.result.isLiked,
            likeCount: output.result.likeCount,
          ),
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          comments: _patchCommentLike(
            state.comments,
            event.commentId,
            isLiked: wasLiked,
            likeCount: target.likeCount,
          ),
          errorMessage: '$e',
        ),
      );
    }
  }

  Future<void> _onToggleLike(
    FeedDetailToggleLike event,
    Emitter<FeedDetailState> emit,
  ) async {
    final feed = state.feed;
    if (feed == null) return;

    final wasLiked = feed.isLiked;
    final optimisticCount = wasLiked
        ? (feed.likeCount - 1).clamp(0, 999999)
        : feed.likeCount + 1;

    emit(
      state.copyWith(
        feed: feed.copyWith(isLiked: !wasLiked, likeCount: optimisticCount),
      ),
    );

    try {
      final output = await _submitFeedLikeUseCase.execute(
        SubmitFeedLikeInput(
          feedId: feed.id,
          currentUser: _viewerAuthor,
        ),
      );
      emit(
        state.copyWith(
          feed: state.feed?.copyWith(
            isLiked: output.result.isLiked,
            likeCount: output.result.likeCount,
          ),
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          feed: feed.copyWith(isLiked: wasLiked, likeCount: feed.likeCount),
          errorMessage: '$e',
        ),
      );
    }
  }

  Comment? _findComment(List<Comment> comments, String commentId) {
    for (final comment in comments) {
      if (comment.id == commentId) return comment;
      final nested = _findComment(comment.replies, commentId);
      if (nested != null) return nested;
    }
    return null;
  }

  List<Comment> _patchCommentLike(
    List<Comment> comments,
    String commentId, {
    required bool isLiked,
    required int likeCount,
  }) {
    return comments
        .map((comment) {
          if (comment.id == commentId) {
            return comment.copyWith(isLiked: isLiked, likeCount: likeCount);
          }
          if (comment.replies.isEmpty) return comment;
          return comment.copyWith(
            replies: _patchCommentLike(
              comment.replies,
              commentId,
              isLiked: isLiked,
              likeCount: likeCount,
            ),
          );
        })
        .toList();
  }
}

@freezed
class _FeedUpdated extends FeedDetailEvent with _$FeedUpdated {
  const factory _FeedUpdated(Feed feed) = __FeedUpdated;
}

@freezed
class _CommentsUpdated extends FeedDetailEvent with _$CommentsUpdated {
  const factory _CommentsUpdated(List<Comment> comments) = __CommentsUpdated;
}

