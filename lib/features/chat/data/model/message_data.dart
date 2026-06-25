import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tanlu_management/shared/services/firebase/firestore_json.dart';

part 'message_data.freezed.dart';
part 'message_data.g.dart';

@freezed
class MessageData with _$MessageData {
  const factory MessageData({
    @JsonKey(name: 'id', includeToJson: false) String? id,
    @JsonKey(name: 'senderId') String? senderId,
    @JsonKey(name: 'receiverId') String? receiverId,
    @JsonKey(name: 'fullName') String? fullName,
    @JsonKey(name: 'avatar') String? avatar,
    @JsonKey(name: 'type') String? type,
    @JsonKey(name: 'text') String? text,
    @JsonKey(name: 'fileUrl') String? fileUrl,
    @JsonKey(name: 'status') String? status,
    @JsonKey(
      name: 'createdAt',
      fromJson: FirestoreJson.toDateTime,
      toJson: FirestoreJson.dateTimeToFirestore,
    )
    DateTime? createdAt,
  }) = _MessageData;

  factory MessageData.fromJson(Map<String, dynamic> json) =>
      _$MessageDataFromJson(json);
}
