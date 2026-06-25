import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/auth/domain/entity/user.dart';
import 'package:tanlu_management/features/auth/domain/repositories/auth_repository.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_output.dart';
import 'package:tanlu_management/shared/network/exceptions/app_exceptions.dart';
import 'package:tanlu_management/shared/utils/validation_utils.dart';

part 'login_use_case.freezed.dart';

@Injectable()
class LoginUseCase extends BaseFutureUseCase<LoginInput, LoginOutput> {
  const LoginUseCase(this._repository);

  final AuthRepository _repository;

  @protected
  @override
  Future<LoginOutput> buildUseCase(LoginInput input) async {
    if (!ValidationUtils.isValidPassword(input.password)) {
      throw const ValidationException('Mật khẩu không hợp lệ');
    }

    final isEmail = ValidationUtils.isValidEmail(input.username);
    final isPhone = ValidationUtils.isValidPhoneNumber(input.username);

    if (!isEmail && !isPhone) {
      throw const ValidationException('Email hoặc số điện thoại không hợp lệ');
    }

    // 1. Đăng nhập bằng Email/Password qua Firebase
    final user = await _repository.loginWithEmail(input.username, input.password);

    return LoginOutput(user);
  }
}

@freezed
class LoginInput extends BaseInput with _$LoginInput {
  const factory LoginInput({
    required String username,
    required String password,
  }) = _LoginInput;
}

@freezed
class LoginOutput extends BaseOutput with _$LoginOutput {
  const factory LoginOutput(User? user) = _LoginOutput;

  const LoginOutput._();
}
