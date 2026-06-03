import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/auth/domain/repositories/auth_repository.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_output.dart';

part 'logout_use_case.freezed.dart';

@Injectable()
class LogoutUseCase extends BaseFutureUseCase<LogoutInput, LogoutOutput> {
  const LogoutUseCase(this._repository);

  final AuthRepository _repository;

  @protected
  @override
  Future<LogoutOutput> buildUseCase(LogoutInput input) async {
    await _repository.logout();
    return LogoutOutput();
  }
}

@freezed
class LogoutInput extends BaseInput with _$LogoutInput {
  const factory LogoutInput() = _LogoutInput;
}

@freezed
class LogoutOutput extends BaseOutput with _$LogoutOutput {
  const factory LogoutOutput() = _LogoutOutput;

  const LogoutOutput._();
}
