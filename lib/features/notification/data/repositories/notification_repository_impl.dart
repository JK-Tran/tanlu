import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/notification/data/mapper/notification_data_mapper.dart';
import 'package:tanlu_management/features/notification/data/sources/notification_api_service.dart';
import 'package:tanlu_management/features/notification/domain/repositories/notification_repository.dart';

@LazySingleton(as: NotificationRepository)
class NotificationRepositoryImpl extends NotificationRepository {
  NotificationRepositoryImpl(
    this._notificationApiService,
    this._notificationDataMapper,
  );

  final NotificationApiService _notificationApiService;
  final NotificationDataMapper _notificationDataMapper;

  @override
  Future<Map<String, dynamic>> getNotifications({
    int page = 1,
    int limit = 20,
  }) async {
    final response = await _notificationApiService.getNotifications(
      page: page,
      limit: limit,
    );

    final notifications =
        response?.data
            ?.map((e) => _notificationDataMapper.mapToEntity(e))
            .toList() ??
        [];

    return {
      'notifications': notifications,
      'unreadCount': response?.unreadCount ?? 0,
    };
  }

  @override
  Future<void> markAsRead(List<int> notificationIds) async {
    await _notificationApiService.markAsRead(notificationIds);
  }

  @override
  Future<void> markAllAsRead() async {
    await _notificationApiService.markAllAsRead();
  }
}
