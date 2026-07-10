// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'leave_request_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LeaveRequestDataImpl _$$LeaveRequestDataImplFromJson(
  Map<String, dynamic> json,
) => _$LeaveRequestDataImpl(
  id: (json['id'] as num?)?.toInt(),
  student: json['student'] == null
      ? null
      : StudentData.fromJson(json['student'] as Map<String, dynamic>),
  classInfo: json['class'] == null
      ? null
      : ClassInfoData.fromJson(json['class'] as Map<String, dynamic>),
  date: json['date'] as String?,
  reason: json['reason'] as String?,
  note: json['note'] as String?,
  status: json['status'] as String?,
  parent: json['parent'] == null
      ? null
      : ParentData.fromJson(json['parent'] as Map<String, dynamic>),
  submittedAt: json['submittedAt'] as String?,
  decidedAt: json['decidedAt'] as String?,
  decidedBy: (json['decidedBy'] as num?)?.toInt(),
  decisionNote: json['decisionNote'] as String?,
);

Map<String, dynamic> _$$LeaveRequestDataImplToJson(
  _$LeaveRequestDataImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'student': instance.student,
  'class': instance.classInfo,
  'date': instance.date,
  'reason': instance.reason,
  'note': instance.note,
  'status': instance.status,
  'parent': instance.parent,
  'submittedAt': instance.submittedAt,
  'decidedAt': instance.decidedAt,
  'decidedBy': instance.decidedBy,
  'decisionNote': instance.decisionNote,
};
