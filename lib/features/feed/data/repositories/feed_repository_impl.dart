import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/feed/data/mapper/feed_comment_data_mapper.dart';
import 'package:tanlu_management/features/feed/data/mapper/feed_post_data_mapper.dart';
import 'package:tanlu_management/features/feed/data/sources/feed_api_service.dart';
import 'package:tanlu_management/features/feed/domain/entity/feed_comment.dart';
import 'package:tanlu_management/features/feed/domain/entity/feed_post.dart';
import 'package:tanlu_management/features/feed/domain/repositories/feed_repository.dart';
import 'package:tanlu_management/shared/infrastructure/domain/entity/paged_list.dart';

@LazySingleton(as: FeedRepository)
class FeedRepositoryImpl implements FeedRepository {
  FeedRepositoryImpl(
    this._feedApiService,
    this._feedPostDataMapper,
    this._feedCommentDataMapper,
  );

  final FeedApiService _feedApiService;
  final FeedPostDataMapper _feedPostDataMapper;
  final FeedCommentDataMapper _feedCommentDataMapper;

  @override
  Future<PagedList<FeedPost>> getFeedPosts({
    String? filter,
    required int page,
    required int limit,
  }) async {
    final response = await _feedApiService.getFeedPosts(
      filter: filter,
      page: page,
      limit: limit,
    );

    return PagedList(
      data: _feedPostDataMapper.mapToListEntity(response?.data),
      totalItems: response?.pagination?.totalItems ?? 0,
    );
  }

  @override
  Future<FeedPost> getFeedPost(int id) async {
    final response = await _feedApiService.getFeedPost(id);
    return _feedPostDataMapper.mapToEntity(response);
  }

  @override
  Future<String?> uploadMedia(String path) async {
    return _feedApiService.uploadMedia(path);
  }

  @override
  Future<void> createFeedPost({
    required String content,
    List<String>? images,
    required bool isPublic,
    int? classId,
  }) async {
    await _feedApiService.createFeedPost(
      content: content,
      images: images,
      isPublic: isPublic,
      classId: classId,
    );
  }

  @override
  Future<void> updateFeedPost({
    required int id,
    String? content,
    List<String>? images,
    bool? isPublic,
  }) async {
    await _feedApiService.updateFeedPost(
      id: id,
      content: content,
      images: images,
      isPublic: isPublic,
    );
  }

  @override
  Future<void> deleteFeedPost(int id) async {
    await _feedApiService.deleteFeedPost(id);
  }

  @override
  Future<PagedList<FeedComment>> getFeedComments({
    required int postId,
    int page = 1,
    int limit = 20,
    int? highlightCommentId,
  }) async {
    final response = await _feedApiService.getFeedComments(
      postId: postId,
      page: page,
      limit: limit,
      highlightCommentId: highlightCommentId,
    );
    return PagedList(
      data: _feedCommentDataMapper.mapToListEntity(response?.data),
      totalItems: response?.pagination?.totalItems ?? 0,
    );
  }

  @override
  Future<void> createFeedComment({
    required int postId,
    required String content,
    int? parentId,
  }) async {
    await _feedApiService.createFeedComment(
      postId: postId,
      content: content,
      parentId: parentId,
    );
  }

  @override
  Future<void> togglePostLike(int postId) async {
    await _feedApiService.togglePostLike(postId);
  }

  @override
  Future<void> toggleCommentLike(int commentId) async {
    await _feedApiService.toggleCommentLike(commentId);
  }
}
