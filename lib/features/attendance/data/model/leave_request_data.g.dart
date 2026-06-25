// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'leave_request_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LeaveRequestDataImpl _$$LeaveRequestDataImplFromJson(
  Map<String, dynamic> json,
) => _$LeaveRequestDataImpl(
  id: json['id'] as String?,
  studentId: json['studentId'] as String?,
  studentName: json['studentName'] as String?,
  classId: json['classId'] as String?,
  parentId: json['parentId'] as String?,
  senderName: json['senderName'] as String?,
  senderAvatarUrl: json['senderAvatarUrl'] as String?,
  studentAvatarUrl: json['studentAvatarUrl'] as String?,
  date: FirestoreJson.toDateString(json['date']),
  reason: json['reason'] as String?,
  status: json['status'] as String?,
  submittedAt: FirestoreJson.toDateTime(json['submittedAt']),
  reviewedBy: json['reviewedBy'] as String?,
);

Map<String, dynamic> _$$LeaveRequestDataImplToJson(
  _$LeaveRequestDataImpl instance,
) => <String, dynamic>{
  'studentId': instance.studentId,
  'studentName': instance.studentName,
  'classId': instance.classId,
  'parentId': instance.parentId,
  'senderName': instance.senderName,
  'senderAvatarUrl': instance.senderAvatarUrl,
  'studentAvatarUrl': instance.studentAvatarUrl,
  'date': instance.date,
  'reason': instance.reason,
  'status': instance.status,
  'submittedAt': FirestoreJson.dateTimeToFirestore(instance.submittedAt),
  'reviewedBy': instance.reviewedBy,
};
