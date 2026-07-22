import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tanlu_management/shared/model/typedef.dart';

import 'feed_author_data.dart';

part 'feed_comment_data.freezed.dart';
part 'feed_comment_data.g.dart';

@freezed
class FeedCommentData with _$FeedCommentData {
  const factory FeedCommentData({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'postId') int? postId,
    @JsonKey(name: 'userId') int? userId,
    @JsonKey(name: 'content') String? content,
    @JsonKey(name: 'parentId') int? parentId,
    @JsonKey(name: 'likeCount') int? likeCount,
    @JsonKey(name: 'isLikedByMe') bool? isLikedByMe,
    @JsonKey(name: 'createdAt') DateTime? createdAt,
    @JsonKey(name: 'updatedAt') DateTime? updatedAt,
    @JsonKey(name: 'author') FeedAuthorData? author,
    @JsonKey(name: 'replies') List<FeedCommentData>? replies,
  }) = _FeedCommentData;

  factory FeedCommentData.fromJson(JSON json) =>
      _$FeedCommentDataFromJson(json);
}
