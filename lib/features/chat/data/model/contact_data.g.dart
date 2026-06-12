// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ContactDataImpl _$$ContactDataImplFromJson(Map<String, dynamic> json) =>
    _$ContactDataImpl(
      id: (json['id'] as num?)?.toInt(),
      fullName: json['fullName'] as String?,
      avatarFileId: json['avatarFileId'] as String?,
      role: json['role'] == null
          ? null
          : RoleData.fromJson(json['role'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ContactDataImplToJson(_$ContactDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fullName': instance.fullName,
      'avatarFileId': instance.avatarFileId,
      'role': instance.role,
    };

_$RoleDataImpl _$$RoleDataImplFromJson(Map<String, dynamic> json) =>
    _$RoleDataImpl(code: json['code'] as String?);

Map<String, dynamic> _$$RoleDataImplToJson(_$RoleDataImpl instance) =>
    <String, dynamic>{'code': instance.code};
