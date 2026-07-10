import 'package:freezed_annotation/freezed_annotation.dart';

import 'student_attendance_data.dart';

part 'attendance_sheet_data.freezed.dart';
part 'attendance_sheet_data.g.dart';

/// Data model cho body của POST /me/attendances/daily (chốt sổ sáng).
@freezed
class AttendanceSheetData with _$AttendanceSheetData {
  const factory AttendanceSheetData({
    @JsonKey(name: 'date') required String date,
    @JsonKey(name: 'attendances') StudentAttendanceData? attendances,
  }) = _AttendanceSheetData;

  const AttendanceSheetData._();
  factory AttendanceSheetData.fromJson(Map<String, dynamic> json) =>
      _$AttendanceSheetDataFromJson(json);
}
