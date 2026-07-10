import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/attendance/data/model/leave_request_data.dart';
import 'package:tanlu_management/features/attendance/domain/entity/leave_request.dart';
import 'package:tanlu_management/features/student/data/mapper/class_info_data_mapper.dart';
import 'package:tanlu_management/features/student/data/mapper/parent_data_mapper.dart';
import 'package:tanlu_management/features/student/data/mapper/student_data_mapper.dart';
import 'package:tanlu_management/shared/infrastructure/data/base/base_data_mapper.dart';

@Injectable()
class LeaveRequestDataMapper
    extends BaseDataMapper<LeaveRequestData, LeaveRequest>
    with DataMapperMixin<LeaveRequestData, LeaveRequest> {
  LeaveRequestDataMapper(
    this._studentDataMapper,
    this._classInfoDataMapper,
    this._parentDataMapper,
  );

  final StudentDataMapper _studentDataMapper;
  final ClassInfoDataMapper _classInfoDataMapper;
  final ParentDataMapper _parentDataMapper;

  @override
  LeaveRequest mapToEntity(LeaveRequestData? data) {
    return LeaveRequest(
      id: data?.id ?? 0,
      student: _studentDataMapper.mapToEntity(data?.student),
      classInfo: _classInfoDataMapper.mapToEntity(data?.classInfo),
      date: DateTime.tryParse(data?.date ?? ''),
      reason: data?.reason ?? '',
      note: data?.note ?? '',
      status: data?.status ?? '',
      parent: _parentDataMapper.mapToEntity(data?.parent),
      submittedAt: DateTime.tryParse(data?.submittedAt ?? ''),
      decidedAt: DateTime.tryParse(data?.decidedAt ?? ''),
      decidedBy: data?.decidedBy ?? 0,
      decisionNote: data?.decisionNote ?? '',
    );
  }

  @override
  LeaveRequestData mapToData(LeaveRequest entity) {
    return LeaveRequestData(
      id: entity.id,
      student: _studentDataMapper.mapToData(entity.student),
      classInfo: _classInfoDataMapper.mapToData(entity.classInfo),
      date: entity.date?.toIso8601String(),
      reason: entity.reason,
      note: entity.note,
      status: entity.status,
      parent: _parentDataMapper.mapToData(entity.parent),
      submittedAt: entity.submittedAt?.toIso8601String(),
      decidedAt: entity.decidedAt?.toIso8601String(),
      decidedBy: entity.decidedBy,
      decisionNote: entity.decisionNote,
    );
  }
}
