import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
class User with _$User {
  const factory User({
    @Default('') String id,
    @Default('') String email,
    @Default('') String fullName,
    @Default('') String role,
    String? centerId,
    String? phone,
    String? avatar,
    String? classId,
  }) = _User;
}
