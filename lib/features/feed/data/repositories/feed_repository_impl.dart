import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/feed/data/mapper/comment_data_mapper.dart';
import 'package:tanlu_management/features/feed/data/mapper/feed_data_mapper.dart';
import 'package:tanlu_management/features/feed/data/mapper/feed_like_data_mapper.dart';
import 'package:tanlu_management/features/feed/data/model/comment_data.dart';
import 'package:tanlu_management/features/feed/data/model/feed_data.dart';
import 'package:tanlu_management/features/feed/data/model/feed_like_data.dart';
import 'package:tanlu_management/features/feed/data/sources/feed_firestore_source.dart';
import 'package:tanlu_management/features/feed/data/sources/feed_storage_source.dart';
import 'package:tanlu_management/features/feed/domain/entity/author.dart';
import 'package:tanlu_management/features/feed/domain/entity/comment.dart';
import 'package:tanlu_management/features/feed/domain/entity/feed.dart';
import 'package:tanlu_management/features/feed/domain/entity/feed_like.dart';
import 'package:tanlu_management/features/feed/domain/repositories/feed_repository.dart';
import 'package:tanlu_management/features/person/data/sources/person_firestore_source.dart';
import 'package:tanlu_management/shared/network/exceptions/app_exceptions.dart';

@LazySingleton(as: FeedRepository)
class FeedRepositoryImpl implements FeedRepository {
  FeedRepositoryImpl(
    this._firestoreSource,
    this._storageSource,
    this._personFirestoreSource,
    this._feedMapper,
    this._commentMapper,
    this._feedLikeMapper,
  );

  final FeedFirestoreSource _firestoreSource;
  final FeedStorageSource _storageSource;
  final PersonFirestoreSource _personFirestoreSource;
  final FeedDataMapper _feedMapper;
  final CommentDataMapper _commentMapper;
  final FeedLikeDataMapper _feedLikeMapper;

  @override
  Future<FeedResponse> getClassFeeds({
    required String authorId,
    String? viewerUserId,
    String? cursor,
    int limit = 20,
  }) async {
    final page = await _firestoreSource.queryClassFeeds(
      authorId: authorId,
      cursor: cursor,
      limit: limit,
    );

    final items = await _enrichFeedsWithLikeStatus(
      _feedMapper.mapToListEntity(page.items),
      viewerUserId ?? authorId,
    );

    return FeedResponse(
      feeds: items,
      nextCursor: page.nextCursor,
      hasMore: page.hasMore,
    );
  }

  @override
  Future<FeedResponse> getExploreFeeds({
    String? viewerUserId,
    String? cursor,
    int limit = 20,
  }) async {
    final page = await _firestoreSource.queryExploreFeeds(
      cursor: cursor,
      limit: limit,
    );

    final items = await _enrichFeedsWithLikeStatus(
      _feedMapper.mapToListEntity(page.items),
      viewerUserId ?? '',
    );

    return FeedResponse(
      feeds: items,
      nextCursor: page.nextCursor,
      hasMore: page.hasMore,
    );
  }

  @override
  Future<String> resolveClassName(String classId) =>
      _personFirestoreSource.getClassNameById(classId);

  @override
  Future<Feed> getFeed({
    required String feedId,
    required String viewerUserId,
  }) async {
    final data = await _firestoreSource.getFeed(feedId);
    if (data == null || (data.status ?? 'active') == 'deleted') {
      throw StateError('Feed not found');
    }

    final feed = _feedMapper.mapToEntity(data);
    if (viewerUserId.isEmpty) return feed;

    final liked = await _firestoreSource.hasFeedLiked(
      feedId: feedId,
      userId: viewerUserId,
    );
    return feed.copyWith(isLiked: liked);
  }

  @override
  Stream<List<Feed>> streamClassFeedStats({
    required String authorId,
    int limit = 20,
  }) {
    return _firestoreSource
        .streamClassFeeds(authorId: authorId, limit: limit)
        .map(_feedMapper.mapToListEntity);
  }

  @override
  Stream<List<Feed>> streamExploreFeedStats({int limit = 20}) {
    return _firestoreSource
        .streamExploreFeeds(limit: limit)
        .map(_feedMapper.mapToListEntity);
  }

  @override
  Stream<Feed> streamFeed({
    required String feedId,
    required String viewerUserId,
  }) async* {
    await for (final data in _firestoreSource.streamFeed(feedId)) {
      if (data == null || (data.status ?? 'active') == 'deleted') continue;

      var feed = _feedMapper.mapToEntity(data);
      if (viewerUserId.isNotEmpty) {
        final liked = await _firestoreSource.hasFeedLiked(
          feedId: feedId,
          userId: viewerUserId,
        );
        feed = feed.copyWith(isLiked: liked);
      }
      yield feed;
    }
  }

