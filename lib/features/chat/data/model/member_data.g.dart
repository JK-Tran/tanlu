// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'member_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MemberDataImpl _$$MemberDataImplFromJson(Map<String, dynamic> json) =>
    _$MemberDataImpl(
      userId: json['userId'] as String?,
      fullName: json['fullName'] as String?,
      avatar: json['avatar'] as String?,
      role: json['role'] as String?,
      unreadCount: (json['unreadCount'] as num?)?.toInt(),
      lastReadAt: FirestoreJson.toDateTime(json['lastReadAt']),
    );

Map<String, dynamic> _$$MemberDataImplToJson(_$MemberDataImpl instance) =>
    <String, dynamic>{
      'fullName': instance.fullName,
      'avatar': instance.avatar,
      'role': instance.role,
      'unreadCount': instance.unreadCount,
      'lastReadAt': FirestoreJson.dateTimeToFirestore(instance.lastReadAt),
    };
