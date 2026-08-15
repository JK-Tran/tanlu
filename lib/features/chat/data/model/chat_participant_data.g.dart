// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_participant_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatParticipantDataImpl _$$ChatParticipantDataImplFromJson(
  Map<String, dynamic> json,
) => _$ChatParticipantDataImpl(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  avatarUrl: json['avatarUrl'] as String?,
  role: json['role'] as String?,
);

Map<String, dynamic> _$$ChatParticipantDataImplToJson(
  _$ChatParticipantDataImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'avatarUrl': instance.avatarUrl,
  'role': instance.role,
};
