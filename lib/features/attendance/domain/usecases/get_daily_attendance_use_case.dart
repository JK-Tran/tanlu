import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/attendance/domain/entity/daily_attendance_result.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_output.dart';

import '../repositories/attendance_repository.dart';

part 'get_daily_attendance_use_case.freezed.dart';

@Injectable()
class GetDailyAttendanceUseCase
    extends
        BaseFutureUseCase<GetDailyAttendanceInput, GetDailyAttendanceOutput> {
  GetDailyAttendanceUseCase(this._repository);

  final AttendanceRepository _repository;

  @protected
  @override
  Future<GetDailyAttendanceOutput> buildUseCase(
    GetDailyAttendanceInput input,
  ) async {
    final result = await _repository.getDailyAttendance(date: input.date);
    return GetDailyAttendanceOutput(dailyAttendance: result);
  }
}

@freezed
class GetDailyAttendanceInput extends BaseInput with _$GetDailyAttendanceInput {
  const factory GetDailyAttendanceInput({String? date}) =
      _GetDailyAttendanceInput;
}

@freezed
class GetDailyAttendanceOutput extends BaseOutput
    with _$GetDailyAttendanceOutput {
  const factory GetDailyAttendanceOutput({
    required DailyAttendanceResult dailyAttendance,
  }) = _GetDailyAttendanceOutput;
}
