// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'screening_result_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ScreeningResultDataImpl _$$ScreeningResultDataImplFromJson(
  Map<String, dynamic> json,
) => _$ScreeningResultDataImpl(
  id: (json['id'] as num?)?.toInt(),
  screeningTestId: (json['screeningTestId'] as num?)?.toInt(),
  studentId: (json['studentId'] as num?)?.toInt(),
  createdBy: (json['createdBy'] as num?)?.toInt(),
  totalScore: (json['totalScore'] as num?)?.toInt(),
  riskLevel: json['riskLevel'] as String?,
  recommendation: json['recommendation'] as String?,
  createdAt: json['createdAt'] as String?,
  updatedAt: json['updatedAt'] as String?,
  screeningTest: json['screeningTest'] == null
      ? null
      : ScreeningTestData.fromJson(
          json['screeningTest'] as Map<String, dynamic>,
        ),
  creator: json['creator'] == null
      ? null
      : UserData.fromJson(json['creator'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$ScreeningResultDataImplToJson(
  _$ScreeningResultDataImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'screeningTestId': instance.screeningTestId,
  'studentId': instance.studentId,
  'createdBy': instance.createdBy,
  'totalScore': instance.totalScore,
  'riskLevel': instance.riskLevel,
  'recommendation': instance.recommendation,
  'createdAt': instance.createdAt,
  'updatedAt': instance.updatedAt,
  'screeningTest': instance.screeningTest,
  'creator': instance.creator,
};
