// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'participant_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ParticipantDataImpl _$$ParticipantDataImplFromJson(
  Map<String, dynamic> json,
) => _$ParticipantDataImpl(
  userId: (json['userId'] as num?)?.toInt(),
  role: json['role'] as String?,
  user: json['user'] == null
      ? null
      : ChatUserData.fromJson(json['user'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$ParticipantDataImplToJson(
  _$ParticipantDataImpl instance,
) => <String, dynamic>{
  'userId': instance.userId,
  'role': instance.role,
  'user': instance.user,
};
