import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/attendance/data/model/attendance_summary_data.dart';
import 'package:tanlu_management/features/attendance/domain/entity/attendance_summary.dart';
import 'package:tanlu_management/shared/infrastructure/data/base/base_data_mapper.dart';

@Injectable()
class AttendanceSummaryDataMapper
    extends BaseDataMapper<AttendanceSummaryData, AttendanceSummary>
    with DataMapperMixin<AttendanceSummaryData, AttendanceSummary> {
  AttendanceSummaryDataMapper();

  @override
  AttendanceSummary mapToEntity(AttendanceSummaryData? data) {
    return AttendanceSummary(
      total: data?.total ?? 0,
      present: data?.present ?? 0,
      absentExcused: data?.absentExcused ?? 0,
      absentUnexcused: data?.absentUnexcused ?? 0,
      leaveRequests: data?.leaveRequests ?? 0,
    );
  }

  @override
  AttendanceSummaryData mapToData(AttendanceSummary entity) {
    return AttendanceSummaryData(
      total: entity.total,
      present: entity.present,
      absentExcused: entity.absentExcused,
      absentUnexcused: entity.absentUnexcused,
      leaveRequests: entity.leaveRequests,
    );
  }
}
