part of 'notification_bloc.dart';

@freezed
class NotificationEvent with _$NotificationEvent {
  const factory NotificationEvent.loadNotifications({
    @Default(1) int page,
    @Default(20) int limit,
    @Default(false) bool isRefresh,
  }) = _LoadNotifications;

  const factory NotificationEvent.markAsRead(List<int> notificationIds) = _MarkAsRead;
  
  const factory NotificationEvent.markAllAsRead() = _MarkAllAsRead;

  const factory NotificationEvent.incrementUnreadCount() = _IncrementUnreadCount;
}