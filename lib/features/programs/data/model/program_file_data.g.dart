// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'program_file_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProgramFileDataImpl _$$ProgramFileDataImplFromJson(
  Map<String, dynamic> json,
) => _$ProgramFileDataImpl(
  id: (json['id'] as num?)?.toInt(),
  programId: (json['programId'] as num?)?.toInt(),
  uploadedBy: (json['uploadedBy'] as num?)?.toInt(),
  title: json['title'] as String?,
  description: json['description'] as String?,
  fileName: json['fileName'] as String?,
  fileUrl: json['fileUrl'] as String?,
  fileType: json['fileType'] as String?,
  fileSize: (json['fileSize'] as num?)?.toInt(),
  sortOrder: (json['sortOrder'] as num?)?.toInt(),
  createdAt: json['createdAt'] as String?,
);

Map<String, dynamic> _$$ProgramFileDataImplToJson(
  _$ProgramFileDataImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'programId': instance.programId,
  'uploadedBy': instance.uploadedBy,
  'title': instance.title,
  'description': instance.description,
  'fileName': instance.fileName,
  'fileUrl': instance.fileUrl,
  'fileType': instance.fileType,
  'fileSize': instance.fileSize,
  'sortOrder': instance.sortOrder,
  'createdAt': instance.createdAt,
};
