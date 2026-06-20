import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/attendance/data/model/leave_request_data.dart';
import 'package:tanlu_management/features/attendance/domain/entity/leave_request.dart';
import 'package:tanlu_management/shared/infrastructure/mapper/base_data_mapper.dart';
import 'package:tanlu_management/shared/services/firebase/firestore_json.dart';
import 'package:tanlu_management/shared/utils/date_time_utils.dart';

@injectable
class LeaveRequestDataMapper
    extends BaseDataMapper<LeaveRequestData, LeaveRequest>
    with DataMapperMixin<LeaveRequestData, LeaveRequest> {
  @override
  LeaveRequest mapToEntity(LeaveRequestData? model) {
    return LeaveRequest(
      id: model?.id ?? '',
      studentId: model?.studentId ?? '',
      studentName: model?.studentName ?? '',
      classId: model?.classId ?? '',
      parentId: model?.parentId ?? '',
      senderName: model?.senderName ?? '',
      senderAvatarUrl: model?.senderAvatarUrl ?? '',
      studentAvatarUrl: model?.studentAvatarUrl ?? '',
      date: DateTimeUtils.parseDateTimeDateOnly(model?.date),
      reason: model?.reason ?? '',
      status: model?.status ?? 'pending',
      submittedAt: model?.submittedAt,
      reviewedBy: model?.reviewedBy,
    );
  }

  @override
  LeaveRequestData mapToData(LeaveRequest entity) {
    return LeaveRequestData(
      id: entity.id,
      studentId: entity.studentId,
      studentName: entity.studentName,
      classId: entity.classId,
      parentId: entity.parentId,
      senderName: entity.senderName,
      senderAvatarUrl: entity.senderAvatarUrl.isEmpty
          ? null
          : entity.senderAvatarUrl,
      studentAvatarUrl: entity.studentAvatarUrl.isEmpty
          ? null
          : entity.studentAvatarUrl,
      date: FirestoreJson.dateOnlyToFirestore(entity.date),
      reason: entity.reason,
      status: entity.status,
      submittedAt: entity.submittedAt,
      reviewedBy: entity.reviewedBy,
    );
  }
}
