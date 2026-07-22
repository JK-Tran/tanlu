import 'package:freezed_annotation/freezed_annotation.dart';

import 'feed_author.dart';

part 'feed_comment.freezed.dart';

@freezed
class FeedComment with _$FeedComment {
  const factory FeedComment({
    @Default(0) int id,
    @Default(0) int postId,
    @Default(0) int userId,
    @Default('') String content,
    int? parentId,
    @Default(0) int likeCount,
    @Default(false) bool isLikedByMe,
    DateTime? createdAt,
    DateTime? updatedAt,
    FeedAuthor? author,
    @Default([]) List<FeedComment> replies,
  }) = _FeedComment;
}
