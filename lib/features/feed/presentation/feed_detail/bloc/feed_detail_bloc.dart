import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/core/base/base_bloc.dart';
import 'package:tanlu_management/features/feed/domain/entity/feed_author.dart';
import 'package:tanlu_management/features/feed/domain/entity/feed_comment.dart';
import 'package:tanlu_management/features/feed/domain/entity/feed_post.dart';
import 'package:tanlu_management/features/feed/domain/usecases/create_feed_comment_use_case.dart';
import 'package:tanlu_management/features/feed/domain/usecases/delete_feed_post_use_case.dart';
import 'package:tanlu_management/features/feed/domain/usecases/get_feed_comments_use_case.dart';
import 'package:tanlu_management/features/feed/domain/usecases/get_feed_post_use_case.dart';
import 'package:tanlu_management/features/feed/domain/usecases/toggle_comment_like_use_case.dart';
import 'package:tanlu_management/features/feed/domain/usecases/toggle_post_like_use_case.dart';
import 'package:tanlu_management/shared/services/socket/global_web_socket_service.dart';
import 'package:tanlu_management/shared/utils/error_mapper.dart';


part 'feed_detail_bloc.freezed.dart';
part 'feed_detail_event.dart';
part 'feed_detail_state.dart';

@injectable
class FeedDetailBloc extends BaseBloc<FeedDetailEvent, FeedDetailState> {
  FeedDetailBloc(
    this._getFeedPostUseCase,
    this._deleteFeedPostUseCase,
    this._getFeedCommentsUseCase,
    this._createFeedCommentUseCase,
    this._togglePostLikeUseCase,
    this._toggleCommentLikeUseCase,
    this._globalWebSocketService,
  ) : super(FeedDetailState.initial()) {
    on<FeedDetailStarted>(_onStarted);
    on<FeedDetailDeleteFeed>(_onDeleteFeed);
    on<FeedDetailLoadComments>(_onLoadComments);
    on<FeedDetailSubmitComment>(_onSubmitComment);
    on<FeedDetailToggleLike>(_onToggleLike);
    on<FeedDetailToggleCommentLike>(_onToggleCommentLike);
    on<FeedDetailSocketNewComment>(_onSocketNewComment);
    on<FeedDetailSocketPostLikeUpdated>(_onSocketPostLikeUpdated);
    on<FeedDetailSocketCommentLikeUpdated>(_onSocketCommentLikeUpdated);
  }

  final GetFeedPostUseCase _getFeedPostUseCase;
  final DeleteFeedPostUseCase _deleteFeedPostUseCase;
  final GetFeedCommentsUseCase _getFeedCommentsUseCase;
  final CreateFeedCommentUseCase _createFeedCommentUseCase;
  final TogglePostLikeUseCase _togglePostLikeUseCase;
  final ToggleCommentLikeUseCase _toggleCommentLikeUseCase;
  final GlobalWebSocketService _globalWebSocketService;

  StreamSubscription<AppWebSocketEvent>? _socketSub;

  Future<void> _onStarted(
    FeedDetailStarted event,
    Emitter<FeedDetailState> emit,
  ) async {
    emit(
      state.copyWith(
        feed: event.feed,
        viewerUserId: event.viewerUserId,
        viewerFullName: event.viewerFullName,
        viewerAvatar: event.viewerAvatar,
        viewerRole: event.viewerRole,
        highlightCommentId: event.highlightCommentId,
        errorMessage: '',
        isLoadingFeed: event.feed == null,
      ),
    );

    int feedId = event.feed?.id ?? event.postId ?? 0;

    if (event.feed == null && event.postId != null) {
      await runBlocCatching(
        handleLoading: false,
        action: () async {
          final output = await _getFeedPostUseCase.execute(
            GetFeedPostInput(id: event.postId!),
          );
          feedId = output.post.id;
          emit(state.copyWith(feed: output.post, isLoadingFeed: false));
          _subscribeAndLoad(feedId, event.openComments);
        },
        doOnError: (e) {
          emit(state.copyWith(isLoadingFeed: false, errorMessage: 'Không thể tải bài viết'));
        },
      );
    } else if (feedId != 0) {
      _subscribeAndLoad(feedId, event.openComments);
    }
  }

  void _subscribeAndLoad(int feedId, bool openComments) {
    // Subscribe to WebSocket channel
    _globalWebSocketService.subscribe('feed_post_$feedId');
    _socketSub = _globalWebSocketService.events.listen(
      (e) => _onRealtimeEvent(e, feedId),
    );

    add(const FeedDetailLoadComments());
  }

