abstract class NotificationRepository {
  Future<Map<String, dynamic>> getNotifications({int page = 1, int limit = 20});
  Future<void> markAsRead(List<int> notificationIds);
  Future<void> markAllAsRead();
}
