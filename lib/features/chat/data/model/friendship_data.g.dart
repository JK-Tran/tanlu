// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'friendship_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FriendshipDataImpl _$$FriendshipDataImplFromJson(Map<String, dynamic> json) =>
    _$FriendshipDataImpl(
      id: json['id'] as String?,
      userIds: (json['userIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      createdAt: FirestoreJson.toDateTime(json['createdAt']),
    );

Map<String, dynamic> _$$FriendshipDataImplToJson(
  _$FriendshipDataImpl instance,
) => <String, dynamic>{
  'userIds': instance.userIds,
  'createdAt': FirestoreJson.dateTimeToFirestore(instance.createdAt),
};
