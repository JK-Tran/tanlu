// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conversation_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConversationDataImpl _$$ConversationDataImplFromJson(
  Map<String, dynamic> json,
) => _$ConversationDataImpl(
  id: json['id'] as String?,
  name: json['name'] as String?,
  type: json['type'] as String?,
  classId: json['classId'] as String?,
  centerId: json['centerId'] as String?,
  memberIds: (json['memberIds'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  lastMessageText: json['lastMessageText'] as String?,
  lastMessageSenderId: json['lastMessageSenderId'] as String?,
  lastMessageAt: FirestoreJson.toDateTime(json['lastMessageAt']),
  createdAt: FirestoreJson.toDateTime(json['createdAt']),
  updatedAt: FirestoreJson.toDateTime(json['updatedAt']),
);

Map<String, dynamic> _$$ConversationDataImplToJson(
  _$ConversationDataImpl instance,
) => <String, dynamic>{
  'name': instance.name,
  'type': instance.type,
  'classId': instance.classId,
  'centerId': instance.centerId,
  'memberIds': instance.memberIds,
  'lastMessageText': instance.lastMessageText,
  'lastMessageSenderId': instance.lastMessageSenderId,
  'lastMessageAt': FirestoreJson.dateTimeToFirestore(instance.lastMessageAt),
  'createdAt': FirestoreJson.dateTimeToFirestore(instance.createdAt),
  'updatedAt': FirestoreJson.dateTimeToFirestore(instance.updatedAt),
};