  void _onRealtimeEvent(AppWebSocketEvent event, int postId) {
    if (event.channel != 'feed_post_$postId') return;

    switch (event.event) {
      case 'NEW_COMMENT':
        add(FeedDetailSocketNewComment(data: event.data));
        break;
      case 'POST_LIKE_UPDATED':
        add(
          FeedDetailSocketPostLikeUpdated(
            totalLikes: (event.data['totalLikes'] as num?)?.toInt() ?? 0,
          ),
        );
        break;
      case 'COMMENT_LIKE_UPDATED':
        add(
          FeedDetailSocketCommentLikeUpdated(
            commentId: (event.data['commentId'] as num?)?.toInt() ?? 0,
            totalLikes: (event.data['totalLikes'] as num?)?.toInt() ?? 0,
          ),
        );
        break;
    }
  }

  Future<void> _onLoadComments(
    FeedDetailLoadComments event,
    Emitter<FeedDetailState> emit,
  ) async {
    final feed = state.feed;
    if (feed == null) return;

    emit(state.copyWith(isLoadingComments: true, errorMessage: ''));

    await runBlocCatching(
      handleLoading: false,
      action: () async {
        final result = await _getFeedCommentsUseCase.execute(
          GetFeedCommentsInput(
            postId: feed.id,
            highlightCommentId: event.highlightCommentId ?? state.highlightCommentId,
          ),
        );
        emit(
          state.copyWith(
            isLoadingComments: false,
            // Reverse the list to show oldest comments first (top-to-bottom)
            comments: result.comments.data.reversed.toList(),
          ),
        );
      },
      doOnError: (e) {
        emit(
          state.copyWith(isLoadingComments: false, errorMessage: ErrorMapper.getMessage(e)),
        );
      },
    );
  }

  Future<void> _onSubmitComment(
    FeedDetailSubmitComment event,
    Emitter<FeedDetailState> emit,
  ) async {
    final feed = state.feed;
    if (feed == null || event.content.trim().isEmpty) return;

    emit(state.copyWith(isSubmittingComment: true, errorMessage: ''));

    await runBlocCatching(
      handleLoading: false,
      action: () async {
        await _createFeedCommentUseCase.execute(
          CreateFeedCommentInput(
            postId: feed.id,
            content: event.content.trim(),
            parentId: event.parentId,
          ),
        );
        emit(state.copyWith(isSubmittingComment: false));
        // Force a reload to guarantee the UI is in sync with the database,
        // just in case the socket is slow or misses the event.
        add(const FeedDetailLoadComments());
      },
      doOnError: (e) {
        emit(
          state.copyWith(
            isSubmittingComment: false,
            errorMessage: ErrorMapper.getMessage(e),
          ),
        );
      },
    );
  }

  Future<void> _onToggleLike(
    FeedDetailToggleLike event,
    Emitter<FeedDetailState> emit,
  ) async {
    final feed = state.feed;
    if (feed == null) return;

    // Optimistic UI update
    final isLiked = feed.isLikedByMe;
    final newCount = isLiked ? feed.likeCount - 1 : feed.likeCount + 1;
    emit(
      state.copyWith(
        feed: feed.copyWith(
          isLikedByMe: !isLiked,
          likeCount: newCount < 0 ? 0 : newCount,
        ),
      ),
    );

    await runBlocCatching(
      handleLoading: false,
      action: () async {
        await _togglePostLikeUseCase.execute(
          TogglePostLikeInput(postId: feed.id),
        );
        // Server will broadcast POST_LIKE_UPDATED → real count will come via socket
      },
      doOnError: (e) {
        // Roll back optimistic update on failure
        emit(state.copyWith(feed: feed, errorMessage: ErrorMapper.getMessage(e)));
      },
    );
  }

  Future<void> _onToggleCommentLike(
    FeedDetailToggleCommentLike event,
    Emitter<FeedDetailState> emit,
  ) async {
    // Optimistic UI update for the comment
    final updatedComments = _toggleCommentLikeOptimistic(
      state.comments,
      event.commentId,
    );
    emit(state.copyWith(comments: updatedComments));

    await runBlocCatching(
      handleLoading: false,
      action: () async {
        await _toggleCommentLikeUseCase.execute(
          ToggleCommentLikeInput(commentId: event.commentId),
        );
      },
      doOnError: (e) {
        emit(state.copyWith(errorMessage: ErrorMapper.getMessage(e)));
      },
    );
  }

  // ------------ Socket event handlers ------------

