import 'package:freezed_annotation/freezed_annotation.dart';

part 'file.freezed.dart';

@freezed
class File with _$File {
  const factory File({
    @Default(0) int id,
    @Default(0) int monthlyReportId,
    @Default(0) int uploadedBy,
    @Default('') String title,
    @Default('') String description,
    @Default('') String fileName,
    @Default('') String fileUrl,
    @Default('') String fileType,
    @Default(0) int fileSize,
    @Default(0) int sortOrder,
    DateTime? createdAt,
  }) = _File;
}
