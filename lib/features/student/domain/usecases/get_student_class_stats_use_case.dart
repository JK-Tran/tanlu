import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/student/domain/entity/student_class_stats.dart';
import 'package:tanlu_management/features/student/domain/repositories/student_repository.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_output.dart';

part 'get_student_class_stats_use_case.freezed.dart';

@Injectable()
class GetStudentClassStatsUseCase
    extends
        BaseFutureUseCase<
          GetStudentClassStatsInput,
          GetStudentClassStatsOutput
        > {
  GetStudentClassStatsUseCase(this._repository);

  final StudentRepository _repository;

  @protected
  @override
  Future<GetStudentClassStatsOutput> buildUseCase(
    GetStudentClassStatsInput input,
  ) async {
    final stats = await _repository.getClassStats(input.classId);
    return GetStudentClassStatsOutput(stats);
  }
}

@freezed
class GetStudentClassStatsInput extends BaseInput
    with _$GetStudentClassStatsInput {
  const factory GetStudentClassStatsInput({required String classId}) =
      _GetStudentClassStatsInput;
}

@freezed
class GetStudentClassStatsOutput extends BaseOutput
    with _$GetStudentClassStatsOutput {
  const factory GetStudentClassStatsOutput(StudentClassStats stats) =
      _GetStudentClassStatsOutput;
}
