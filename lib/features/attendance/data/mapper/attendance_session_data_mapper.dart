import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/attendance/data/model/attendance_session_data.dart';
import 'package:tanlu_management/features/attendance/domain/entity/attendance_session.dart';
import 'package:tanlu_management/shared/infrastructure/data/base/base_data_mapper.dart';

@Injectable()
class AttendanceSessionDataMapper
    extends BaseDataMapper<AttendanceSessionData, AttendanceSession>
    with DataMapperMixin<AttendanceSessionData, AttendanceSession> {
  AttendanceSessionDataMapper();

  @override
  AttendanceSession mapToEntity(AttendanceSessionData? data) {
    return AttendanceSession(
      isCheckInCompleted: data?.isCheckInCompleted ?? false,
      isCheckOutCompleted: data?.isCheckOutCompleted ?? false,
      completedAt: data?.completedAt,
    );
  }

  @override
  AttendanceSessionData mapToData(AttendanceSession entity) {
    return AttendanceSessionData(
      isCheckInCompleted: entity.isCheckInCompleted,
      isCheckOutCompleted: entity.isCheckOutCompleted,
      completedAt: entity.completedAt,
    );
  }
}
