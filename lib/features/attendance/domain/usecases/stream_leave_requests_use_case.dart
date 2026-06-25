import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/attendance/domain/entity/leave_request.dart';
import 'package:tanlu_management/features/attendance/domain/repositories/attendance_repository.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/stream/base_stream_use_case.dart';

part 'stream_leave_requests_use_case.freezed.dart';

@Injectable()
class StreamLeaveRequestsUseCase
    extends BaseStreamUseCase<StreamLeaveRequestsInput, List<LeaveRequest>> {
  const StreamLeaveRequestsUseCase(this._repository);

  final AttendanceRepository _repository;

  @override
  Stream<List<LeaveRequest>> buildUseCase(StreamLeaveRequestsInput input) {
    return _repository.streamLeaveRequests(input.classId, input.dateStr);
  }
}

@freezed
class StreamLeaveRequestsInput extends BaseInput
    with _$StreamLeaveRequestsInput {
  const factory StreamLeaveRequestsInput({
    required String classId,
    required String dateStr,
  }) = _StreamLeaveRequestsInput;
}
