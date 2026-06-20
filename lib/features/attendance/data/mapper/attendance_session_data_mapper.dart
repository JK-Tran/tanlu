import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/attendance/data/model/attendance_session_data.dart';
import 'package:tanlu_management/features/attendance/domain/entity/attendance_session.dart';
import 'package:tanlu_management/shared/infrastructure/mapper/base_data_mapper.dart';
import 'package:tanlu_management/shared/services/firebase/firestore_json.dart';
import 'package:tanlu_management/shared/utils/date_time_utils.dart';

@injectable
class AttendanceSessionDataMapper
    extends BaseDataMapper<AttendanceSessionData, AttendanceSession>
    with DataMapperMixin<AttendanceSessionData, AttendanceSession> {
  @override
  AttendanceSession mapToEntity(AttendanceSessionData? model) {
    return AttendanceSession(
      id: model?.id ?? '',
      classId: model?.classId ?? '',
      date: DateTimeUtils.parseDateTimeDateOnly(model?.date),
      isCheckInCompleted: model?.isCheckInCompleted ?? false,
      isCheckOutCompleted: model?.isCheckOutCompleted ?? false,
      completedAt: model?.completedAt,
    );
  }

  @override
  AttendanceSessionData mapToData(AttendanceSession entity) {
    return AttendanceSessionData(
      id: entity.id,
      classId: entity.classId,
      date: FirestoreJson.dateOnlyToFirestore(entity.date),
      isCheckInCompleted: entity.isCheckInCompleted,
      isCheckOutCompleted: entity.isCheckOutCompleted,
      completedAt: entity.completedAt,
    );
  }
}
