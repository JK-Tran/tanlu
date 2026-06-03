import 'package:freezed_annotation/freezed_annotation.dart';

part 'program_file_data.freezed.dart';
part 'program_file_data.g.dart';

@freezed
class ProgramFileData with _$ProgramFileData {
  const factory ProgramFileData({
    @JsonKey() int? id,
    @JsonKey() int? programId,
    @JsonKey() int? uploadedBy,
    @JsonKey() String? title,
    @JsonKey() String? description,
    @JsonKey() String? fileName,
    @JsonKey() String? fileUrl,
    @JsonKey() String? fileType,
    @JsonKey() int? fileSize,
    @JsonKey() int? sortOrder,
    @JsonKey() String? createdAt,
  }) = _ProgramFileData;

  const ProgramFileData._();

  factory ProgramFileData.fromJson(Map<String, dynamic> json) =>
      _$ProgramFileDataFromJson(json);
}