  void _onSocketNewComment(
    FeedDetailSocketNewComment event,
    Emitter<FeedDetailState> emit,
  ) {
    try {
      final data = event.data;
      final parentId = data['parentId'] as int?;
      final authorData = data['author'] as Map<String, dynamic>?;
      final newComment = FeedComment(
        id: (data['id'] as num?)?.toInt() ?? 0,
        postId: (data['feedId'] as num?)?.toInt() ?? state.feed?.id ?? 0,
        userId: (data['authorId'] as num?)?.toInt() ?? 0,
        content: data['content'] as String? ?? '',
        parentId: parentId,
        likeCount: 0,
        isLikedByMe: false,
        createdAt: data['createdAt'] != null
            ? DateTime.tryParse(data['createdAt'] as String)
            : null,
        author: authorData != null
            ? FeedAuthor(
                id: (authorData['id'] as num?)?.toInt() ?? 0,
                fullName: authorData['fullName'] as String? ?? '',
                avatarUrl: authorData['avatarUrl'] as String? ?? '',
              )
            : null,
      );

      final updatedComments = _insertComment(state.comments, newComment);
      emit(state.copyWith(comments: updatedComments));
    } catch (e) {
      debugPrint('[FeedDetailBloc] Socket new comment parse error: $e');
    }
  }

  void _onSocketPostLikeUpdated(
    FeedDetailSocketPostLikeUpdated event,
    Emitter<FeedDetailState> emit,
  ) {
    final feed = state.feed;
    if (feed == null) return;
    emit(state.copyWith(feed: feed.copyWith(likeCount: event.totalLikes)));
  }

  void _onSocketCommentLikeUpdated(
    FeedDetailSocketCommentLikeUpdated event,
    Emitter<FeedDetailState> emit,
  ) {
    final updatedComments = _updateCommentLikes(
      state.comments,
      event.commentId,
      event.totalLikes,
    );
    emit(state.copyWith(comments: updatedComments));
  }

  // ------------ Delete feed ------------

  Future<void> _onDeleteFeed(
    FeedDetailDeleteFeed event,
    Emitter<FeedDetailState> emit,
  ) async {
    final feed = state.feed;
    if (feed == null) return;

    await runBlocCatching(
      handleLoading: true,
      action: () async {
        await _deleteFeedPostUseCase.execute(DeleteFeedPostInput(id: feed.id));
        emit(state.copyWith(feedDeleted: true));
      },
      doOnError: (e) {
        emit(state.copyWith(errorMessage: ErrorMapper.getMessage(e)));
      },
    );
  }

  // ------------ Helpers ------------

  List<FeedComment> _insertComment(
    List<FeedComment> comments,
    FeedComment newComment,
  ) {
    if (newComment.parentId == null) {
      // Root comment – append to bottom
      return [...comments, newComment];
    }
    
    // Reply – insert into the correct parent's replies list
    bool inserted = false;
    final newComments = comments.map((c) {
      if (c.id == newComment.parentId) {
        inserted = true;
        return c.copyWith(replies: [...c.replies, newComment]);
      }
      return c;
    }).toList();

    if (inserted) return newComments;

    // If not found in root, it might be a reply to a reply (nested).
    // Find the root comment that contains this parent in its replies and append there.
    return comments.map((c) {
      final hasParentInReplies = c.replies.any((r) => r.id == newComment.parentId);
      if (hasParentInReplies) {
        // Prevent duplicate insertion if socket already added it
        if (!c.replies.any((r) => r.id == newComment.id)) {
          return c.copyWith(replies: [...c.replies, newComment]);
        }
      }
      return c;
    }).toList();
  }

  List<FeedComment> _toggleCommentLikeOptimistic(
    List<FeedComment> comments,
    int commentId,
  ) {
    return comments.map((c) {
      if (c.id == commentId) {
        final delta = c.isLikedByMe ? -1 : 1;
        return c.copyWith(
          isLikedByMe: !c.isLikedByMe,
          likeCount: (c.likeCount + delta).clamp(0, 999999),
        );
      }
      final updatedReplies = c.replies.map((r) {
        if (r.id == commentId) {
          final delta = r.isLikedByMe ? -1 : 1;
          return r.copyWith(
            isLikedByMe: !r.isLikedByMe,
            likeCount: (r.likeCount + delta).clamp(0, 999999),
          );
        }
        return r;
      }).toList();
      return c.copyWith(replies: updatedReplies);
    }).toList();
  }

  List<FeedComment> _updateCommentLikes(
    List<FeedComment> comments,
    int commentId,
    int totalLikes,
  ) {
    return comments.map((c) {
      if (c.id == commentId) return c.copyWith(likeCount: totalLikes);
      final updatedReplies = c.replies.map((r) {
        if (r.id == commentId) return r.copyWith(likeCount: totalLikes);
        return r;
      }).toList();
      return c.copyWith(replies: updatedReplies);
    }).toList();
  }

  @override
  Future<void> close() {
    _socketSub?.cancel();
    if (state.feed != null) {
      _globalWebSocketService.unsubscribe('feed_post_${state.feed!.id}');
    }
    return super.close();
  }
}
