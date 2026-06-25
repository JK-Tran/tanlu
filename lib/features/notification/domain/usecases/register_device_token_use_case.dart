import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/notification/domain/entity/device_token.dart';
import 'package:tanlu_management/features/notification/domain/repositories/notification_repository.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_output.dart';

part 'register_device_token_use_case.freezed.dart';

@Injectable()
class RegisterDeviceTokenUseCase extends BaseFutureUseCase<
    RegisterDeviceTokenInput, RegisterDeviceTokenOutput> {
  const RegisterDeviceTokenUseCase(this._repository);

  final NotificationRepository _repository;

  @protected
  @override
  Future<RegisterDeviceTokenOutput> buildUseCase(
    RegisterDeviceTokenInput input,
  ) async {
    if (input.userId.isEmpty || input.token.isEmpty) {
      return const RegisterDeviceTokenOutput();
    }

    final deviceToken = DeviceToken(
      userId: input.userId,
      token: input.token,
      updatedAt: DateTime.now(),
    );

    await _repository.saveDeviceToken(deviceToken);
    return RegisterDeviceTokenOutput(deviceToken: deviceToken);
  }
}

@freezed
class RegisterDeviceTokenInput extends BaseInput with _$RegisterDeviceTokenInput {
  const factory RegisterDeviceTokenInput({
    required String userId,
    required String token,
  }) = _RegisterDeviceTokenInput;
}

@freezed
class RegisterDeviceTokenOutput extends BaseOutput
    with _$RegisterDeviceTokenOutput {
  const factory RegisterDeviceTokenOutput({
    DeviceToken? deviceToken,
  }) = _RegisterDeviceTokenOutput;

  const RegisterDeviceTokenOutput._();
}
