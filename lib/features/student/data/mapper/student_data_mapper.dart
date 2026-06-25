import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/student/data/model/student_data.dart';
import 'package:tanlu_management/features/student/domain/entity/student.dart';
import 'package:tanlu_management/features/student/domain/entity/contact.dart';
import 'package:tanlu_management/features/student/data/model/contact_data.dart';
import 'package:tanlu_management/shared/infrastructure/mapper/base_data_mapper.dart';

@injectable
class StudentDataMapper extends BaseDataMapper<StudentData, Student>
    with DataMapperMixin<StudentData, Student> {
  @override
  Student mapToEntity(StudentData? model) {
    return Student(
      id: model?.id ?? '',
      classId: model?.classId ?? '',
      fullName: model?.fullName ?? '',
      nickname: model?.nickname ?? '',
      gender: model?.gender ?? '',
      dob: model?.dob != null ? DateTime.tryParse(model!.dob!) : null,
      dateOfBirth: model?.dateOfBirth != null
          ? DateTime.tryParse(model!.dateOfBirth!)
          : null,
      avatarUrl: model?.avatarUrl ?? '',
      studentCode: model?.studentCode ?? '',
      status: model?.status ?? '',
      parentUserId: model?.parentUserId ?? '',
      address: model?.address ?? '',
      contacts:
          model?.contacts
              ?.map(
                (c) => Contact(
                  name: c.name ?? '',
                  relationship: c.relationship ?? '',
                  phone: c.phone ?? '',
                  dob: c.dob != null ? DateTime.tryParse(c.dob!) : null,
                  userId: c.userId ?? '',
                  isPrimary: c.isPrimary ?? false,
                ),
              )
              .toList() ??
          [],
      birthHistory: model?.birthHistory ?? '',
      diagnosis: model?.diagnosis ?? '',
      allergies: model?.allergies ?? '',
      currentMedications: model?.currentMedications ?? '',
      bloodType: model?.bloodType ?? '',
      likes: model?.likes ?? '',
      dislikesOrTriggers: model?.dislikesOrTriggers ?? '',
      selfCareSkills: model?.selfCareSkills ?? '',
      initialReason: model?.initialReason ?? '',
      diagnosisSummary: model?.diagnosisSummary ?? '',
      developmentAgeMonth: model?.developmentAgeMonth ?? 0,
      supportLevel: model?.supportLevel ?? '',
    );
  }

  @override
  StudentData mapToData(Student entity) {
    return StudentData(
      id: entity.id,
      classId: entity.classId,
      fullName: entity.fullName,
      nickname: entity.nickname,
      gender: entity.gender,
      dob: entity.dob?.toIso8601String(),
      dateOfBirth: entity.dateOfBirth?.toIso8601String(),
      avatarUrl: entity.avatarUrl,
      studentCode: entity.studentCode,
      status: entity.status,
      parentUserId: entity.parentUserId,
      address: entity.address,
      contacts: entity.contacts
          .map(
            (c) => ContactData(
              name: c.name,
              relationship: c.relationship,
              phone: c.phone,
              dob: c.dob?.toIso8601String(),
              userId: c.userId,
              isPrimary: c.isPrimary,
            ),
          )
          .toList(),
      birthHistory: entity.birthHistory,
      diagnosis: entity.diagnosis,
      allergies: entity.allergies,
      currentMedications: entity.currentMedications,
      bloodType: entity.bloodType,
      likes: entity.likes,
      dislikesOrTriggers: entity.dislikesOrTriggers,
      selfCareSkills: entity.selfCareSkills,
      initialReason: entity.initialReason,
      diagnosisSummary: entity.diagnosisSummary,
      developmentAgeMonth: entity.developmentAgeMonth,
      supportLevel: entity.supportLevel,
    );
  }
}
