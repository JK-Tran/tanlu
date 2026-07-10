import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/notification/data/model/notification_data.dart';
import 'package:tanlu_management/shared/infrastructure/data/api/client/auth_app_server_api_client.dart';
import 'package:tanlu_management/shared/infrastructure/data/api/client/base/rest_api_client.dart';
import 'package:tanlu_management/shared/infrastructure/data/api/mapper/base_success_response_mapper.dart';
import 'package:tanlu_management/shared/model/typedef.dart';

@LazySingleton()
class NotificationApiService {
  NotificationApiService(
    this._authAppServerApiClient,
  );

  final AuthAppServerApiClient _authAppServerApiClient;

  Future<NotificationResponseData?> getNotifications({
    int page = 1,
    int limit = 20,
  }) async {
    return _authAppServerApiClient.request(
      method: RestMethod.get,
      successResponseMapperType: SuccessResponseMapperType.jsonObject,
      path: '/notifications',
      queryParameters: {
        'page': page.toString(),
        'limit': limit.toString(),
      },
      decoder: (json) => NotificationResponseData.fromJson(json as JSON),
    );
  }

  Future<void> markAsRead(List<int> notificationIds) async {
    await _authAppServerApiClient.request(
      method: RestMethod.put,
      successResponseMapperType: SuccessResponseMapperType.jsonObject,
      path: '/notifications/read',
      body: {'notificationIds': notificationIds},
    );
  }

  Future<void> markAllAsRead() async {
    await _authAppServerApiClient.request(
      method: RestMethod.put,
      successResponseMapperType: SuccessResponseMapperType.jsonObject,
      path: '/notifications/read-all',
    );
  }
}
