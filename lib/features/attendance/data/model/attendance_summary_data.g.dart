// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attendance_summary_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AttendanceSummaryDataImpl _$$AttendanceSummaryDataImplFromJson(
  Map<String, dynamic> json,
) => _$AttendanceSummaryDataImpl(
  total: (json['total'] as num?)?.toInt(),
  present: (json['present'] as num?)?.toInt(),
  absentExcused: (json['absent_excused'] as num?)?.toInt(),
  absentUnexcused: (json['absent_unexcused'] as num?)?.toInt(),
  leaveRequests: (json['leave_requests'] as num?)?.toInt(),
);

Map<String, dynamic> _$$AttendanceSummaryDataImplToJson(
  _$AttendanceSummaryDataImpl instance,
) => <String, dynamic>{
  'total': instance.total,
  'present': instance.present,
  'absent_excused': instance.absentExcused,
  'absent_unexcused': instance.absentUnexcused,
  'leave_requests': instance.leaveRequests,
};
