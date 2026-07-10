import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/attendance/data/mapper/leave_request_data_mapper.dart';
import 'package:tanlu_management/features/attendance/data/model/attendance_record_data.dart';
import 'package:tanlu_management/features/attendance/domain/entity/attendance_record.dart';
import 'package:tanlu_management/shared/infrastructure/data/base/base_data_mapper.dart';

@Injectable()
class AttendanceRecordDataMapper
    extends BaseDataMapper<AttendanceRecordData, AttendanceRecord>
    with DataMapperMixin<AttendanceRecordData, AttendanceRecord> {
  AttendanceRecordDataMapper(this._leaveRequestDataMapper);

  final LeaveRequestDataMapper _leaveRequestDataMapper;

  @override
  AttendanceRecord mapToEntity(AttendanceRecordData? data) {
    return AttendanceRecord(
      id: data?.id ?? '',
      studentId: data?.studentId ?? 0,
      studentCode: data?.studentCode ?? '',
      fullName: data?.fullName ?? '',
      avatarUrl: data?.avatarUrl ?? '',
      status: data?.status ?? '',
      note: data?.note ?? '',
      checkInTime: data?.checkInTime,
      checkOutTime: data?.checkOutTime,
      leaveRequest: _leaveRequestDataMapper.mapToEntity(data?.leaveRequest),
    );
  }

  @override
  AttendanceRecordData mapToData(AttendanceRecord entity) {
    return AttendanceRecordData(
      id: entity.id,
      studentId: entity.studentId,
      studentCode: entity.studentCode,
      fullName: entity.fullName,
      avatarUrl: entity.avatarUrl,
      status: entity.status,
      note: entity.note,
      checkInTime: entity.checkInTime,
      checkOutTime: entity.checkOutTime,
      leaveRequest: _leaveRequestDataMapper.mapToData(entity.leaveRequest),
    );
  }
}