  @override
  Future<Feed> submitFeed({
    required String authorId,
    required String fullName,
    required String avatar,
    required String role,
    required String classId,
    required String className,
    required String centerId,
    required String content,
    required bool isPublic,
    required bool allowComments,
    required List<String> localImagePaths,
    required List<String> localVideoPaths,
  }) async {
    final feedId = _firestoreSource.generateId();
    final resolvedClassName = className.isNotEmpty
        ? className
        : await _personFirestoreSource.getClassNameById(classId);

    final uploadResults = await Future.wait([
      localImagePaths.isEmpty
          ? Future<List<String>>.value(const [])
          : _storageSource.uploadImages(
              teacherId: authorId,
              feedId: feedId,
              localPaths: localImagePaths,
            ),
      localVideoPaths.isEmpty
          ? Future<List<String>>.value(const [])
          : _storageSource.uploadVideos(
              teacherId: authorId,
              feedId: feedId,
              localPaths: localVideoPaths,
            ),
    ]);
    final images = uploadResults[0];
    final videos = uploadResults[1];

    final data = FeedData(
      authorId: authorId,
      fullName: fullName,
      avatar: avatar.isEmpty ? null : avatar,
      role: role,
      classId: classId,
      className: resolvedClassName.isNotEmpty ? resolvedClassName : classId,
      centerId: centerId,
      content: content,
      images: images,
      videos: videos,
      likeCount: 0,
      commentCount: 0,
      allowComments: allowComments,
      isPublic: isPublic,
      status: 'active',
    );

    await _firestoreSource.submitFeed(id: feedId, data: data);

    return _feedMapper.mapToEntity(
      data.copyWith(id: feedId, createdAt: DateTime.now()),
    );
  }

  @override
  Future<Feed> updateFeed({
    required String feedId,
    required Author currentUser,
    required String content,
    required bool isPublic,
    required bool allowComments,
    required List<String> keptImageUrls,
    required List<String> keptVideoUrls,
    required List<String> localImagePaths,
    required List<String> localVideoPaths,
  }) async {
    final existing = await _firestoreSource.getFeed(feedId);
    if (existing == null || (existing.status ?? 'active') == 'deleted') {
      throw StateError('Feed not found');
    }

    final authorId = existing.authorId ?? '';
    if (authorId != currentUser.id) {
      throw const UnauthorizedException('Bạn không có quyền sửa bài viết này');
    }

    final uploadResults = await Future.wait([
      localImagePaths.isEmpty
          ? Future<List<String>>.value(const [])
          : _storageSource.uploadImages(
              teacherId: authorId,
              feedId: feedId,
              localPaths: localImagePaths,
              startIndex: keptImageUrls.length,
            ),
      localVideoPaths.isEmpty
          ? Future<List<String>>.value(const [])
          : _storageSource.uploadVideos(
              teacherId: authorId,
              feedId: feedId,
              localPaths: localVideoPaths,
              startIndex: keptVideoUrls.length,
            ),
    ]);
    final newImages = uploadResults[0];
    final newVideos = uploadResults[1];

    final images = [...keptImageUrls, ...newImages];
    final videos = [...keptVideoUrls, ...newVideos];

    await _firestoreSource.updateFeed(
      feedId: feedId,
      content: content,
      images: images,
      videos: videos,
      isPublic: isPublic,
      allowComments: allowComments,
    );

    return getFeed(feedId: feedId, viewerUserId: currentUser.id);
  }

  @override
  Future<LikeResult> submitFeedLike({
    required String feedId,
    required Author currentUser,
  }) async {
    final result = await _firestoreSource.submitFeedLike(
      feedId: feedId,
      userId: currentUser.id,
      likeData: _toLikeData(currentUser),
    );

    return LikeResult(
      isLiked: result.isLiked,
      likeCount: result.likeCount,
    );
  }

  @override
  Future<List<FeedLike>> getFeedLikes(String feedId) async {
    final items = await _firestoreSource.getFeedLikes(feedId);
    return _feedLikeMapper.mapToListEntity(items);
  }

  @override
  Stream<List<Comment>> streamFeedComments({
    required String feedId,
    required String feedAuthorId,
    required String viewerUserId,
  }) {
    return _firestoreSource.streamComments(feedId).asyncMap((items) async {
      final likedIds = await _firestoreSource.getCommentLikedIds(
        feedId: feedId,
        userId: viewerUserId,
        commentIds: items.map((e) => e.id ?? '').where((id) => id.isNotEmpty).toList(),
      );

      return _buildCommentTree(
        items: items,
        feedId: feedId,
        feedAuthorId: feedAuthorId,
        likedCommentIds: likedIds,
      );
    });
  }

  @override
  Future<Comment> submitFeedComment({
    required String feedId,
    required String feedAuthorId,
    required Author author,
    required String content,
    String? parentId,
  }) async {
    final commentData = CommentData(
      authorId: author.id,
      fullName: author.fullName,
      avatar: author.avatar.isEmpty ? null : author.avatar,
      role: author.role,
      content: content,
      parentId: parentId,
      likeCount: 0,
    );

    final commentId = await _firestoreSource.addComment(
      feedId: feedId,
      comment: commentData,
    );

    return _commentMapper.mapToEntityWithContext(
      commentData.copyWith(id: commentId, createdAt: DateTime.now()),
      feedId: feedId,
      feedAuthorId: feedAuthorId,
    );
  }

