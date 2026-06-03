import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/student/domain/entity/student.dart';
import 'package:tanlu_management/features/student/domain/repositories/student_repository.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_output.dart';

part 'update_student_use_case.freezed.dart';

@Injectable()
class UpdateStudentUseCase
    extends BaseFutureUseCase<UpdateStudentInput, UpdateStudentOutput> {
  const UpdateStudentUseCase(this._repository);

  final StudentRepository _repository;

  @protected
  @override
  Future<UpdateStudentOutput> buildUseCase(UpdateStudentInput input) async {
    return UpdateStudentOutput(
      await _repository.updateStudent(input.id, input.data),
    );
  }
}

@freezed
class UpdateStudentInput extends BaseInput with _$UpdateStudentInput {
  const factory UpdateStudentInput({
    required int id,
    required Map<String, dynamic> data,
  }) = _UpdateStudentInput;
}

@freezed
class UpdateStudentOutput extends BaseOutput with _$UpdateStudentOutput {
  const factory UpdateStudentOutput(Student student) = _UpdateStudentOutput;

  const UpdateStudentOutput._();
}
