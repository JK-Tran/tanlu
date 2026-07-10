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
      role: json['role'] as String?,
      centerId: (json['centerId'] as num?)?.toInt(),
      phone: json['phone'] as String?,
      avatarUrl: json['avatarUrl'] as String?,
      passwordHash: json['passwordHash'] as String?,
      fcmToken: json['fcmToken'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      classId: (json['classId'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$UserDataImplToJson(_$UserDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'fullName': instance.fullName,
      'role': instance.role,
      'centerId': instance.centerId,
      'phone': instance.phone,
      'avatarUrl': instance.avatarUrl,
      'passwordHash': instance.passwordHash,
      'fcmToken': instance.fcmToken,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'classId': instance.classId,
    };

_$UserDataResponseImpl _$$UserDataResponseImplFromJson(
  Map<String, dynamic> json,
) => _$UserDataResponseImpl(
  token: json['token'] as String?,
  user: json['user'] == null
      ? null
      : UserData.fromJson(json['user'] as Map<String, dynamic>),
  firebaseCustomToken: json['firebaseCustomToken'] as String?,
);

Map<String, dynamic> _$$UserDataResponseImplToJson(
  _$UserDataResponseImpl instance,
) => <String, dynamic>{
  'token': instance.token,
  'user': instance.user,
  'firebaseCustomToken': instance.firebaseCustomToken,
};
