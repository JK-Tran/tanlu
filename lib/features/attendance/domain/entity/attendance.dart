import 'package:freezed_annotation/freezed_annotation.dart';

part 'attendance.freezed.dart';

@freezed
class Attendance with _$Attendance {
  const factory Attendance({
    @Default('') String id,
    @Default('') String studentId,
    @Default('') String classId,
    DateTime? date,
    @Default('') String status,
    DateTime? checkInTime,
    DateTime? checkOutTime,
    String? note,
    @Default('') String recordedBy,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _Attendance;
}
