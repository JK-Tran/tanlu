import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tanlu_management/features/auth/domain/entity/token.dart';

part 'user.freezed.dart';

@freezed
class User with _$User {
  const factory User({
    @Default(0) int id,
    @Default('') String email,
    @Default('') String fullName,
    @Default('') String passwordHash,
    @Default('') String avatarUrl,
    @Default('') String phone,
    @Default('') String role,
    @Default(0) int centerId,
    @Default('') String fcmToken,
    DateTime? createdAt,
    DateTime? updatedAt,
    @Default(0) int classId,
  }) = _User;
}

@freezed
class UserResponse with _$UserResponse {
  const factory UserResponse({
    Token? token,
    User? user,
    @Default('') String firebaseCustomToken,
  }) = _UserResponse;
}
