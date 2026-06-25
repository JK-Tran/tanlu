// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MessageDataImpl _$$MessageDataImplFromJson(Map<String, dynamic> json) =>
    _$MessageDataImpl(
      id: json['id'] as String?,
      senderId: json['senderId'] as String?,
      receiverId: json['receiverId'] as String?,
      fullName: json['fullName'] as String?,
      avatar: json['avatar'] as String?,
      type: json['type'] as String?,
      text: json['text'] as String?,
      fileUrl: json['fileUrl'] as String?,
      status: json['status'] as String?,
      createdAt: FirestoreJson.toDateTime(json['createdAt']),
    );

Map<String, dynamic> _$$MessageDataImplToJson(_$MessageDataImpl instance) =>
    <String, dynamic>{
      'senderId': instance.senderId,
      'receiverId': instance.receiverId,
      'fullName': instance.fullName,
      'avatar': instance.avatar,
      'type': instance.type,
      'text': instance.text,
      'fileUrl': instance.fileUrl,
      'status': instance.status,
      'createdAt': FirestoreJson.dateTimeToFirestore(instance.createdAt),
    };
