import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/student/domain/entity/student.dart';
import 'package:tanlu_management/features/student/domain/repositories/student_repository.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_output.dart';

part 'get_all_student_by_class_id.freezed.dart';

@Injectable()
class GetAllStudentByClassIdUseCase
    extends
        BaseFutureUseCase<
          GetAllStudentByClassIdInput,
          GetAllStudentByClassIdOutput
        > {
  const GetAllStudentByClassIdUseCase(this._studentRepository);

  final StudentRepository _studentRepository;

  @protected
  @override
  Future<GetAllStudentByClassIdOutput> buildUseCase(
    GetAllStudentByClassIdInput input,
  ) async {
    final students = await _studentRepository.getStudentsByClassId(
      classId: input.classId,
      gender: input.gender,
      searchKeyword: input.searchKeyword,
    );
    return GetAllStudentByClassIdOutput(students);
  }
}

@freezed
class GetAllStudentByClassIdInput extends BaseInput
    with _$GetAllStudentByClassIdInput {
  const factory GetAllStudentByClassIdInput({
    required String classId,
    String? gender,
    String? searchKeyword,
  }) = _GetAllStudentByClassIdInput;
}

@freezed
class GetAllStudentByClassIdOutput extends BaseOutput
    with _$GetAllStudentByClassIdOutput {
  const factory GetAllStudentByClassIdOutput(List<Student> students) =
      _GetAllStudentByClassIdOutput;

  const GetAllStudentByClassIdOutput._();
}
