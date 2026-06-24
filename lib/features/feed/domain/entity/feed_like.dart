import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tanlu_management/features/feed/domain/entity/author.dart';

part 'feed_like.freezed.dart';

@freezed
class FeedLike with _$FeedLike {
  const factory FeedLike({
    @Default(Author()) Author author,
    DateTime? likedAt,
    DateTime? updatedAt,
  }) = _FeedLike;
}

@freezed
class LikeResult with _$LikeResult {
  const factory LikeResult({
    @Default(false) bool isLiked,
    @Default(0) int likeCount,
  }) = _LikeResult;
}
