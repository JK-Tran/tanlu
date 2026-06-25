import 'package:freezed_annotation/freezed_annotation.dart';

part 'device_token_data.freezed.dart';
part 'device_token_data.g.dart';

@freezed
class DeviceTokenData with _$DeviceTokenData {
  const factory DeviceTokenData({
    @JsonKey(name: 'userId', includeToJson: false) String? userId,
    @JsonKey(name: 'fcmToken') String? fcmToken,
    @JsonKey(name: 'fcmTokenUpdatedAt') DateTime? fcmTokenUpdatedAt,
  }) = _DeviceTokenData;

  factory DeviceTokenData.fromJson(Map<String, dynamic> json) =>
      _$DeviceTokenDataFromJson(json);
}
