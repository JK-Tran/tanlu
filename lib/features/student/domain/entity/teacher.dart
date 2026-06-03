import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tanlu_management/features/auth/domain/entity/user.dart';

part 'teacher.freezed.dart';

@freezed
class Teacher with _$Teacher {
  const factory Teacher({
    @Default(0) int id,
    @Default(0) int classId,
    @Default('') String specialty,
    @Default('') String qualification,
    DateTime? createdAt,
    DateTime? updatedAt,
    @Default(User()) User user,
  }) = _Teacher;
}
