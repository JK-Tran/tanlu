import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact.freezed.dart';

@freezed
class Contact with _$Contact {
  const factory Contact({
    @Default('') String name,
    @Default('') String relationship, // 'Bố', 'Mẹ', hoặc role khác
    @Default('') String phone,
    DateTime? dob,
    @Default('') String userId,
    @Default(false) bool isPrimary,
  }) = _Contact;
}
