// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_message_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatMessageDataImpl _$$ChatMessageDataImplFromJson(
  Map<String, dynamic> json,
) => _$ChatMessageDataImpl(
  id: (json['id'] as num?)?.toInt(),
  conversationId: (json['conversationId'] as num?)?.toInt(),
  senderId: (json['senderId'] as num?)?.toInt(),
  content: json['content'] as String?,
  fileUrl: json['fileUrl'] as String?,
  type: json['type'] as String?,
  status: $enumDecodeNullable(_$MessageStatusEnumMap, json['status']),
  isRevoked: json['isRevoked'] as bool?,
  replyToId: (json['replyToId'] as num?)?.toInt(),
  replyToMessage: json['replyToMessage'] == null
      ? null
      : ChatMessageData.fromJson(
          json['replyToMessage'] as Map<String, dynamic>,
        ),
  reactions: (json['reactions'] as List<dynamic>?)
      ?.map((e) => ChatReactionData.fromJson(e as Map<String, dynamic>))
      .toList(),
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
);

Map<String, dynamic> _$$ChatMessageDataImplToJson(
  _$ChatMessageDataImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'conversationId': instance.conversationId,
  'senderId': instance.senderId,
  'content': instance.content,
  'fileUrl': instance.fileUrl,
  'type': instance.type,
  'status': _$MessageStatusEnumMap[instance.status],
  'isRevoked': instance.isRevoked,
  'replyToId': instance.replyToId,
  'replyToMessage': instance.replyToMessage,
  'reactions': instance.reactions,
  'createdAt': instance.createdAt?.toIso8601String(),
};

const _$MessageStatusEnumMap = {
  MessageStatus.sent: 'sent',
  MessageStatus.read: 'read',
  MessageStatus.sending: 'sending',
  MessageStatus.error: 'error',
};
