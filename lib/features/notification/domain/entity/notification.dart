import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification.freezed.dart';

@freezed
class NotificationEntity with _$NotificationEntity {
  const factory NotificationEntity({
    required int id,
    required String title,
    required String body,
    required String type,
    required bool isRead,
    required DateTime createdAt,
    Map<String, dynamic>? data,
  }) = _NotificationEntity;
}
