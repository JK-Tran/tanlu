// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_token_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeviceTokenDataImpl _$$DeviceTokenDataImplFromJson(
  Map<String, dynamic> json,
) => _$DeviceTokenDataImpl(
  userId: json['userId'] as String?,
  fcmToken: json['fcmToken'] as String?,
  fcmTokenUpdatedAt: json['fcmTokenUpdatedAt'] == null
      ? null
      : DateTime.parse(json['fcmTokenUpdatedAt'] as String),
);

Map<String, dynamic> _$$DeviceTokenDataImplToJson(
  _$DeviceTokenDataImpl instance,
) => <String, dynamic>{
  'fcmToken': instance.fcmToken,
  'fcmTokenUpdatedAt': instance.fcmTokenUpdatedAt?.toIso8601String(),
};
