// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FeedDataImpl _$$FeedDataImplFromJson(
  Map<String, dynamic> json,
) => _$FeedDataImpl(
  id: json['id'] as String?,
  authorId: json['authorId'] as String?,
  fullName: json['fullName'] as String?,
  avatar: json['avatar'] as String?,
  role: json['role'] as String?,
  classId: json['classId'] as String?,
  className: json['className'] as String?,
  centerId: json['centerId'] as String?,
  content: json['content'] as String?,
  images: (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
  videos: (json['videos'] as List<dynamic>?)?.map((e) => e as String).toList(),
  likeCount: (json['likeCount'] as num?)?.toInt(),
  commentCount: (json['commentCount'] as num?)?.toInt(),
  allowComments: json['allowComments'] as bool?,
  isPublic: json['isPublic'] as bool?,
  status: json['status'] as String?,
  createdAt: FirestoreJson.toDateTime(json['createdAt']),
  updatedAt: FirestoreJson.toDateTime(json['updatedAt']),
);

Map<String, dynamic> _$$FeedDataImplToJson(_$FeedDataImpl instance) =>
    <String, dynamic>{
      'authorId': instance.authorId,
      'fullName': instance.fullName,
      'avatar': instance.avatar,
      'role': instance.role,
      'classId': instance.classId,
      'className': instance.className,
      'centerId': instance.centerId,
      'content': instance.content,
      'images': instance.images,
      'videos': instance.videos,
      'likeCount': instance.likeCount,
      'commentCount': instance.commentCount,
      'allowComments': instance.allowComments,
      'isPublic': instance.isPublic,
      'status': instance.status,
      'createdAt': FirestoreJson.dateTimeToFirestore(instance.createdAt),
      'updatedAt': FirestoreJson.dateTimeToFirestore(instance.updatedAt),
    };
