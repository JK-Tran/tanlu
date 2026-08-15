import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_contact_data.freezed.dart';
part 'chat_contact_data.g.dart';

@freezed
class ChatContactData with _$ChatContactData {
  const factory ChatContactData({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'fullName') String? fullName,
    @JsonKey(name: 'avatarUrl') String? avatarUrl,
    @JsonKey(name: 'role') String? role,
    @JsonKey(name: 'phone') String? phone,
    @JsonKey(name: 'childrenText') String? childrenText,
  }) = _ChatContactData;

  factory ChatContactData.fromJson(Map<String, dynamic> json) =>
      _$ChatContactDataFromJson(json);
}
