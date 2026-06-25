import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/attendance/data/model/attendance_data.dart';
import 'package:tanlu_management/features/attendance/domain/entity/attendance.dart';
import 'package:tanlu_management/shared/infrastructure/mapper/base_data_mapper.dart';
import 'package:tanlu_management/shared/services/firebase/firestore_json.dart';
import 'package:tanlu_management/shared/utils/date_time_utils.dart';

@injectable
class AttendanceDataMapper extends BaseDataMapper<AttendanceData, Attendance>
    with DataMapperMixin<AttendanceData, Attendance> {
  @override
  Attendance mapToEntity(AttendanceData? model) {
    return Attendance(
      id: model?.id ?? '',
      studentId: model?.studentId ?? '',
      classId: model?.classId ?? '',
      date: DateTimeUtils.parseDateTimeDateOnly(model?.date),
      status: model?.status ?? 'not_marked',
      checkInTime: model?.checkInTime,
      checkOutTime: model?.checkOutTime,
      note: model?.note,
      recordedBy: model?.recordedBy ?? '',
      createdAt: model?.createdAt,
      updatedAt: model?.updatedAt,
    );
  }

  @override
  AttendanceData mapToData(Attendance entity) {
    return AttendanceData(
      id: entity.id,
      studentId: entity.studentId,
      classId: entity.classId,
      date: FirestoreJson.dateOnlyToFirestore(entity.date),
      status: entity.status,
      checkInTime: entity.checkInTime,
      checkOutTime: entity.checkOutTime,
      note: entity.note,
      recordedBy: entity.recordedBy,
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
    );
  }
}
