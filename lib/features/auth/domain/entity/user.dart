import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
class User with _$User {
  const factory User({
    @Default(0) int id,
    @Default('') String email,
    @Default('') String fullName,
    @Default('') String phone,
    @Default('') String avatarFileId,
    @Default('') String status,
    DateTime? createdAt,
    @Default(Center()) Center center,
    @Default(Role()) Role role,
  }) = _User;
}

@freezed
class Center with _$Center {
  const factory Center({@Default(0) int id, @Default('') String name}) =
      _Center;
}

@freezed
class Role with _$Role {
  const factory Role({@Default('') String code, @Default('') String name}) =
      _Role;
}
