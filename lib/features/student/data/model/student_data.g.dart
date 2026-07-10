// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StudentDataImpl _$$StudentDataImplFromJson(Map<String, dynamic> json) =>
    _$StudentDataImpl(
      id: (json['id'] as num?)?.toInt(),
      centerId: (json['centerId'] as num?)?.toInt(),
      classId: (json['classId'] as num?)?.toInt(),
      parentId: (json['parentId'] as num?)?.toInt(),
      studentCode: json['studentCode'] as String?,
      fullName: json['fullName'] as String?,
      nickName: json['nickName'] as String?,
      gender: json['gender'] as String?,
      birthDate: json['birthDate'] as String?,
      avatarUrl: json['avatarUrl'] as String?,
      status: json['status'] as String?,
      birthHistory: json['birthHistory'] as String?,
      diagnosis: json['diagnosis'] as String?,
      allergies: json['allergies'] as String?,
      currentMedications: json['currentMedications'] as String?,
      bloodType: json['bloodType'] as String?,
      likes: json['likes'] as String?,
      dislikesOrTriggers: json['dislikesOrTriggers'] as String?,
      selfCareSkills: json['selfCareSkills'] as String?,
      initialReason: json['initialReason'] as String?,
      diagnosisSummary: json['diagnosisSummary'] as String?,
      developmentAgeMonth: (json['developmentAgeMonth'] as num?)?.toInt(),
      supportLevel: json['supportLevel'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      classInfo: json['class'] == null
          ? null
          : ClassInfoData.fromJson(json['class'] as Map<String, dynamic>),
      parent: json['parent'] == null
          ? null
          : ParentData.fromJson(json['parent'] as Map<String, dynamic>),
      contacts: (json['contacts'] as List<dynamic>?)
          ?.map((e) => ContactData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$StudentDataImplToJson(_$StudentDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'centerId': instance.centerId,
      'classId': instance.classId,
      'parentId': instance.parentId,
      'studentCode': instance.studentCode,
      'fullName': instance.fullName,
      'nickName': instance.nickName,
      'gender': instance.gender,
      'birthDate': instance.birthDate,
      'avatarUrl': instance.avatarUrl,
      'status': instance.status,
      'birthHistory': instance.birthHistory,
      'diagnosis': instance.diagnosis,
      'allergies': instance.allergies,
      'currentMedications': instance.currentMedications,
      'bloodType': instance.bloodType,
      'likes': instance.likes,
      'dislikesOrTriggers': instance.dislikesOrTriggers,
      'selfCareSkills': instance.selfCareSkills,
      'initialReason': instance.initialReason,
      'diagnosisSummary': instance.diagnosisSummary,
      'developmentAgeMonth': instance.developmentAgeMonth,
      'supportLevel': instance.supportLevel,
      'createdAt': instance.createdAt?.toIso8601String(),
      'class': instance.classInfo,
      'parent': instance.parent,
      'contacts': instance.contacts,
    };
