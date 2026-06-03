// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReportDataImpl _$$ReportDataImplFromJson(Map<String, dynamic> json) =>
    _$ReportDataImpl(
      id: (json['id'] as num?)?.toInt(),
      studentId: (json['studentId'] as num?)?.toInt(),
      reportMonth: json['reportMonth'] as String?,
      createdBy: (json['createdBy'] as num?)?.toInt(),
      approvedBy: (json['approvedBy'] as num?)?.toInt(),
      title: json['title'] as String?,
      teacherComment: json['teacherComment'] as String?,
      status: json['status'] as String?,
      sentAt: json['sentAt'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      student: json['student'] == null
          ? null
          : StudentData.fromJson(json['student'] as Map<String, dynamic>),
      creator: json['creator'] == null
          ? null
          : CreatorData.fromJson(json['creator'] as Map<String, dynamic>),
      approver: (json['approver'] as num?)?.toInt(),
      files: (json['files'] as List<dynamic>?)
          ?.map((e) => FileData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ReportDataImplToJson(_$ReportDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'studentId': instance.studentId,
      'reportMonth': instance.reportMonth,
      'createdBy': instance.createdBy,
      'approvedBy': instance.approvedBy,
      'title': instance.title,
      'teacherComment': instance.teacherComment,
      'status': instance.status,
      'sentAt': instance.sentAt,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'student': instance.student,
      'creator': instance.creator,
      'approver': instance.approver,
      'files': instance.files,
    };

_$CreatorDataImpl _$$CreatorDataImplFromJson(Map<String, dynamic> json) =>
    _$CreatorDataImpl(
      id: (json['id'] as num?)?.toInt(),
      fullName: json['fullName'] as String?,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$$CreatorDataImplToJson(_$CreatorDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fullName': instance.fullName,
      'email': instance.email,
    };

_$ReportsResponseDataImpl _$$ReportsResponseDataImplFromJson(
  Map<String, dynamic> json,
) => _$ReportsResponseDataImpl(
  reports: (json['reports'] as List<dynamic>)
      .map((e) => ReportData.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$$ReportsResponseDataImplToJson(
  _$ReportsResponseDataImpl instance,
) => <String, dynamic>{'reports': instance.reports};
