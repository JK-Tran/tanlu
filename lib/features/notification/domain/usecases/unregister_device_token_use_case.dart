import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/notification/domain/repositories/notification_repository.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_output.dart';

part 'unregister_device_token_use_case.freezed.dart';

@Injectable()
class UnregisterDeviceTokenUseCase extends BaseFutureUseCase<
    UnregisterDeviceTokenInput, UnregisterDeviceTokenOutput> {
  const UnregisterDeviceTokenUseCase(this._repository);

  final NotificationRepository _repository;

  @protected
  @override
  Future<UnregisterDeviceTokenOutput> buildUseCase(
    UnregisterDeviceTokenInput input,
  ) async {
    if (input.userId.isNotEmpty) {
      await _repository.clearDeviceToken(input.userId);
    }
    await _repository.clearLocalDeviceToken();

    return const UnregisterDeviceTokenOutput();
  }
}

@freezed
class UnregisterDeviceTokenInput extends BaseInput
    with _$UnregisterDeviceTokenInput {
  const factory UnregisterDeviceTokenInput({
    @Default('') String userId,
  }) = _UnregisterDeviceTokenInput;
}

@freezed
class UnregisterDeviceTokenOutput extends BaseOutput
    with _$UnregisterDeviceTokenOutput {
  const factory UnregisterDeviceTokenOutput() = _UnregisterDeviceTokenOutput;

  const UnregisterDeviceTokenOutput._();
}
