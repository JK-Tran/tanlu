// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parent_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ParentDataImpl _$$ParentDataImplFromJson(Map<String, dynamic> json) =>
    _$ParentDataImpl(
      id: (json['id'] as num?)?.toInt(),
      fullName: json['fullName'] as String?,
      phone: json['phone'] as String?,
      avatarUrl: json['avatarUrl'] as String?,
    );

Map<String, dynamic> _$$ParentDataImplToJson(_$ParentDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fullName': instance.fullName,
      'phone': instance.phone,
      'avatarUrl': instance.avatarUrl,
    };
