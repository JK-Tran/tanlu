// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'development_result_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DevelopmentResultDataImpl _$$DevelopmentResultDataImplFromJson(
  Map<String, dynamic> json,
) => _$DevelopmentResultDataImpl(
  id: (json['id'] as num?)?.toInt(),
  developmentAssessmentId: (json['developmentAssessmentId'] as num?)?.toInt(),
  studentId: (json['studentId'] as num?)?.toInt(),
  createdBy: (json['createdBy'] as num?)?.toInt(),
  estimatedDevelopmentAgeMonth: (json['estimatedDevelopmentAgeMonth'] as num?)
      ?.toInt(),
  strengths: json['strengths'] as String?,
  weaknesses: json['weaknesses'] as String?,
  createdAt: json['createdAt'] as String?,
  updatedAt: json['updatedAt'] as String?,
  developmentAssessment: json['developmentAssessment'] == null
      ? null
      : DevelopmentAssessmentData.fromJson(
          json['developmentAssessment'] as Map<String, dynamic>,
        ),
  creator: json['creator'] == null
      ? null
      : UserData.fromJson(json['creator'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$DevelopmentResultDataImplToJson(
  _$DevelopmentResultDataImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'developmentAssessmentId': instance.developmentAssessmentId,
  'studentId': instance.studentId,
  'createdBy': instance.createdBy,
  'estimatedDevelopmentAgeMonth': instance.estimatedDevelopmentAgeMonth,
  'strengths': instance.strengths,
  'weaknesses': instance.weaknesses,
  'createdAt': instance.createdAt,
  'updatedAt': instance.updatedAt,
  'developmentAssessment': instance.developmentAssessment,
  'creator': instance.creator,
};
