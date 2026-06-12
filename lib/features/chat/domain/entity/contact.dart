import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact.freezed.dart';

@freezed
class Contact with _$Contact {
  const factory Contact({
    @Default(0) int id,
    @Default('') String fullName,
    String? avatarFileId,
    @Default('') String roleCode,
  }) = _Contact;
}
