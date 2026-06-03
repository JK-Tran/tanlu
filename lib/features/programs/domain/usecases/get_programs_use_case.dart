import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/programs/domain/entity/program.dart';
import 'package:tanlu_management/features/programs/domain/repositories/program_repository.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_output.dart';

part 'get_programs_use_case.freezed.dart';

@Injectable()
class GetProgramsUseCase
    extends BaseFutureUseCase<GetProgramsInput, GetProgramsOutput> {
  const GetProgramsUseCase(this._repository);

  final ProgramRepository _repository;

  @protected
  @override
  Future<GetProgramsOutput> buildUseCase(GetProgramsInput input) async {
    return GetProgramsOutput(await _repository.getPrograms());
  }
}

@freezed
class GetProgramsInput extends BaseInput with _$GetProgramsInput {
  const factory GetProgramsInput() = _GetProgramsInput;
}

@freezed
class GetProgramsOutput extends BaseOutput with _$GetProgramsOutput {
  const factory GetProgramsOutput(List<Program> programs) = _GetProgramsOutput;
}
