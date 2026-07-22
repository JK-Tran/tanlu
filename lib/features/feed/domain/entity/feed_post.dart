import 'package:freezed_annotation/freezed_annotation.dart';

import 'feed_author.dart';

part 'feed_post.freezed.dart';

@freezed
class FeedPost with _$FeedPost {
  const factory FeedPost({
    @Default(0) int id,
    @Default(0) int authorId,
    @Default(0) int centerId,
    @Default(0) int classId,
    @Default('') String content,
    @Default([]) List<String> images,
    @Default(false) bool isPublic,
    @Default('') String status,
    DateTime? createdAt,
    DateTime? updatedAt,
    @Default(0) int likeCount,
    @Default(false) bool isLikedByMe,
    @Default(0) int commentCount,
    FeedAuthor? author,
  }) = _FeedPost;
}
