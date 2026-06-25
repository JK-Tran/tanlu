// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_like_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FeedLikeDataImpl _$$FeedLikeDataImplFromJson(Map<String, dynamic> json) =>
    _$FeedLikeDataImpl(
      userId: json['userId'] as String?,
      fullName: json['fullName'] as String?,
      avatar: json['avatar'] as String?,
      role: json['role'] as String?,
      status: json['status'] as String?,
      createdAt: FirestoreJson.toDateTime(json['createdAt']),
      updatedAt: FirestoreJson.toDateTime(json['updatedAt']),
    );

Map<String, dynamic> _$$FeedLikeDataImplToJson(_$FeedLikeDataImpl instance) =>
    <String, dynamic>{
      'fullName': instance.fullName,
      'avatar': instance.avatar,
      'role': instance.role,
      'status': instance.status,
      'createdAt': FirestoreJson.dateTimeToFirestore(instance.createdAt),
      'updatedAt': FirestoreJson.dateTimeToFirestore(instance.updatedAt),
    };
