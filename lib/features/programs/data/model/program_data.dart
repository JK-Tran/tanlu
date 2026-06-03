import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tanlu_management/features/programs/data/model/program_file_data.dart';
import 'package:tanlu_management/features/student/data/model/student_data.dart';

part 'program_data.freezed.dart';
part 'program_data.g.dart';

@freezed
class ProgramData with _$ProgramData {
  const factory ProgramData({
    @JsonKey() int? id,
    @JsonKey() int? classId,
    @JsonKey() int? createdBy,
    @JsonKey() String? title,
    @JsonKey() String? description,
    @JsonKey() String? version,
    @JsonKey() int? targetAgeFromMonth,
    @JsonKey() int? targetAgeToMonth,
    @JsonKey() String? status,
    @JsonKey() String? createdAt,
    @JsonKey() String? updatedAt,
    @JsonKey() ClassroomData? classroom,
    @JsonKey() ProgramCreatorData? creator,
    @JsonKey() List<ProgramFileData>? files,
  }) = _ProgramData;

  const ProgramData._();

  factory ProgramData.fromJson(Map<String, dynamic> json) =>
      _$ProgramDataFromJson(json);
}

@freezed
class ProgramCreatorData with _$ProgramCreatorData {
  const factory ProgramCreatorData({
    @JsonKey() int? id,
    @JsonKey() String? fullName,
    @JsonKey() String? email,
  }) = _ProgramCreatorData;

  factory ProgramCreatorData.fromJson(Map<String, dynamic> json) =>
      _$ProgramCreatorDataFromJson(json);
}

@freezed
class ProgramsResponseData with _$ProgramsResponseData {
  const factory ProgramsResponseData({
    @JsonKey(name: 'programs') required List<ProgramData> programs,
  }) = _ProgramsResponseData;

  factory ProgramsResponseData.fromJson(Map<String, dynamic> json) =>
      _$ProgramsResponseDataFromJson(json);
}

@freezed
class ProgramResponseData with _$ProgramResponseData {
  const factory ProgramResponseData({
    @JsonKey(name: 'program') required ProgramData program,
  }) = _ProgramResponseData;

  factory ProgramResponseData.fromJson(Map<String, dynamic> json) =>
      _$ProgramResponseDataFromJson(json);
}
