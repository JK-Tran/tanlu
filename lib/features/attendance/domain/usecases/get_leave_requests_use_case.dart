import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../shared/constants/ui/paging_constants.dart';
import '../../../../shared/infrastructure/domain/entity/paged_list.dart';
import '../../../../shared/infrastructure/domain/usecase/future/base_load_more_use_case.dart';
import '../../../../shared/infrastructure/domain/usecase/io/base_input.dart';
import '../entity/leave_request.dart';
import '../repositories/attendance_repository.dart';

part 'get_leave_requests_use_case.freezed.dart';

@Injectable()
class GetLeaveRequestsUseCase
    extends BaseLoadMoreUseCase<GetLeaveRequestsInput, LeaveRequest> {
  GetLeaveRequestsUseCase(this._repository)
    : super(initPage: PagingConstants.initialPage);

  final AttendanceRepository _repository;

  @protected
  @override
  Future<PagedList<LeaveRequest>> buildUseCase(
    GetLeaveRequestsInput input,
  ) async {
    return _repository.getLeaveRequests(page: page, limit: input.limit);
  }
}

@freezed
class GetLeaveRequestsInput extends BaseInput with _$GetLeaveRequestsInput {
  const factory GetLeaveRequestsInput({@Default(10) int limit}) =
      _GetLeaveRequestsInput;
}
