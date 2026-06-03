// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'teacher_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TeacherDataImpl _$$TeacherDataImplFromJson(Map<String, dynamic> json) =>
    _$TeacherDataImpl(
      id: (json['id'] as num?)?.toInt(),
      classId: (json['classId'] as num?)?.toInt(),
      specialty: json['specialty'] as String?,
      qualification: json['qualification'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      user: json['user'] == null
          ? null
          : UserData.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TeacherDataImplToJson(_$TeacherDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'classId': instance.classId,
      'specialty': instance.specialty,
      'qualification': instance.qualification,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'user': instance.user,
    };
