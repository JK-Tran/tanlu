import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_data.freezed.dart';
part 'user_data.g.dart';

Object? _readCenter(Map json, String key) {
  if (json['center'] != null) {
    return json['center'];
  }
  if (json['centerId'] != null) {
    return {'id': json['centerId'], 'name': ''};
  }
  return null;
}

Object? _readRole(Map json, String key) {
  final role = json['role'];
  if (role is String) {
    return {'code': role, 'name': ''};
  }
  if (role is Map) {
    return role;
  }
  return null;
}

@freezed
class UserData with _$UserData {
  const factory UserData({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'fullName') String? fullName,
    @JsonKey(name: 'phone') String? phone,
    @JsonKey(name: 'avatarFileId') String? avatarFileId,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'createdAt') String? createdAt,
    @JsonKey(name: 'center', readValue: _readCenter) CenterData? center,
    @JsonKey(name: 'role', readValue: _readRole) RoleData? role,
  }) = _UserData;

  const UserData._();

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}

@freezed
class CenterData with _$CenterData {
  const factory CenterData({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
  }) = _CenterData;

  factory CenterData.fromJson(Map<String, dynamic> json) =>
      _$CenterDataFromJson(json);
}

@freezed
class RoleData with _$RoleData {
  const factory RoleData({
    @JsonKey(name: 'code') String? code,
    @JsonKey(name: 'name') String? name,
  }) = _RoleData;

  factory RoleData.fromJson(Map<String, dynamic> json) =>
      _$RoleDataFromJson(json);
}
