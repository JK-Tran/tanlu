import 'package:freezed_annotation/freezed_annotation.dart';

part 'file_data.freezed.dart';
part 'file_data.g.dart';

@freezed
class FileData with _$FileData {
  const factory FileData({
    @JsonKey() int? id,
    @JsonKey() int? monthlyReportId,
    @JsonKey() int? uploadedBy,
    @JsonKey() String? title,
    @JsonKey() String? description,
    @JsonKey() String? fileName,
    @JsonKey() String? fileUrl,
    @JsonKey() String? fileType,
    @JsonKey() int? fileSize,
    @JsonKey() int? sortOrder,
    @JsonKey() String? createdAt,
  }) = _FileData;

  const FileData._();

  factory FileData.fromJson(Map<String, dynamic> json) =>
      _$FileDataFromJson(json);
}
