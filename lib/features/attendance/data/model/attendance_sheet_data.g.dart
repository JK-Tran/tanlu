// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attendance_sheet_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AttendanceSheetDataImpl _$$AttendanceSheetDataImplFromJson(
  Map<String, dynamic> json,
) => _$AttendanceSheetDataImpl(
  date: json['date'] as String,
  attendances: json['attendances'] == null
      ? null
      : StudentAttendanceData.fromJson(
          json['attendances'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$$AttendanceSheetDataImplToJson(
  _$AttendanceSheetDataImpl instance,
) => <String, dynamic>{
  'date': instance.date,
  'attendances': instance.attendances,
};
