// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conversation_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConversationDataImpl _$$ConversationDataImplFromJson(
  Map<String, dynamic> json,
) => _$ConversationDataImpl(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  type: json['type'] as String?,
  updatedAt: json['updatedAt'] as String?,
  participants: (json['participants'] as List<dynamic>?)
      ?.map((e) => ParticipantData.fromJson(e as Map<String, dynamic>))
      .toList(),
  messages: (json['messages'] as List<dynamic>?)
      ?.map((e) => MessageData.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$$ConversationDataImplToJson(
  _$ConversationDataImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'type': instance.type,
  'updatedAt': instance.updatedAt,
  'participants': instance.participants,
  'messages': instance.messages,
};
