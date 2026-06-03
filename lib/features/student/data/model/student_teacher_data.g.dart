// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_teacher_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StudentTeacherDataImpl _$$StudentTeacherDataImplFromJson(
  Map<String, dynamic> json,
) => _$StudentTeacherDataImpl(
  id: (json['id'] as num?)?.toInt(),
  studentId: (json['studentId'] as num?)?.toInt(),
  teacherId: (json['teacherId'] as num?)?.toInt(),
  isPrimaryTeacher: json['isPrimaryTeacher'] as bool?,
  startDate: json['startDate'] as String?,
  endDate: json['endDate'] as String?,
  status: json['status'] as String?,
  createdAt: json['createdAt'] as String?,
  teacher: json['teacher'] == null
      ? null
      : TeacherData.fromJson(json['teacher'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$StudentTeacherDataImplToJson(
  _$StudentTeacherDataImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'studentId': instance.studentId,
  'teacherId': instance.teacherId,
  'isPrimaryTeacher': instance.isPrimaryTeacher,
  'startDate': instance.startDate,
  'endDate': instance.endDate,
  'status': instance.status,
  'createdAt': instance.createdAt,
  'teacher': instance.teacher,
};
