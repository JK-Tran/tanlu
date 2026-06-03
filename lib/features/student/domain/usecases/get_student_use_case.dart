import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/student/domain/entity/student.dart';
import 'package:tanlu_management/features/student/domain/repositories/student_repository.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_output.dart';

part 'get_student_use_case.freezed.dart';

@Injectable()
class GetStudentUseCase
    extends BaseFutureUseCase<GetStudentInput, GetStudentOutput> {
  const GetStudentUseCase(this._repository);

  final StudentRepository _repository;

  @protected
  @override
  Future<GetStudentOutput> buildUseCase(GetStudentInput input) async {
    return GetStudentOutput(await _repository.getStudentById(input.id));
  }
}

@freezed
class GetStudentInput extends BaseInput with _$GetStudentInput {
  const factory GetStudentInput(int id) = _GetStudentInput;
}

@freezed
class GetStudentOutput extends BaseOutput with _$GetStudentOutput {
  const factory GetStudentOutput(Student student) = _GetStudentOutput;

  const GetStudentOutput._();
}
