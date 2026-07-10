import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/notification/domain/entity/notification.dart';
import 'package:tanlu_management/features/notification/domain/repositories/notification_repository.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_output.dart';

part 'get_notifications_use_case.freezed.dart';

@Injectable()
class GetNotificationsUseCase extends BaseFutureUseCase<GetNotificationsInput, GetNotificationsOutput> {
  const GetNotificationsUseCase(this._repository);

  final NotificationRepository _repository;

  @protected
  @override
  Future<GetNotificationsOutput> buildUseCase(GetNotificationsInput input) async {
    final response = await _repository.getNotifications(
      page: input.page,
      limit: input.limit,
    );
    
    return GetNotificationsOutput(
      notifications: response['notifications'] as List<NotificationEntity>,
      unreadCount: response['unreadCount'] as int,
    );
  }
}

@freezed
class GetNotificationsInput extends BaseInput with _$GetNotificationsInput {
  const factory GetNotificationsInput({
    @Default(1) int page,
    @Default(20) int limit,
  }) = _GetNotificationsInput;
}

@freezed
class GetNotificationsOutput extends BaseOutput with _$GetNotificationsOutput {
  const factory GetNotificationsOutput({
    required List<NotificationEntity> notifications,
    required int unreadCount,
  }) = _GetNotificationsOutput;

  const GetNotificationsOutput._();
}
