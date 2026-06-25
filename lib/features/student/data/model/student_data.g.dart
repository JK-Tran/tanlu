// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StudentDataImpl _$$StudentDataImplFromJson(Map<String, dynamic> json) =>
    _$StudentDataImpl(
      id: json['id'] as String?,
      classId: json['classId'] as String?,
      fullName: json['fullName'] as String?,
      nickname: json['nickname'] as String?,
      gender: json['gender'] as String?,
      dob: json['dob'] as String?,
      dateOfBirth: json['dateOfBirth'] as String?,
      avatarUrl: json['avatarUrl'] as String?,
      studentCode: json['studentCode'] as String?,
      status: json['status'] as String?,
      parentUserId: json['parentUserId'] as String?,
      address: json['address'] as String?,
      contacts: (json['contacts'] as List<dynamic>?)
          ?.map((e) => ContactData.fromJson(e as Map<String, dynamic>))
          .toList(),
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
    );

Map<String, dynamic> _$$StudentDataImplToJson(_$StudentDataImpl instance) =>
    <String, dynamic>{
      'classId': instance.classId,
      'fullName': instance.fullName,
      'nickname': instance.nickname,
      'gender': instance.gender,
      'dob': instance.dob,
      'dateOfBirth': instance.dateOfBirth,
      'avatarUrl': instance.avatarUrl,
      'studentCode': instance.studentCode,
      'status': instance.status,
      'parentUserId': instance.parentUserId,
      'address': instance.address,
      'contacts': instance.contacts,
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
    };
