// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_post_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FeedPostDataImpl _$$FeedPostDataImplFromJson(Map<String, dynamic> json) =>
    _$FeedPostDataImpl(
      id: (json['id'] as num?)?.toInt(),
      authorId: (json['authorId'] as num?)?.toInt(),
      centerId: (json['centerId'] as num?)?.toInt(),
      classId: (json['classId'] as num?)?.toInt(),
      content: json['content'] as String?,
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      isPublic: json['isPublic'] as bool?,
      status: json['status'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      likeCount: (json['likeCount'] as num?)?.toInt(),
      isLikedByMe: json['isLikedByMe'] as bool?,
      commentCount: (json['commentCount'] as num?)?.toInt(),
      author: json['author'] == null
          ? null
          : FeedAuthorData.fromJson(json['author'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FeedPostDataImplToJson(_$FeedPostDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'authorId': instance.authorId,
      'centerId': instance.centerId,
      'classId': instance.classId,
      'content': instance.content,
      'images': instance.images,
      'isPublic': instance.isPublic,
      'status': instance.status,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'likeCount': instance.likeCount,
      'isLikedByMe': instance.isLikedByMe,
      'commentCount': instance.commentCount,
      'author': instance.author,
    };
