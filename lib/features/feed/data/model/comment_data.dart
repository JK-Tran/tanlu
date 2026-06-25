import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tanlu_management/shared/services/firebase/firestore_json.dart';

part 'comment_data.freezed.dart';
part 'comment_data.g.dart';

@freezed
class CommentData with _$CommentData {
  const factory CommentData({
    @JsonKey(name: 'id', includeToJson: false) String? id,
    @JsonKey(name: 'authorId') String? authorId,
    @JsonKey(name: 'fullName') String? fullName,
    @JsonKey(name: 'avatar') String? avatar,
    @JsonKey(name: 'role') String? role,
    @JsonKey(name: 'content') String? content,
    @JsonKey(name: 'parentId') String? parentId,
    @JsonKey(name: 'likeCount') int? likeCount,
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
  }) = _CommentData;

  factory CommentData.fromJson(Map<String, dynamic> json) =>
      _$CommentDataFromJson(json);
}
