import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tanlu_management/shared/model/typedef.dart';

part 'notification_data.freezed.dart';
part 'notification_data.g.dart';

@freezed
class NotificationData with _$NotificationData {
  const factory NotificationData({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'userId') int? userId,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'body') String? body,
    @JsonKey(name: 'type') String? type,
    @JsonKey(name: 'isRead') bool? isRead,
    @JsonKey(name: 'data') JSON? data,
    @JsonKey(name: 'createdAt') DateTime? createdAt,
  }) = _NotificationData;

  const NotificationData._();

  factory NotificationData.fromJson(Map<String, dynamic> json) =>
      _$NotificationDataFromJson(json);
}

@freezed
class NotificationResponseData with _$NotificationResponseData {
  const factory NotificationResponseData({
    @JsonKey(name: 'data') List<NotificationData>? data,
    @JsonKey(name: 'unreadCount') int? unreadCount,
  }) = _NotificationResponseData;

  factory NotificationResponseData.fromJson(Map<String, dynamic> json) =>
      _$NotificationResponseDataFromJson(json);
}
