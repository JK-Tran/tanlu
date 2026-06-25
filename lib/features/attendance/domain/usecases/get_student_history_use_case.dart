import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/attendance/domain/entity/attendance.dart';
import 'package:tanlu_management/features/attendance/domain/repositories/attendance_repository.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_output.dart';
import 'package:tanlu_management/shared/utils/date_time_utils.dart';

part 'get_student_history_use_case.freezed.dart';

@Injectable()
class GetStudentHistoryUseCase
    extends BaseFutureUseCase<GetStudentHistoryInput, GetStudentHistoryOutput> {
  const GetStudentHistoryUseCase(this._repository);

  final AttendanceRepository _repository;

  @protected
  @override
  Future<GetStudentHistoryOutput> buildUseCase(
    GetStudentHistoryInput input,
  ) async {
    final startStr =
        DateTimeUtils.formatDateTimeDateOnly(input.startDate) ?? '';
    final endStr = DateTimeUtils.formatDateTimeDateOnly(input.endDate) ?? '';

    final attendances = await _repository.getAttendanceHistory(
      studentId: input.studentId,
      startDate: startStr,
      endDate: endStr,
    );

    return GetStudentHistoryOutput(attendances);
  }
}

@freezed
class GetStudentHistoryInput extends BaseInput with _$GetStudentHistoryInput {
  const factory GetStudentHistoryInput({
    required String studentId,
    required DateTime startDate,
    required DateTime endDate,
  }) = _GetStudentHistoryInput;
}

@freezed
class GetStudentHistoryOutput extends BaseOutput
    with _$GetStudentHistoryOutput {
  const factory GetStudentHistoryOutput(List<Attendance> attendances) =
      _GetStudentHistoryOutput;

  const GetStudentHistoryOutput._();
}
