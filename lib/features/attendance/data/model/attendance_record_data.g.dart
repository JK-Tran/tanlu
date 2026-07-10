// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attendance_record_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AttendanceRecordDataImpl _$$AttendanceRecordDataImplFromJson(
  Map<String, dynamic> json,
) => _$AttendanceRecordDataImpl(
  id: json['id'] as String?,
  studentId: (json['studentId'] as num?)?.toInt(),
  studentCode: json['studentCode'] as String?,
  fullName: json['fullName'] as String?,
  avatarUrl: json['avatarUrl'] as String?,
  status: json['status'] as String?,
  note: json['note'] as String?,
  checkInTime: json['checkInTime'] == null
      ? null
      : DateTime.parse(json['checkInTime'] as String),
  checkOutTime: json['checkOutTime'] == null
      ? null
      : DateTime.parse(json['checkOutTime'] as String),
  leaveRequest: json['leaveRequest'] == null
      ? null
      : LeaveRequestData.fromJson(json['leaveRequest'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$AttendanceRecordDataImplToJson(
  _$AttendanceRecordDataImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'studentId': instance.studentId,
  'studentCode': instance.studentCode,
  'fullName': instance.fullName,
  'avatarUrl': instance.avatarUrl,
  'status': instance.status,
  'note': instance.note,
  'checkInTime': instance.checkInTime?.toIso8601String(),
  'checkOutTime': instance.checkOutTime?.toIso8601String(),
  'leaveRequest': instance.leaveRequest,
};
