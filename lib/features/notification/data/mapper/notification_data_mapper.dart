import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/notification/data/model/notification_data.dart';
import 'package:tanlu_management/features/notification/domain/entity/notification.dart';
import 'package:tanlu_management/shared/infrastructure/data/base/base_data_mapper.dart';

@LazySingleton()
class NotificationDataMapper
    extends BaseDataMapper<NotificationData, NotificationEntity> {
  @override
  NotificationEntity mapToEntity(NotificationData? data) {
    return NotificationEntity(
      id: data?.id ?? 0,
      title: data?.title ?? '',
      body: data?.body ?? '',
      type: data?.type ?? '',
      isRead: data?.isRead ?? false,
      createdAt: data?.createdAt ?? DateTime.now(),
      data: data?.data,
    );
  }

  NotificationData mapToData(NotificationEntity entity) {
    return NotificationData(
      id: entity.id,
      title: entity.title,
      body: entity.body,
      type: entity.type,
      isRead: entity.isRead,
      createdAt: entity.createdAt,
      data: entity.data,
    );
  }
}
