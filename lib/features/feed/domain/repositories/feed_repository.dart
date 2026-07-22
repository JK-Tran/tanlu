import 'package:tanlu_management/features/feed/domain/entity/feed_comment.dart';
import 'package:tanlu_management/features/feed/domain/entity/feed_post.dart';
import 'package:tanlu_management/shared/infrastructure/domain/entity/paged_list.dart';

abstract class FeedRepository {
  Future<PagedList<FeedPost>> getFeedPosts({
    String? filter,
    required int page,
    required int limit,
  });

  Future<FeedPost> getFeedPost(int id);

  Future<String?> uploadMedia(String path);

  Future<void> createFeedPost({
    required String content,
    List<String>? images,
    required bool isPublic,
    int? classId,
  });

  Future<void> updateFeedPost({
    required int id,
    String? content,
    List<String>? images,
    bool? isPublic,
  });

  Future<void> deleteFeedPost(int id);

  Future<PagedList<FeedComment>> getFeedComments({
    required int postId,
    int page = 1,
    int limit = 20,
    int? highlightCommentId,
  });

  Future<void> createFeedComment({
    required int postId,
    required String content,
    int? parentId,
  });

  Future<void> togglePostLike(int postId);

  Future<void> toggleCommentLike(int commentId);
}
