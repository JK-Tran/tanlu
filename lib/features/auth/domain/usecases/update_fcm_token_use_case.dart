import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/auth/domain/repositories/auth_repository.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_output.dart';

part 'update_fcm_token_use_case.freezed.dart';

@Injectable()
class UpdateFcmTokenUseCase extends BaseFutureUseCase<UpdateFcmTokenInput, UpdateFcmTokenOutput> {
  const UpdateFcmTokenUseCase(this._repository);

  final AuthRepository _repository;

  @protected
  @override
  Future<UpdateFcmTokenOutput> buildUseCase(UpdateFcmTokenInput input) async {
    await _repository.updateFcmToken(input.fcmToken);
    return const UpdateFcmTokenOutput();
  }
}

@freezed
class UpdateFcmTokenInput extends BaseInput with _$UpdateFcmTokenInput {
  const factory UpdateFcmTokenInput({
    required String fcmToken,
  }) = _UpdateFcmTokenInput;
}

@freezed
class UpdateFcmTokenOutput extends BaseOutput with _$UpdateFcmTokenOutput {
  const factory UpdateFcmTokenOutput() = _UpdateFcmTokenOutput;

  const UpdateFcmTokenOutput._();
}
