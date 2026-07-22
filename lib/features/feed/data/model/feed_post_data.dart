import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tanlu_management/shared/model/typedef.dart';

import 'feed_author_data.dart';

part 'feed_post_data.freezed.dart';
part 'feed_post_data.g.dart';

@freezed
class FeedPostData with _$FeedPostData {
  const factory FeedPostData({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'authorId') int? authorId,
    @JsonKey(name: 'centerId') int? centerId,
    @JsonKey(name: 'classId') int? classId,
    @JsonKey(name: 'content') String? content,
    @JsonKey(name: 'images') List<String>? images,
    @JsonKey(name: 'isPublic') bool? isPublic,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'createdAt') DateTime? createdAt,
    @JsonKey(name: 'updatedAt') DateTime? updatedAt,
    @JsonKey(name: 'likeCount') int? likeCount,
    @JsonKey(name: 'isLikedByMe') bool? isLikedByMe,
    @JsonKey(name: 'commentCount') int? commentCount,
    @JsonKey(name: 'author') FeedAuthorData? author,
  }) = _FeedPostData;

  factory FeedPostData.fromJson(JSON json) => _$FeedPostDataFromJson(json);
}
