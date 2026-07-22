// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_comment_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FeedCommentDataImpl _$$FeedCommentDataImplFromJson(
  Map<String, dynamic> json,
) => _$FeedCommentDataImpl(
  id: (json['id'] as num?)?.toInt(),
  postId: (json['postId'] as num?)?.toInt(),
  userId: (json['userId'] as num?)?.toInt(),
  content: json['content'] as String?,
  parentId: (json['parentId'] as num?)?.toInt(),
  likeCount: (json['likeCount'] as num?)?.toInt(),
  isLikedByMe: json['isLikedByMe'] as bool?,
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
  updatedAt: json['updatedAt'] == null
      ? null
      : DateTime.parse(json['updatedAt'] as String),
  author: json['author'] == null
      ? null
      : FeedAuthorData.fromJson(json['author'] as Map<String, dynamic>),
  replies: (json['replies'] as List<dynamic>?)
      ?.map((e) => FeedCommentData.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$$FeedCommentDataImplToJson(
  _$FeedCommentDataImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'postId': instance.postId,
  'userId': instance.userId,
  'content': instance.content,
  'parentId': instance.parentId,
  'likeCount': instance.likeCount,
  'isLikedByMe': instance.isLikedByMe,
  'createdAt': instance.createdAt?.toIso8601String(),
  'updatedAt': instance.updatedAt?.toIso8601String(),
  'author': instance.author,
  'replies': instance.replies,
};
