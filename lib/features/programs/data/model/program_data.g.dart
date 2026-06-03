// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'program_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProgramDataImpl _$$ProgramDataImplFromJson(Map<String, dynamic> json) =>
    _$ProgramDataImpl(
      id: (json['id'] as num?)?.toInt(),
      classId: (json['classId'] as num?)?.toInt(),
      createdBy: (json['createdBy'] as num?)?.toInt(),
      title: json['title'] as String?,
      description: json['description'] as String?,
      version: json['version'] as String?,
      targetAgeFromMonth: (json['targetAgeFromMonth'] as num?)?.toInt(),
      targetAgeToMonth: (json['targetAgeToMonth'] as num?)?.toInt(),
      status: json['status'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      classroom: json['classroom'] == null
          ? null
          : ClassroomData.fromJson(json['classroom'] as Map<String, dynamic>),
      creator: json['creator'] == null
          ? null
          : ProgramCreatorData.fromJson(
              json['creator'] as Map<String, dynamic>,
            ),
      files: (json['files'] as List<dynamic>?)
          ?.map((e) => ProgramFileData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ProgramDataImplToJson(_$ProgramDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'classId': instance.classId,
      'createdBy': instance.createdBy,
      'title': instance.title,
      'description': instance.description,
      'version': instance.version,
      'targetAgeFromMonth': instance.targetAgeFromMonth,
      'targetAgeToMonth': instance.targetAgeToMonth,
      'status': instance.status,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'classroom': instance.classroom,
      'creator': instance.creator,
      'files': instance.files,
    };

_$ProgramCreatorDataImpl _$$ProgramCreatorDataImplFromJson(
  Map<String, dynamic> json,
) => _$ProgramCreatorDataImpl(
  id: (json['id'] as num?)?.toInt(),
  fullName: json['fullName'] as String?,
  email: json['email'] as String?,
);

Map<String, dynamic> _$$ProgramCreatorDataImplToJson(
  _$ProgramCreatorDataImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'fullName': instance.fullName,
  'email': instance.email,
};

_$ProgramsResponseDataImpl _$$ProgramsResponseDataImplFromJson(
  Map<String, dynamic> json,
) => _$ProgramsResponseDataImpl(
  programs: (json['programs'] as List<dynamic>)
      .map((e) => ProgramData.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$$ProgramsResponseDataImplToJson(
  _$ProgramsResponseDataImpl instance,
) => <String, dynamic>{'programs': instance.programs};

_$ProgramResponseDataImpl _$$ProgramResponseDataImplFromJson(
  Map<String, dynamic> json,
) => _$ProgramResponseDataImpl(
  program: ProgramData.fromJson(json['program'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$ProgramResponseDataImplToJson(
  _$ProgramResponseDataImpl instance,
) => <String, dynamic>{'program': instance.program};
