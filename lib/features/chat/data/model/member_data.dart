import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tanlu_management/shared/services/firebase/firestore_json.dart';

part 'member_data.freezed.dart';
part 'member_data.g.dart';

@freezed
class MemberData with _$MemberData {
  const factory MemberData({
    @JsonKey(name: 'userId', includeToJson: false) String? userId,
    @JsonKey(name: 'fullName') String? fullName,
    @JsonKey(name: 'avatar') String? avatar,
    @JsonKey(name: 'role') String? role,
    @JsonKey(name: 'unreadCount') int? unreadCount,
    @JsonKey(
      name: 'lastReadAt',
      fromJson: FirestoreJson.toDateTime,
      toJson: FirestoreJson.dateTimeToFirestore,
    )
    DateTime? lastReadAt,
  }) = _MemberData;

  factory MemberData.fromJson(Map<String, dynamic> json) =>
      _$MemberDataFromJson(json);
}
