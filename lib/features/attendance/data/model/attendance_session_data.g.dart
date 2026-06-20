// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attendance_session_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AttendanceSessionDataImpl _$$AttendanceSessionDataImplFromJson(
  Map<String, dynamic> json,
) => _$AttendanceSessionDataImpl(
  id: json['id'] as String?,
  classId: json['classId'] as String?,
  date: FirestoreJson.toDateString(json['date']),
  isCheckInCompleted: json['isCheckInCompleted'] as bool?,
  isCheckOutCompleted: json['isCheckOutCompleted'] as bool?,
  completedAt: FirestoreJson.toDateTime(json['completedAt']),
);

Map<String, dynamic> _$$AttendanceSessionDataImplToJson(
  _$AttendanceSessionDataImpl instance,
) => <String, dynamic>{
  'classId': instance.classId,
  'date': instance.date,
  'isCheckInCompleted': instance.isCheckInCompleted,
  'isCheckOutCompleted': instance.isCheckOutCompleted,
  'completedAt': FirestoreJson.dateTimeToFirestore(instance.completedAt),
};
