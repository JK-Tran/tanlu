// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parent_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ParentDataImpl _$$ParentDataImplFromJson(Map<String, dynamic> json) =>
    _$ParentDataImpl(
      id: (json['id'] as num?)?.toInt(),
      address: json['address'] as String?,
      occupation: json['occupation'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      user: json['user'] == null
          ? null
          : UserData.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ParentDataImplToJson(_$ParentDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'address': instance.address,
      'occupation': instance.occupation,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'user': instance.user,
    };
