import 'package:freezed_annotation/freezed_annotation.dart';

part 'program_file.freezed.dart';

@freezed
class ProgramFile with _$ProgramFile {
  const factory ProgramFile({
    @Default(0) int id,
    @Default(0) int programId,
    @Default(0) int uploadedBy,
    @Default('') String title,
    @Default('') String description,
    @Default('') String fileName,
    @Default('') String fileUrl,
    @Default('') String fileType,
    @Default(0) int fileSize,
    @Default(0) int sortOrder,
    DateTime? createdAt,
  }) = _ProgramFile;
}
