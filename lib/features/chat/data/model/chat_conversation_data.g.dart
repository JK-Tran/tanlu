// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_conversation_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatConversationDataImpl _$$ChatConversationDataImplFromJson(
  Map<String, dynamic> json,
) => _$ChatConversationDataImpl(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  isGroup: json['isGroup'] as bool?,
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
  updatedAt: json['updatedAt'] == null
      ? null
      : DateTime.parse(json['updatedAt'] as String),
  participants: (json['participants'] as List<dynamic>?)
      ?.map((e) => (e as num).toInt())
      .toList(),
  participantDetails: (json['participantDetails'] as Map<String, dynamic>?)
      ?.map(
        (k, e) => MapEntry(
          k,
          ChatParticipantData.fromJson(e as Map<String, dynamic>),
        ),
      ),
  lastMessage: json['lastMessage'] as String?,
  lastMessageType: json['lastMessageType'] as String?,
  isLastMessageRevoked: json['isLastMessageRevoked'] as bool?,
  lastMessageTimestamp: json['lastMessageTimestamp'] == null
      ? null
      : DateTime.parse(json['lastMessageTimestamp'] as String),
  lastMessageSenderId: (json['lastMessageSenderId'] as num?)?.toInt(),
  unreadCount: (json['unreadCount'] as num?)?.toInt(),
);

Map<String, dynamic> _$$ChatConversationDataImplToJson(
  _$ChatConversationDataImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'isGroup': instance.isGroup,
  'createdAt': instance.createdAt?.toIso8601String(),
  'updatedAt': instance.updatedAt?.toIso8601String(),
  'participants': instance.participants,
  'participantDetails': instance.participantDetails,
  'lastMessage': instance.lastMessage,
  'lastMessageType': instance.lastMessageType,
  'isLastMessageRevoked': instance.isLastMessageRevoked,
  'lastMessageTimestamp': instance.lastMessageTimestamp?.toIso8601String(),
  'lastMessageSenderId': instance.lastMessageSenderId,
  'unreadCount': instance.unreadCount,
};
