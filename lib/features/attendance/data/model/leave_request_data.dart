import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tanlu_management/shared/services/firebase/firestore_json.dart';

part 'leave_request_data.freezed.dart';
part 'leave_request_data.g.dart';

@freezed
class LeaveRequestData with _$LeaveRequestData {
  const factory LeaveRequestData({
    @JsonKey(name: 'id', includeToJson: false) String? id,
    @JsonKey(name: 'studentId') String? studentId,
    @JsonKey(name: 'studentName') String? studentName,
    @JsonKey(name: 'classId') String? classId,
    @JsonKey(name: 'parentId') String? parentId,
    @JsonKey(name: 'senderName') String? senderName,
    @JsonKey(name: 'senderAvatarUrl') String? senderAvatarUrl,
    @JsonKey(name: 'studentAvatarUrl') String? studentAvatarUrl,
    @JsonKey(name: 'date', fromJson: FirestoreJson.toDateString) String? date,
    @JsonKey(name: 'reason') String? reason,
    @JsonKey(name: 'status') String? status,
    @JsonKey(
      name: 'submittedAt',
      fromJson: FirestoreJson.toDateTime,
      toJson: FirestoreJson.dateTimeToFirestore,
    )
    DateTime? submittedAt,
    @JsonKey(name: 'reviewedBy') String? reviewedBy,
  }) = _LeaveRequestData;

  factory LeaveRequestData.fromJson(Map<String, dynamic> json) =>
      _$LeaveRequestDataFromJson(json);
}
