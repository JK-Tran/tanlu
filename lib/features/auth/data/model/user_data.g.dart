// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserDataImpl _$$UserDataImplFromJson(Map<String, dynamic> json) =>
    _$UserDataImpl(
      id: (json['id'] as num?)?.toInt(),
      email: json['email'] as String?,
      fullName: json['fullName'] as String?,
      phone: json['phone'] as String?,
      avatarFileId: json['avatarFileId'] as String?,
      status: json['status'] as String?,
      createdAt: json['createdAt'] as String?,
      center: _readCenter(json, 'center') == null
          ? null
          : CenterData.fromJson(
              _readCenter(json, 'center') as Map<String, dynamic>,
            ),
      role: _readRole(json, 'role') == null
          ? null
          : RoleData.fromJson(_readRole(json, 'role') as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserDataImplToJson(_$UserDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'fullName': instance.fullName,
      'phone': instance.phone,
      'avatarFileId': instance.avatarFileId,
      'status': instance.status,
      'createdAt': instance.createdAt,
      'center': instance.center,
      'role': instance.role,
    };

_$CenterDataImpl _$$CenterDataImplFromJson(Map<String, dynamic> json) =>
    _$CenterDataImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$CenterDataImplToJson(_$CenterDataImpl instance) =>
    <String, dynamic>{'id': instance.id, 'name': instance.name};

_$RoleDataImpl _$$RoleDataImplFromJson(Map<String, dynamic> json) =>
    _$RoleDataImpl(
      code: json['code'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$RoleDataImplToJson(_$RoleDataImpl instance) =>
    <String, dynamic>{'code': instance.code, 'name': instance.name};
