import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_user.freezed.dart';

@freezed
class ChatUser with _$ChatUser {
  const factory ChatUser({
    @Default(0) int id,
    @Default('') String fullName,
    String? avatarFileId,
  }) = _ChatUser;
}
