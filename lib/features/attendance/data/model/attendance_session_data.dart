import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tanlu_management/shared/services/firebase/firestore_json.dart';

part 'attendance_session_data.freezed.dart';
part 'attendance_session_data.g.dart';

@freezed
class AttendanceSessionData with _$AttendanceSessionData {
  const factory AttendanceSessionData({
    @JsonKey(name: 'id', includeToJson: false) String? id,
    @JsonKey(name: 'classId') String? classId,
    @JsonKey(name: 'date', fromJson: FirestoreJson.toDateString)
    String? date,
    @JsonKey(name: 'isCheckInCompleted') bool? isCheckInCompleted,
    @JsonKey(name: 'isCheckOutCompleted') bool? isCheckOutCompleted,
    @JsonKey(
      name: 'completedAt',
      fromJson: FirestoreJson.toDateTime,
      toJson: FirestoreJson.dateTimeToFirestore,
    )
    DateTime? completedAt,
  }) = _AttendanceSessionData;

  factory AttendanceSessionData.fromJson(Map<String, dynamic> json) =>
      _$AttendanceSessionDataFromJson(json);
}
