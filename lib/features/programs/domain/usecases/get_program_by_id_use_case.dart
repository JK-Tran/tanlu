import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/programs/domain/entity/program.dart';
import 'package:tanlu_management/features/programs/domain/repositories/program_repository.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_output.dart';

part 'get_program_by_id_use_case.freezed.dart';

@Injectable()
class GetProgramByIdUseCase
    extends BaseFutureUseCase<GetProgramByIdInput, GetProgramByIdOutput> {
  const GetProgramByIdUseCase(this._repository);

  final ProgramRepository _repository;

  @protected
  @override
  Future<GetProgramByIdOutput> buildUseCase(GetProgramByIdInput input) async {
    final response = await _repository.getProgramById(id: input.id);
    return GetProgramByIdOutput(response);
  }
}

@freezed
class GetProgramByIdInput extends BaseInput with _$GetProgramByIdInput {
  const factory GetProgramByIdInput({required int id}) = _GetProgramByIdInput;
}

@freezed
class GetProgramByIdOutput extends BaseOutput with _$GetProgramByIdOutput {
  const factory GetProgramByIdOutput(Program program) = _GetProgramByIdOutput;
}
