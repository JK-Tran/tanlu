// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attendance_session_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AttendanceSessionDataImpl _$$AttendanceSessionDataImplFromJson(
  Map<String, dynamic> json,
) => _$AttendanceSessionDataImpl(
  isCheckInCompleted: json['isCheckInCompleted'] as bool?,
  isCheckOutCompleted: json['isCheckOutCompleted'] as bool?,
  completedAt: json['completedAt'] == null
      ? null
      : DateTime.parse(json['completedAt'] as String),
);

Map<String, dynamic> _$$AttendanceSessionDataImplToJson(
  _$AttendanceSessionDataImpl instance,
) => <String, dynamic>{
  'isCheckInCompleted': instance.isCheckInCompleted,
  'isCheckOutCompleted': instance.isCheckOutCompleted,
  'completedAt': instance.completedAt?.toIso8601String(),
};
