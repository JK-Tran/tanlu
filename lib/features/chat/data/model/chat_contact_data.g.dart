// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_contact_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatContactDataImpl _$$ChatContactDataImplFromJson(
  Map<String, dynamic> json,
) => _$ChatContactDataImpl(
  id: (json['id'] as num?)?.toInt(),
  fullName: json['fullName'] as String?,
  avatarUrl: json['avatarUrl'] as String?,
  role: json['role'] as String?,
  phone: json['phone'] as String?,
  childrenText: json['childrenText'] as String?,
);

Map<String, dynamic> _$$ChatContactDataImplToJson(
  _$ChatContactDataImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'fullName': instance.fullName,
  'avatarUrl': instance.avatarUrl,
  'role': instance.role,
  'phone': instance.phone,
  'childrenText': instance.childrenText,
};
