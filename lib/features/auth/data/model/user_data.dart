import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_data.freezed.dart';
part 'user_data.g.dart';

@freezed
class UserData with _$UserData {
  const factory UserData({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'fullName') String? fullName,
    @JsonKey(name: 'role') String? role,
    @JsonKey(name: 'centerId') String? centerId,
    @JsonKey(name: 'phone') String? phone,
    @JsonKey(name: 'avatar') String? avatar,
    @JsonKey(name: 'classId') String? classId,
  }) = _UserData;

  const UserData._();

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}
