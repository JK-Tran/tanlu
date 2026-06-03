import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tanlu_management/features/programs/domain/entity/program_file.dart';
import 'package:tanlu_management/features/student/domain/entity/student.dart';

part 'program.freezed.dart';

@freezed
class Program with _$Program {
  const factory Program({
    @Default(0) int id,
    @Default(0) int classId,
    @Default(0) int createdBy,
    @Default('') String title,
    @Default('') String description,
    @Default('') String version,
    @Default(0) int targetAgeFromMonth,
    @Default(0) int targetAgeToMonth,
    @Default('') String status,
    DateTime? createdAt,
    DateTime? updatedAt,
    Classroom? classroom,
    ProgramCreator? creator,
    @Default([]) List<ProgramFile> files,
  }) = _Program;
}

@freezed
class ProgramCreator with _$ProgramCreator {
  const factory ProgramCreator({
    @Default(0) int id,
    @Default('') String fullName,
    @Default('') String email,
  }) = _ProgramCreator;
}
