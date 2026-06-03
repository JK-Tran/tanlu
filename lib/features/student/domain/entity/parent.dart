import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tanlu_management/features/auth/domain/entity/user.dart';

part 'parent.freezed.dart';

@freezed
class Parent with _$Parent {
  const factory Parent({
    @Default(0) int id,
    @Default('') String address,
    @Default('') String occupation,
    DateTime? createdAt,
    DateTime? updatedAt,
    @Default(User()) User user,
  }) = _Parent;
}
