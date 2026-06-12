// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_user_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatUserDataImpl _$$ChatUserDataImplFromJson(Map<String, dynamic> json) =>
    _$ChatUserDataImpl(
      id: (json['id'] as num?)?.toInt(),
      fullName: json['fullName'] as String?,
      avatarFileId: json['avatarFileId'] as String?,
    );

Map<String, dynamic> _$$ChatUserDataImplToJson(_$ChatUserDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fullName': instance.fullName,
      'avatarFileId': instance.avatarFileId,
    };
