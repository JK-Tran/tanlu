import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/auth/domain/repositories/auth_repository.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_output.dart';

part 'change_password_use_case.freezed.dart';

@Injectable()
class ChangePasswordUseCase
    extends BaseFutureUseCase<ChangePasswordInput, ChangePasswordOutput> {
  const ChangePasswordUseCase(this._repository);

  final AuthRepository _repository;

  @protected
  @override
  Future<ChangePasswordOutput> buildUseCase(ChangePasswordInput input) async {
    await _repository.changePassword(input.oldPassword, input.newPassword);
    return const ChangePasswordOutput();
  }
}

@freezed
class ChangePasswordInput extends BaseInput with _$ChangePasswordInput {
  const factory ChangePasswordInput({
    required String oldPassword,
    required String newPassword,
  }) = _ChangePasswordInput;
}

@freezed
class ChangePasswordOutput extends BaseOutput with _$ChangePasswordOutput {
  const factory ChangePasswordOutput() = _ChangePasswordOutput;

  const ChangePasswordOutput._();
}
