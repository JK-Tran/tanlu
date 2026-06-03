import 'package:freezed_annotation/freezed_annotation.dart';
import 'user_data.dart';

part 'auth_response_data.freezed.dart';
part 'auth_response_data.g.dart';

@freezed
class AuthResponseData with _$AuthResponseData {
  const factory AuthResponseData({
    @JsonKey() UserData? user,
    @JsonKey() String? token,
  }) = _AuthResponseData;

  const AuthResponseData._();

  factory AuthResponseData.fromJson(Map<String, dynamic> json) =>
      _$AuthResponseDataFromJson(json);
}
