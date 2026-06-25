import 'package:freezed_annotation/freezed_annotation.dart';

part 'leave_request.freezed.dart';

@freezed
class LeaveRequest with _$LeaveRequest {
  const factory LeaveRequest({
    @Default('') String id,
    @Default('') String studentId,
    @Default('') String studentName,
    @Default('') String classId,
    @Default('') String parentId,
    @Default('') String senderName,
    @Default('') String senderAvatarUrl,
    @Default('') String studentAvatarUrl,
    DateTime? date,
    @Default('') String reason,
    @Default('pending') String status,
    DateTime? submittedAt,
    String? reviewedBy,
  }) = _LeaveRequest;
}
