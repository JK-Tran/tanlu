// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MessageDataImpl _$$MessageDataImplFromJson(Map<String, dynamic> json) =>
    _$MessageDataImpl(
      id: (json['id'] as num?)?.toInt(),
      conversationId: (json['conversationId'] as num?)?.toInt(),
      senderId: (json['senderId'] as num?)?.toInt(),
      text: json['text'] as String?,
      isRead: json['isRead'] as bool?,
      fileUrl: json['fileUrl'] as String?,
      createdAt: json['createdAt'] as String?,
      sender: json['sender'] == null
          ? null
          : ChatUserData.fromJson(json['sender'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MessageDataImplToJson(_$MessageDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'conversationId': instance.conversationId,
      'senderId': instance.senderId,
      'text': instance.text,
      'isRead': instance.isRead,
      'fileUrl': instance.fileUrl,
      'createdAt': instance.createdAt,
      'sender': instance.sender,
    };
