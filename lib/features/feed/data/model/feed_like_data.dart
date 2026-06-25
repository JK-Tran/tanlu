import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tanlu_management/shared/services/firebase/firestore_json.dart';

part 'feed_like_data.freezed.dart';
part 'feed_like_data.g.dart';

@freezed
class FeedLikeData with _$FeedLikeData {
  const factory FeedLikeData({
    @JsonKey(name: 'userId', includeToJson: false) String? userId,
    @JsonKey(name: 'fullName') String? fullName,
    @JsonKey(name: 'avatar') String? avatar,
    @JsonKey(name: 'role') String? role,
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
  }) = _FeedLikeData;

  factory FeedLikeData.fromJson(Map<String, dynamic> json) =>
      _$FeedLikeDataFromJson(json);
}
