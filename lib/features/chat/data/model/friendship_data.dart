import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tanlu_management/shared/services/firebase/firestore_json.dart';

part 'friendship_data.freezed.dart';
part 'friendship_data.g.dart';

@freezed
class FriendshipData with _$FriendshipData {
  const factory FriendshipData({
    @JsonKey(name: 'id', includeToJson: false) String? id,
    @JsonKey(name: 'userIds') List<String>? userIds,
    @JsonKey(
      name: 'createdAt',
      fromJson: FirestoreJson.toDateTime,
      toJson: FirestoreJson.dateTimeToFirestore,
    )
    DateTime? createdAt,
  }) = _FriendshipData;

  factory FriendshipData.fromJson(Map<String, dynamic> json) =>
      _$FriendshipDataFromJson(json);
}
