import 'package:freezed_annotation/freezed_annotation.dart';

part 'feed_author.freezed.dart';

@freezed
class FeedAuthor with _$FeedAuthor {
  const factory FeedAuthor({
    @Default(0) int id,
    @Default('') String fullName,
    String? avatarUrl,
  }) = _FeedAuthor;
}
