import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/auth/domain/entity/user.dart';
import 'package:tanlu_management/features/auth/domain/repositories/auth_repository.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_output.dart';

part 'get_initial_auth_data_use_case.freezed.dart';

@Injectable()
class GetInitialAuthDataUseCase
    extends
        BaseFutureUseCase<GetInitialAuthDataInput, GetInitialAuthDataOutput> {
  const GetInitialAuthDataUseCase(this._repository);

  final AuthRepository _repository;

  @protected
  @override
  Future<GetInitialAuthDataOutput> buildUseCase(
    GetInitialAuthDataInput input,
  ) async {
    return GetInitialAuthDataOutput(
      isLoggedIn: await _repository.isLoggedIn,
      user: _repository.getCurrentUser(),
    );
  }
}

@freezed
class GetInitialAuthDataInput extends BaseInput with _$GetInitialAuthDataInput {
  const factory GetInitialAuthDataInput() = _GetInitialAuthDataInput;
}

@freezed
class GetInitialAuthDataOutput extends BaseOutput
    with _$GetInitialAuthDataOutput {
  const factory GetInitialAuthDataOutput({
    @Default(false) bool isLoggedIn,
    User? user,
  }) = _GetInitialAuthDataOutput;

  const GetInitialAuthDataOutput._();
}
