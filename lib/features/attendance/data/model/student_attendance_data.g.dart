// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_attendance_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StudentAttendanceDataImpl _$$StudentAttendanceDataImplFromJson(
  Map<String, dynamic> json,
) => _$StudentAttendanceDataImpl(
  studentId: (json['studentId'] as num?)?.toInt(),
  status: json['status'] as String?,
  checkInTime: json['checkInTime'] as String?,
  note: json['note'] as String?,
);

Map<String, dynamic> _$$StudentAttendanceDataImplToJson(
  _$StudentAttendanceDataImpl instance,
) => <String, dynamic>{
  'studentId': instance.studentId,
  'status': instance.status,
  'checkInTime': instance.checkInTime,
  'note': instance.note,
};
