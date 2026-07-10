// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_attendance_result_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DailyAttendanceResultDataImpl _$$DailyAttendanceResultDataImplFromJson(
  Map<String, dynamic> json,
) => _$DailyAttendanceResultDataImpl(
  date: json['date'] as String?,
  session: json['session'] == null
      ? null
      : AttendanceSessionData.fromJson(json['session'] as Map<String, dynamic>),
  summary: json['summary'] == null
      ? null
      : AttendanceSummaryData.fromJson(json['summary'] as Map<String, dynamic>),
  roster: (json['roster'] as List<dynamic>?)
      ?.map((e) => AttendanceStudentData.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$$DailyAttendanceResultDataImplToJson(
  _$DailyAttendanceResultDataImpl instance,
) => <String, dynamic>{
  'date': instance.date,
  'session': instance.session,
  'summary': instance.summary,
  'roster': instance.roster,
};
