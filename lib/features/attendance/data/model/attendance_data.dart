import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tanlu_management/shared/services/firebase/firestore_json.dart';

part 'attendance_data.freezed.dart';
part 'attendance_data.g.dart';

@freezed
class AttendanceData with _$AttendanceData {
  const factory AttendanceData({
    @JsonKey(name: 'id', includeToJson: false) String? id,
    @JsonKey(name: 'studentId') String? studentId,
    @JsonKey(name: 'classId') String? classId,
    @JsonKey(name: 'date', fromJson: FirestoreJson.toDateString) String? date,
    @JsonKey(name: 'status') String? status,
    @JsonKey(
      name: 'checkInTime',
      fromJson: FirestoreJson.toDateTime,
      toJson: FirestoreJson.dateTimeToFirestore,
    )
    DateTime? checkInTime,
    @JsonKey(
      name: 'checkOutTime',
      fromJson: FirestoreJson.toDateTime,
      toJson: FirestoreJson.dateTimeToFirestore,
    )
    DateTime? checkOutTime,
    @JsonKey(name: 'note') String? note,
    @JsonKey(name: 'recordedBy') String? recordedBy,
    @JsonKey(
      name: 'createdAt',
      fromJson: FirestoreJson.toDateTime,
      toJson: FirestoreJson.dateTimeToFirestore,
    )
    DateTime? createdAt,
    @JsonKey(
      name: 'updatedAt',
      fromJson: FirestoreJson.toDateTime,
      toJson: FirestoreJson.dateTimeToFirestore,
    )
    DateTime? updatedAt,
  }) = _AttendanceData;

  factory AttendanceData.fromJson(Map<String, dynamic> json) =>
      _$AttendanceDataFromJson(json);
}
