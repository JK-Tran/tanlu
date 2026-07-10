import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/auth/domain/entity/user.dart';
import 'package:tanlu_management/features/auth/domain/repositories/auth_repository.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_output.dart';

part 'get_me_use_case.freezed.dart';

@Injectable()
class GetMeUseCase extends BaseFutureUseCase<GetMeInput, GetMeOutput> {
  const GetMeUseCase(this._repository);

  final AuthRepository _repository;

  @protected
  @override
  Future<GetMeOutput> buildUseCase(GetMeInput input) async {
    final user = await _repository.getMe();

    return GetMeOutput(user: user);
  }
}

@freezed
class GetMeInput extends BaseInput with _$GetMeInput {
  const factory GetMeInput() = _GetMeInput;
}

@freezed
class GetMeOutput extends BaseOutput with _$GetMeOutput {
  const factory GetMeOutput({required User user}) = _GetMeOutput;

  const GetMeOutput._();
}
