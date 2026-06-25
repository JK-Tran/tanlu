// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommentDataImpl _$$CommentDataImplFromJson(Map<String, dynamic> json) =>
    _$CommentDataImpl(
      id: json['id'] as String?,
      authorId: json['authorId'] as String?,
      fullName: json['fullName'] as String?,
      avatar: json['avatar'] as String?,
      role: json['role'] as String?,
      content: json['content'] as String?,
      parentId: json['parentId'] as String?,
      likeCount: (json['likeCount'] as num?)?.toInt(),
      status: json['status'] as String?,
      createdAt: FirestoreJson.toDateTime(json['createdAt']),
      updatedAt: FirestoreJson.toDateTime(json['updatedAt']),
    );

Map<String, dynamic> _$$CommentDataImplToJson(_$CommentDataImpl instance) =>
    <String, dynamic>{
      'authorId': instance.authorId,
      'fullName': instance.fullName,
      'avatar': instance.avatar,
      'role': instance.role,
      'content': instance.content,
      'parentId': instance.parentId,
      'likeCount': instance.likeCount,
      'status': instance.status,
      'createdAt': FirestoreJson.dateTimeToFirestore(instance.createdAt),
      'updatedAt': FirestoreJson.dateTimeToFirestore(instance.updatedAt),
    };
