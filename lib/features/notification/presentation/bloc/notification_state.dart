part of 'notification_bloc.dart';

@freezed
class NotificationState with _$NotificationState {
  const factory NotificationState({
    @Default([]) List<NotificationEntity> notifications,
    @Default(0) int unreadCount,
    @Default(false) bool isLoading,
    @Default(1) int page,
    @Default(false) bool hasReachedMax,
    String? error,
  }) = _NotificationState;
}
