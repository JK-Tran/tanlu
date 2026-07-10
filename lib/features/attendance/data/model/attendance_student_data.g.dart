// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attendance_student_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AttendanceStudentDataImpl _$$AttendanceStudentDataImplFromJson(
  Map<String, dynamic> json,
) => _$AttendanceStudentDataImpl(
  studentId: (json['studentId'] as num?)?.toInt(),
  studentCode: json['studentCode'] as String?,
  fullName: json['fullName'] as String?,
  nickName: json['nickName'] as String?,
  avatarUrl: json['avatarUrl'] as String?,
  status: json['status'] as String?,
  isExcused: json['isExcused'] as bool?,
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

Map<String, dynamic> _$$AttendanceStudentDataImplToJson(
  _$AttendanceStudentDataImpl instance,
) => <String, dynamic>{
  'studentId': instance.studentId,
  'studentCode': instance.studentCode,
  'fullName': instance.fullName,
  'nickName': instance.nickName,
  'avatarUrl': instance.avatarUrl,
  'status': instance.status,
  'isExcused': instance.isExcused,
  'note': instance.note,
  'checkInTime': instance.checkInTime?.toIso8601String(),
  'checkOutTime': instance.checkOutTime?.toIso8601String(),
  'leaveRequest': instance.leaveRequest,
};
