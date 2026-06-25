// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ContactDataImpl _$$ContactDataImplFromJson(Map<String, dynamic> json) =>
    _$ContactDataImpl(
      name: json['name'] as String?,
      relationship: json['relationship'] as String?,
      phone: json['phone'] as String?,
      dob: json['dob'] as String?,
      userId: json['userId'] as String?,
      isPrimary: json['isPrimary'] as bool?,
    );

Map<String, dynamic> _$$ContactDataImplToJson(_$ContactDataImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'relationship': instance.relationship,
      'phone': instance.phone,
      'dob': instance.dob,
      'userId': instance.userId,
      'isPrimary': instance.isPrimary,
    };
