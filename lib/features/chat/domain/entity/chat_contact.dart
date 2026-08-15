import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_contact.freezed.dart';

@freezed
class ChatContact with _$ChatContact {
  const factory ChatContact({
    @Default(0) int id,
    @Default('') String fullName,
    @Default('') String? avatarUrl,
    @Default('') String role,
    @Default('') String? phone,
    @Default('') String childrenText,
  }) = _ChatContact;
}
