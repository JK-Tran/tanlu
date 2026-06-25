import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tanlu_management/features/feed/domain/entity/author.dart';

part 'comment.freezed.dart';

@freezed
class Comment with _$Comment {
  const factory Comment({
    @Default('') String id,
    @Default('') String feedId,
    @Default(Author()) Author author,
    @Default('') String content,
    String? parentId,
    @Default(0) int likeCount,
    @Default(false) bool isLiked,
    @Default(false) bool isFeedAuthor,
    @Default([]) List<Comment> replies,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _Comment;
}
