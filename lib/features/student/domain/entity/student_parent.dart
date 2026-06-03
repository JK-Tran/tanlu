import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tanlu_management/features/student/domain/entity/parent.dart';

part 'student_parent.freezed.dart';

@freezed
class StudentParent with _$StudentParent {
  const factory StudentParent({
    @Default(0) int id,
    @Default(0) int studentId,
    @Default(0) int parentId,
    @Default('') String relationship,
    @Default(false) bool isPrimaryContact,
    DateTime? createdAt,
    @Default(Parent()) Parent parent,
  }) = _StudentParent;
}
