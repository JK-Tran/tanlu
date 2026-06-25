// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'friend_request_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FriendRequestDataImpl _$$FriendRequestDataImplFromJson(
  Map<String, dynamic> json,
) => _$FriendRequestDataImpl(
  id: json['id'] as String?,
  fromUserId: json['fromUserId'] as String?,
  toUserId: json['toUserId'] as String?,
  status: json['status'] as String?,
  createdAt: FirestoreJson.toDateTime(json['createdAt']),
  updatedAt: FirestoreJson.toDateTime(json['updatedAt']),
);

Map<String, dynamic> _$$FriendRequestDataImplToJson(
  _$FriendRequestDataImpl instance,
) => <String, dynamic>{
  'fromUserId': instance.fromUserId,
  'toUserId': instance.toUserId,
  'status': instance.status,
  'createdAt': FirestoreJson.dateTimeToFirestore(instance.createdAt),
  'updatedAt': FirestoreJson.dateTimeToFirestore(instance.updatedAt),
};
