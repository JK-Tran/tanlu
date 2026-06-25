import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tanlu_management/shared/services/firebase/firestore_json.dart';

part 'friend_request_data.freezed.dart';
part 'friend_request_data.g.dart';

@freezed
class FriendRequestData with _$FriendRequestData {
  const factory FriendRequestData({
    @JsonKey(name: 'id', includeToJson: false) String? id,
    @JsonKey(name: 'fromUserId') String? fromUserId,
    @JsonKey(name: 'toUserId') String? toUserId,
    @JsonKey(name: 'status') String? status,
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
  }) = _FriendRequestData;

  factory FriendRequestData.fromJson(Map<String, dynamic> json) =>
      _$FriendRequestDataFromJson(json);
}
