import 'package:tanlu_management/features/feed/domain/entity/author.dart';
import 'package:tanlu_management/features/feed/domain/entity/comment.dart';
import 'package:tanlu_management/features/feed/domain/entity/feed.dart';
import 'package:tanlu_management/features/feed/domain/entity/feed_like.dart';

abstract class FeedRepository {
  /// Tab Lớp của tôi — bài của GV hiện tại.
  Future<FeedResponse> getClassFeeds({
    required String authorId,
    String? viewerUserId,
    String? cursor,
    int limit = 20,
  });

  /// Tab Khám phá — bài công khai của mọi GV.
  Future<FeedResponse> getExploreFeeds({
    String? viewerUserId,
    String? cursor,
    int limit = 20,
  });

  Future<String> resolveClassName(String classId);

  Future<Feed> getFeed({
    required String feedId,
    required String viewerUserId,
  });

  /// Realtime cập nhật likeCount / commentCount trên feed (trang đầu).
  Stream<List<Feed>> streamClassFeedStats({
    required String authorId,
    int limit = 20,
  });

  Stream<List<Feed>> streamExploreFeedStats({int limit = 20});

  /// Realtime một bài — dùng ở màn chi tiết.
  Stream<Feed> streamFeed({
    required String feedId,
    required String viewerUserId,
  });

  /// Tạo bài + upload ảnh/video lên Storage.
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
  });

  /// Chỉ người tạo bài được sửa.
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
  });

  Future<LikeResult> submitFeedLike({
    required String feedId,
    required Author currentUser,
  });

  Future<List<FeedLike>> getFeedLikes(String feedId);

  Stream<List<Comment>> streamFeedComments({
    required String feedId,
    required String feedAuthorId,
    required String viewerUserId,
  });

  Future<Comment> submitFeedComment({
    required String feedId,
    required String feedAuthorId,
    required Author author,
    required String content,
    String? parentId,
  });

  Future<LikeResult> submitFeedCommentLike({
    required String feedId,
    required String commentId,
    required Author currentUser,
  });

  /// Chỉ người viết comment được sửa.
  Future<Comment> updateFeedComment({
    required String feedId,
    required String feedAuthorId,
    required String commentId,
    required Author currentUser,
    required String content,
  });

  /// Người viết comment hoặc chủ bài được xóa.
  Future<void> deleteFeedComment({
    required String feedId,
    required String feedAuthorId,
    required String commentId,
    required Author currentUser,
  });

  /// Chỉ người tạo bài được xóa (soft delete).
  Future<void> deleteFeed({
    required String feedId,
    required Author currentUser,
  });
}