  @override
  Future<LikeResult> submitFeedCommentLike({
    required String feedId,
    required String commentId,
    required Author currentUser,
  }) async {
    final result = await _firestoreSource.submitFeedCommentLike(
      feedId: feedId,
      commentId: commentId,
      userId: currentUser.id,
      likeData: _toLikeData(currentUser),
    );

    return LikeResult(
      isLiked: result.isLiked,
      likeCount: result.likeCount,
    );
  }

  @override
  Future<Comment> updateFeedComment({
    required String feedId,
    required String feedAuthorId,
    required String commentId,
    required Author currentUser,
    required String content,
  }) async {
    final existing = await _firestoreSource.getComment(
      feedId: feedId,
      commentId: commentId,
    );
    if (existing == null) {
      throw StateError('Comment not found');
    }

    final authorId = existing.authorId ?? '';
    if (authorId != currentUser.id) {
      throw const UnauthorizedException('Bạn không có quyền sửa bình luận này');
    }

    await _firestoreSource.updateComment(
      feedId: feedId,
      commentId: commentId,
      content: content,
    );

    return _commentMapper.mapToEntityWithContext(
      existing.copyWith(
        content: content,
        updatedAt: DateTime.now(),
      ),
      feedId: feedId,
      feedAuthorId: feedAuthorId,
    );
  }

  @override
  Future<void> deleteFeedComment({
    required String feedId,
    required String feedAuthorId,
    required String commentId,
    required Author currentUser,
  }) async {
    final existing = await _firestoreSource.getComment(
      feedId: feedId,
      commentId: commentId,
    );
    if (existing == null) {
      throw StateError('Comment not found');
    }

    final authorId = existing.authorId ?? '';
    final isCommentAuthor = authorId == currentUser.id;
    final isFeedAuthor = feedAuthorId == currentUser.id;
    if (!isCommentAuthor && !isFeedAuthor) {
      throw const UnauthorizedException('Bạn không có quyền xóa bình luận này');
    }

    await _firestoreSource.deleteComment(
      feedId: feedId,
      commentId: commentId,
    );
  }

  @override
  Future<void> deleteFeed({
    required String feedId,
    required Author currentUser,
  }) async {
    final data = await _firestoreSource.getFeed(feedId);
    if (data == null || (data.status ?? 'active') == 'deleted') {
      throw StateError('Feed not found');
    }

    if ((data.authorId ?? '') != currentUser.id) {
      throw const UnauthorizedException('Bạn không có quyền xóa bài viết này');
    }

    await _firestoreSource.deleteFeed(feedId);
  }

  Future<List<Feed>> _enrichFeedsWithLikeStatus(
    List<Feed> feeds,
    String viewerUserId,
  ) async {
    if (viewerUserId.isEmpty || feeds.isEmpty) return feeds;

    final likedIds = await _firestoreSource.getFeedLikedIds(
      feedIds: feeds.map((feed) => feed.id).where((id) => id.isNotEmpty).toList(),
      userId: viewerUserId,
    );

    return feeds
        .map((feed) => feed.copyWith(isLiked: likedIds.contains(feed.id)))
        .toList();
  }

  List<Comment> _buildCommentTree({
    required List<CommentData> items,
    required String feedId,
    required String feedAuthorId,
    required Set<String> likedCommentIds,
  }) {
    final flat = items
        .map(
          (data) => _commentMapper.mapToEntityWithContext(
            data,
            feedId: feedId,
            feedAuthorId: feedAuthorId,
            isLiked: likedCommentIds.contains(data.id),
          ),
        )
        .toList();

    final byId = {for (final comment in flat) comment.id: comment};
    final childrenByParent = <String, List<Comment>>{};

    for (final comment in flat) {
      final parentId = comment.parentId;
      if (parentId != null &&
          parentId.isNotEmpty &&
          byId.containsKey(parentId)) {
        childrenByParent.putIfAbsent(parentId, () => []).add(comment);
      }
    }

    for (final children in childrenByParent.values) {
      children.sort(
        (a, b) => (a.createdAt ?? DateTime(0)).compareTo(
          b.createdAt ?? DateTime(0),
        ),
      );
    }

    Comment attachReplies(Comment comment) {
      final children = childrenByParent[comment.id] ?? const <Comment>[];
      return comment.copyWith(
        replies: children.map(attachReplies).toList(),
      );
    }

    final roots = flat
        .where(
          (comment) =>
              comment.parentId == null ||
              comment.parentId!.isEmpty ||
              !byId.containsKey(comment.parentId),
        )
        .toList()
      ..sort(
        (a, b) => (a.createdAt ?? DateTime(0)).compareTo(
          b.createdAt ?? DateTime(0),
        ),
      );

    return roots.map(attachReplies).toList();
  }

  FeedLikeData _toLikeData(Author author) {
    return FeedLikeData(
      userId: author.id,
      fullName: author.fullName,
      avatar: author.avatar.isEmpty ? null : author.avatar,
      role: author.role,
    );
  }
}
