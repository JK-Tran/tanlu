import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_user_data.freezed.dart';
part 'chat_user_data.g.dart';

@freezed
class ChatUserData with _$ChatUserData {
  const factory ChatUserData({
    @JsonKey() int? id,
    @JsonKey() String? fullName,
    @JsonKey() String? avatarFileId,
  }) = _ChatUserData;

  const ChatUserData._();

  factory ChatUserData.fromJson(Map<String, dynamic> json) =>
      _$ChatUserDataFromJson(json);
}
