import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tanlu_management/features/feed/domain/entity/author.dart';

part 'feed.freezed.dart';

@freezed
class Feed with _$Feed {
  const factory Feed({
    @Default('') String id,
    @Default(Author()) Author author,
    @Default('') String classId,
    @Default('') String className,
    @Default('') String centerId,
    @Default('') String content,
    @Default([]) List<String> images,
    @Default([]) List<String> videos,
    @Default(0) int likeCount,
    @Default(0) int commentCount,
    @Default(true) bool allowComments,
    @Default(false) bool isLiked,
    @Default(false) bool isPublic,
    @Default('active') String status,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _Feed;
}

@freezed
class FeedResponse with _$FeedResponse {
  const factory FeedResponse({
    @Default([]) List<Feed> feeds,
    String? nextCursor,
    @Default(false) bool hasMore,
  }) = _FeedResponse;
}
