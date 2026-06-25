import 'package:freezed_annotation/freezed_annotation.dart';

part 'device_token.freezed.dart';

@freezed
class DeviceToken with _$DeviceToken {
  const factory DeviceToken({
    @Default('') String userId,
    @Default('') String token,
    DateTime? updatedAt,
  }) = _DeviceToken;
}
