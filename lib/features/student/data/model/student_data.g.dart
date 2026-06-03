// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StudentDataImpl _$$StudentDataImplFromJson(Map<String, dynamic> json) =>
    _$StudentDataImpl(
      id: (json['id'] as num?)?.toInt(),
      classId: (json['classId'] as num?)?.toInt(),
      fullName: json['fullName'] as String?,
      nickname: json['nickname'] as String?,
      gender: json['gender'] as String?,
      dateOfBirth: json['dateOfBirth'] as String?,
      avatarFileId: json['avatarFileId'] as String?,
      studentCode: json['studentCode'] as String?,
      enrollmentDate: json['enrollmentDate'] as String?,
      status: json['status'] as String?,
      initialReason: json['initialReason'] as String?,
      diagnosisSummary: json['diagnosisSummary'] as String?,
      developmentAgeMonth: (json['developmentAgeMonth'] as num?)?.toInt(),
      supportLevel: json['supportLevel'] as String?,
      note: json['note'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      classroom: json['classroom'] == null
          ? null
          : ClassroomData.fromJson(json['classroom'] as Map<String, dynamic>),
      studentParents: (json['studentParents'] as List<dynamic>?)
          ?.map((e) => StudentParentData.fromJson(e as Map<String, dynamic>))
          .toList(),
      studentTeachers: (json['studentTeachers'] as List<dynamic>?)
          ?.map((e) => StudentTeacherData.fromJson(e as Map<String, dynamic>))
          .toList(),
      screeningResults: (json['screeningResults'] as List<dynamic>?)
          ?.map((e) => ScreeningResultData.fromJson(e as Map<String, dynamic>))
          .toList(),
      developmentResults: (json['developmentResults'] as List<dynamic>?)
          ?.map(
            (e) => DevelopmentResultData.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
    );

Map<String, dynamic> _$$StudentDataImplToJson(_$StudentDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'classId': instance.classId,
      'fullName': instance.fullName,
      'nickname': instance.nickname,
      'gender': instance.gender,
      'dateOfBirth': instance.dateOfBirth,
      'avatarFileId': instance.avatarFileId,
      'studentCode': instance.studentCode,
      'enrollmentDate': instance.enrollmentDate,
      'status': instance.status,
      'initialReason': instance.initialReason,
      'diagnosisSummary': instance.diagnosisSummary,
      'developmentAgeMonth': instance.developmentAgeMonth,
      'supportLevel': instance.supportLevel,
      'note': instance.note,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'classroom': instance.classroom,
      'studentParents': instance.studentParents,
      'studentTeachers': instance.studentTeachers,
      'screeningResults': instance.screeningResults,
      'developmentResults': instance.developmentResults,
    };

_$ClassroomDataImpl _$$ClassroomDataImplFromJson(Map<String, dynamic> json) =>
    _$ClassroomDataImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      name: json['name'] as String? ?? '',
      code: json['code'] as String? ?? '',
      center: json['center'] == null
          ? const CenterData()
          : CenterData.fromJson(json['center'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ClassroomDataImplToJson(_$ClassroomDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'center': instance.center,
    };

_$StudentsResponseDataImpl _$$StudentsResponseDataImplFromJson(
  Map<String, dynamic> json,
) => _$StudentsResponseDataImpl(
  students: (json['students'] as List<dynamic>)
      .map((e) => StudentData.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$$StudentsResponseDataImplToJson(
  _$StudentsResponseDataImpl instance,
) => <String, dynamic>{'students': instance.students};

_$StudentResponseDataImpl _$$StudentResponseDataImplFromJson(
  Map<String, dynamic> json,
) => _$StudentResponseDataImpl(
  student: StudentData.fromJson(json['student'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$StudentResponseDataImplToJson(
  _$StudentResponseDataImpl instance,
) => <String, dynamic>{'student': instance.student};
