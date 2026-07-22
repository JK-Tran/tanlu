import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/feed/data/model/feed_comment_data.dart';
import 'package:tanlu_management/features/feed/data/model/feed_post_data.dart';
import 'package:tanlu_management/shared/infrastructure/data/api/client/auth_app_server_api_client.dart';
import 'package:tanlu_management/shared/infrastructure/data/api/client/base/rest_api_client.dart';
import 'package:tanlu_management/shared/infrastructure/data/api/mapper/base_success_response_mapper.dart';
import 'package:tanlu_management/shared/infrastructure/data/api/model/data_response.dart';
import 'package:tanlu_management/shared/model/typedef.dart';

@LazySingleton()
class FeedApiService {
  FeedApiService(this._authAppServerApiClient);

  final AuthAppServerApiClient _authAppServerApiClient;

  Future<DataListResponse<FeedPostData>?> getFeedPosts({
    String? filter,
    required int page,
    required int limit,
  }) async {
    final Map<String, dynamic> queryParameters = {'page': page, 'limit': limit};
    if (filter != null && filter.isNotEmpty) {
      queryParameters['filter'] = filter;
    }

    return _authAppServerApiClient.request(
      method: RestMethod.get,
      successResponseMapperType: SuccessResponseMapperType.dataJsonArray,
      path: '/feeds',
      queryParameters: queryParameters,
      decoder: (json) => FeedPostData.fromJson(json as JSON),
    );
  }

  Future<FeedPostData?> getFeedPost(int id) async {
    return _authAppServerApiClient.request(
      method: RestMethod.get,
      successResponseMapperType: SuccessResponseMapperType.jsonObject,
      path: '/feeds/$id',
      decoder: (json) => FeedPostData.fromJson(json as JSON),
    );
  }

  Future<String?> uploadMedia(String path) async {
    final formData = FormData.fromMap({
      'file': await MultipartFile.fromFile(path),
      'folder': 'feed',
    });

    final response = await _authAppServerApiClient
        .request<Map<String, dynamic>, Map<String, dynamic>>(
          method: RestMethod.post,
          successResponseMapperType: SuccessResponseMapperType.jsonObject,
          path: '/upload',
          body: formData,
          decoder: (json) => json as JSON,
        );
    return response?['url'] as String?;
  }

  Future<void> createFeedPost({
    required String content,
    List<String>? images,
    required bool isPublic,
    int? classId,
  }) async {
    final Map<String, dynamic> body = {
      'content': content,
      'isPublic': isPublic,
      'images': ?images,
      'classId': ?classId,
    };
    _authAppServerApiClient.request(
      method: RestMethod.post,
      successResponseMapperType: SuccessResponseMapperType.jsonObject,
      path: '/feeds',
      body: body,
    );
  }

  Future<void> updateFeedPost({
    required int id,
    String? content,
    List<String>? images,
    bool? isPublic,
  }) async {
    final Map<String, dynamic> body = {
      'content': ?content,
      'images': ?images,
      'isPublic': ?isPublic,
    };

    _authAppServerApiClient.request(
      method: RestMethod.put,
      successResponseMapperType: SuccessResponseMapperType.jsonObject,
      path: '/feeds/$id',
      body: body,
    );
  }

  Future<void> deleteFeedPost(int id) async {
    _authAppServerApiClient.request(
      method: RestMethod.delete,
      successResponseMapperType: SuccessResponseMapperType.jsonObject,
      path: '/feeds/$id',
    );
  }

  Future<DataListResponse<FeedCommentData>?> getFeedComments({
    required int postId,
    required int page,
    required int limit,
    int? highlightCommentId,
  }) async {
    final Map<String, dynamic> queryParameters = {
      'page': page,
      'limit': limit,
    };
    if (highlightCommentId != null) {
      queryParameters['highlight_comment_id'] = highlightCommentId;
    }

    return _authAppServerApiClient.request(
      method: RestMethod.get,
      successResponseMapperType: SuccessResponseMapperType.dataJsonArray,
      path: '/feeds/$postId/comments',
      queryParameters: queryParameters,
      decoder: (json) => FeedCommentData.fromJson(json as JSON),
    );
  }

  Future<void> createFeedComment({
    required int postId,
    required String content,
    int? parentId,
  }) async {
    final Map<String, dynamic> body = {
      'content': content,
      'parentId': parentId,
    };
    await _authAppServerApiClient.request(
      method: RestMethod.post,
      successResponseMapperType: SuccessResponseMapperType.jsonObject,
      path: '/feeds/$postId/comments',
      body: body,
    );
  }

  Future<void> togglePostLike(int postId) async {
    await _authAppServerApiClient.request(
      method: RestMethod.post,
      successResponseMapperType: SuccessResponseMapperType.jsonObject,
      path: '/feeds/$postId/like',
    );
  }

  Future<void> toggleCommentLike(int commentId) async {
    await _authAppServerApiClient.request(
      method: RestMethod.post,
      successResponseMapperType: SuccessResponseMapperType.jsonObject,
      path: '/feeds/comments/$commentId/like',
    );
  }
}
