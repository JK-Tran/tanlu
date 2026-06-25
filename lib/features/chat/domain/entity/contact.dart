import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact.freezed.dart';

enum ContactRelation { sameClass, friend, none }

@freezed
class Contact with _$Contact {
  const factory Contact({
    @Default('') String id,
    @Default('') String fullName,
    @Default('') String role,
    @Default('') String avatar,
    @Default(ContactRelation.none) ContactRelation relation,
    @Default(false) bool canChat,

    /// `pendingSent` | `pendingReceived` | null
    String? pendingRequest,
  }) = _Contact;
}
