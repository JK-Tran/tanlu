// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthResponseDataImpl _$$AuthResponseDataImplFromJson(
  Map<String, dynamic> json,
) => _$AuthResponseDataImpl(
  user: json['user'] == null
      ? null
      : UserData.fromJson(json['user'] as Map<String, dynamic>),
  token: json['token'] as String?,
);

Map<String, dynamic> _$$AuthResponseDataImplToJson(
  _$AuthResponseDataImpl instance,
) => <String, dynamic>{'user': instance.user, 'token': instance.token};
