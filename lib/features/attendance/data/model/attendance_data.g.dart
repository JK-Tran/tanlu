// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attendance_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AttendanceDataImpl _$$AttendanceDataImplFromJson(Map<String, dynamic> json) =>
    _$AttendanceDataImpl(
      id: json['id'] as String?,
      studentId: json['studentId'] as String?,
      classId: json['classId'] as String?,
      date: FirestoreJson.toDateString(json['date']),
      status: json['status'] as String?,
      checkInTime: FirestoreJson.toDateTime(json['checkInTime']),
      checkOutTime: FirestoreJson.toDateTime(json['checkOutTime']),
      note: json['note'] as String?,
      recordedBy: json['recordedBy'] as String?,
      createdAt: FirestoreJson.toDateTime(json['createdAt']),
      updatedAt: FirestoreJson.toDateTime(json['updatedAt']),
    );

Map<String, dynamic> _$$AttendanceDataImplToJson(
  _$AttendanceDataImpl instance,
) => <String, dynamic>{
  'studentId': instance.studentId,
  'classId': instance.classId,
  'date': instance.date,
  'status': instance.status,
  'checkInTime': FirestoreJson.dateTimeToFirestore(instance.checkInTime),
  'checkOutTime': FirestoreJson.dateTimeToFirestore(instance.checkOutTime),
  'note': instance.note,
  'recordedBy': instance.recordedBy,
  'createdAt': FirestoreJson.dateTimeToFirestore(instance.createdAt),
  'updatedAt': FirestoreJson.dateTimeToFirestore(instance.updatedAt),
};
