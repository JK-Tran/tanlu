// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ContactDataImpl _$$ContactDataImplFromJson(Map<String, dynamic> json) =>
    _$ContactDataImpl(
      id: json['id'] as String?,
      fullName: json['fullName'] as String?,
      role: json['role'] as String?,
      avatar: json['avatar'] as String?,
      classId: json['classId'] as String?,
    );

Map<String, dynamic> _$$ContactDataImplToJson(_$ContactDataImpl instance) =>
    <String, dynamic>{
      'fullName': instance.fullName,
      'role': instance.role,
      'avatar': instance.avatar,
      'classId': instance.classId,
    };
