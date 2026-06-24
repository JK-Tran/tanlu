import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tanlu_management/shared/services/firebase/firestore_json.dart';

part 'feed_data.freezed.dart';
part 'feed_data.g.dart';

@freezed
class FeedData with _$FeedData {
  const factory FeedData({
    @JsonKey(name: 'id', includeToJson: false) String? id,
    @JsonKey(name: 'authorId') String? authorId,
    @JsonKey(name: 'fullName') String? fullName,
    @JsonKey(name: 'avatar') String? avatar,
    @JsonKey(name: 'role') String? role,
    @JsonKey(name: 'classId') String? classId,
    @JsonKey(name: 'className') String? className,
    @JsonKey(name: 'centerId') String? centerId,
    @JsonKey(name: 'content') String? content,
    @JsonKey(name: 'images') List<String>? images,
    @JsonKey(name: 'videos') List<String>? videos,
    @JsonKey(name: 'likeCount') int? likeCount,
    @JsonKey(name: 'commentCount') int? commentCount,
    @JsonKey(name: 'allowComments') bool? allowComments,
    @JsonKey(name: 'isPublic') bool? isPublic,
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
  }) = _FeedData;

  factory FeedData.fromJson(Map<String, dynamic> json) =>
      _$FeedDataFromJson(json);
}
