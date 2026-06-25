import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tanlu_management/shared/services/firebase/firestore_json.dart';

part 'conversation_data.freezed.dart';
part 'conversation_data.g.dart';

@freezed
class ConversationData with _$ConversationData {
  const factory ConversationData({
    @JsonKey(name: 'id', includeToJson: false) String? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'type') String? type,
    @JsonKey(name: 'classId') String? classId,
    @JsonKey(name: 'centerId') String? centerId,
    @JsonKey(name: 'memberIds') List<String>? memberIds,
    @JsonKey(name: 'lastMessageText') String? lastMessageText,
    @JsonKey(name: 'lastMessageSenderId') String? lastMessageSenderId,
    @JsonKey(
      name: 'lastMessageAt',
      fromJson: FirestoreJson.toDateTime,
      toJson: FirestoreJson.dateTimeToFirestore,
    )
    DateTime? lastMessageAt,
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
  }) = _ConversationData;

  factory ConversationData.fromJson(Map<String, dynamic> json) =>
      _$ConversationDataFromJson(json);
}
