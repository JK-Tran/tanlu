import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/auth/domain/entity/user.dart';
import 'package:tanlu_management/features/auth/domain/repositories/auth_repository.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_output.dart';

part 'save_current_user_use_case.freezed.dart';

@Injectable()
class SaveCurrentUserUseCase
    extends BaseFutureUseCase<SaveCurrentUserInput, SaveCurrentUserOutput> {
  const SaveCurrentUserUseCase(this._repository);

  final AuthRepository _repository;

  @protected
  @override
  Future<SaveCurrentUserOutput> buildUseCase(SaveCurrentUserInput input) async {
    await _repository.saveCurrentUser(input.currentUser);
    return const SaveCurrentUserOutput();
  }
}

@freezed
class SaveCurrentUserInput extends BaseInput with _$SaveCurrentUserInput {
  const factory SaveCurrentUserInput({required User currentUser}) =
      _SaveCurrentUserInput;
}

@freezed
class SaveCurrentUserOutput extends BaseOutput with _$SaveCurrentUserOutput {
  const factory SaveCurrentUserOutput() = _SaveCurrentUserOutput;

  const SaveCurrentUserOutput._();
}
