import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/attendance/data/mapper/leave_request_data_mapper.dart';
import 'package:tanlu_management/features/attendance/data/model/attendance_student_data.dart';
import 'package:tanlu_management/features/attendance/domain/entity/attendance_student.dart';
import 'package:tanlu_management/shared/infrastructure/data/base/base_data_mapper.dart';

@Injectable()
class AttendanceStudentDataMapper
    extends BaseDataMapper<AttendanceStudentData, AttendanceStudent>
    with DataMapperMixin<AttendanceStudentData, AttendanceStudent> {
  AttendanceStudentDataMapper(this._leaveRequestDataMapper);

  final LeaveRequestDataMapper _leaveRequestDataMapper;

  @override
  AttendanceStudent mapToEntity(AttendanceStudentData? data) {
    return AttendanceStudent(
      studentId: data?.studentId ?? 0,
      studentCode: data?.studentCode ?? '',
      fullName: data?.fullName ?? '',
      nickName: data?.nickName ?? '',
      avatarUrl: data?.avatarUrl ?? '',
      status: _normalizeStatus(data?.status ?? '', data?.isExcused ?? false),
      isExcused: data?.isExcused ?? false,
      note: data?.note ?? '',
      checkInTime: data?.checkInTime,
      checkOutTime: data?.checkOutTime,
      leaveRequest: _leaveRequestDataMapper.mapToEntity(data?.leaveRequest),
    );
  }

  @override
  AttendanceStudentData mapToData(AttendanceStudent entity) {
    return AttendanceStudentData(
      studentId: entity.studentId,
      studentCode: entity.studentCode,
      fullName: entity.fullName,
      nickName: entity.nickName,
      avatarUrl: entity.avatarUrl,
      status: entity.status,
      isExcused: entity.isExcused,
      note: entity.note,
      checkInTime: entity.checkInTime,
      checkOutTime: entity.checkOutTime,
      leaveRequest: _leaveRequestDataMapper.mapToData(entity.leaveRequest),
    );
  }

  /// Server trả về `status: "absent"` + `isExcused: true` thay vì `"absent_excused"`.
  /// Normalize về chuẩn app để UI và logic không cần xử lý riêng.
  String _normalizeStatus(String status, bool isExcused) {
    if (status == 'absent' && isExcused) return 'absent_excused';
    if (status == 'absent' && !isExcused) return 'absent_unexcused';
    return status;
  }
}
