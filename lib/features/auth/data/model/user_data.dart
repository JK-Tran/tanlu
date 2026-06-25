import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_data.freezed.dart';
part 'user_data.g.dart';

Object? _readUserAvatar(Map<dynamic, dynamic> json, String key) {
  final avatar = json['avatar'];
  if (avatar is String && avatar.trim().isNotEmpty) return avatar.trim();

  final avatarUrl = json['avatarUrl'];
  if (avatarUrl is String && avatarUrl.trim().isNotEmpty) {
    return avatarUrl.trim();
  }

  return null;
}

@freezed
class UserData with _$UserData {
  const factory UserData({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'fullName') String? fullName,
    @JsonKey(name: 'role') String? role,
    @JsonKey(name: 'centerId') String? centerId,
    @JsonKey(name: 'phone') String? phone,
    @JsonKey(readValue: _readUserAvatar) String? avatar,
    @JsonKey(name: 'classId') String? classId,
  }) = _UserData;

  const UserData._();

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}
