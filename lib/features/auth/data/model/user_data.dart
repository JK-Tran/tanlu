import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_data.freezed.dart';
part 'user_data.g.dart';

@freezed
class UserData with _$UserData {
  const factory UserData({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'fullName') String? fullName,
    @JsonKey(name: 'role') String? role,
    @JsonKey(name: 'centerId') int? centerId,
    @JsonKey(name: 'phone') String? phone,
    @JsonKey(name: 'avatarUrl') String? avatarUrl,
    @JsonKey(name: 'passwordHash') String? passwordHash,
    @JsonKey(name: 'fcmToken') String? fcmToken,
    @JsonKey(name: 'createdAt') DateTime? createdAt,
    @JsonKey(name: 'updatedAt') DateTime? updatedAt,
    @JsonKey(name: 'classId') int? classId,
  }) = _UserData;

  const UserData._();

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}

@freezed
class UserDataResponse with _$UserDataResponse {
  const factory UserDataResponse({
    @JsonKey(name: 'token') String? token,
    @JsonKey(name: 'user') UserData? user,
    @JsonKey(name: 'firebaseCustomToken') String? firebaseCustomToken,
  }) = _UserDataResponse;

  factory UserDataResponse.fromJson(Map<String, dynamic> json) =>
      _$UserDataResponseFromJson(json);
}
