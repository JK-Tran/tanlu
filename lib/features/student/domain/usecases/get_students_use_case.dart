import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/student/domain/entity/student.dart';
import 'package:tanlu_management/features/student/domain/repositories/student_repository.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_output.dart';

part 'get_students_use_case.freezed.dart';

@Injectable()
class GetStudentsUseCase
    extends BaseFutureUseCase<GetStudentsInput, GetStudentsOutput> {
  const GetStudentsUseCase(this._repository);

  final StudentRepository _repository;

  @protected
  @override
  Future<GetStudentsOutput> buildUseCase(GetStudentsInput input) async {
    return GetStudentsOutput(await _repository.getStudents());
  }
}

@freezed
class GetStudentsInput extends BaseInput with _$GetStudentsInput {
  const factory GetStudentsInput() = _GetStudentsInput;
}

@freezed
class GetStudentsOutput extends BaseOutput with _$GetStudentsOutput {
  const factory GetStudentsOutput(List<Student> students) = _GetStudentsOutput;

  const GetStudentsOutput._();
}
