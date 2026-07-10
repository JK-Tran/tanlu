import 'package:freezed_annotation/freezed_annotation.dart';

part 'student_attendance_data.freezed.dart';
part 'student_attendance_data.g.dart';

/// Data model cho 1 phần tử trong `attendances[]` của POST body chốt sổ sáng.
@freezed
class StudentAttendanceData with _$StudentAttendanceData {
  const factory StudentAttendanceData({
    @JsonKey(name: 'studentId') int? studentId,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'checkInTime') String? checkInTime,
    @JsonKey(name: 'note') String? note,
  }) = _StudentAttendanceData;

  const StudentAttendanceData._();
  factory StudentAttendanceData.fromJson(Map<String, dynamic> json) =>
      _$StudentAttendanceDataFromJson(json);
}
