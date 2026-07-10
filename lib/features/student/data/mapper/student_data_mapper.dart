import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/student/data/mapper/class_info_data_mapper.dart';
import 'package:tanlu_management/features/student/data/mapper/contact_data_mapper.dart';
import 'package:tanlu_management/features/student/data/mapper/parent_data_mapper.dart';
import 'package:tanlu_management/features/student/data/model/student_data.dart';
import 'package:tanlu_management/features/student/domain/entity/student.dart';
import 'package:tanlu_management/shared/infrastructure/data/base/base_data_mapper.dart';
import 'package:tanlu_management/shared/utils/date_time_utils.dart';

@Injectable()
class StudentDataMapper extends BaseDataMapper<StudentData, Student>
    with DataMapperMixin<StudentData, Student> {
  StudentDataMapper(
    this._classInfoDataMapper,
    this._parentDataMapper,
    this._contactDataMapper,
  );

  final ClassInfoDataMapper _classInfoDataMapper;
  final ParentDataMapper _parentDataMapper;
  final ContactDataMapper _contactDataMapper;

  @override
  Student mapToEntity(StudentData? data) {
    return Student(
      id: data?.id ?? 0,
      centerId: data?.centerId ?? 0,
      classId: data?.classId ?? 0,
      parentId: data?.parentId ?? 0,
      studentCode: data?.studentCode ?? '',
      fullName: data?.fullName ?? '',
      nickName: data?.nickName ?? '',
      gender: data?.gender ?? '',
      birthDate: DateTimeUtils.parseDateTimeDateOnlyType2(
        data?.birthDate ?? '',
      ),
      avatarUrl: data?.avatarUrl ?? '',
      status: data?.status ?? '',
      birthHistory: data?.birthHistory ?? '',
      diagnosis: data?.diagnosis ?? '',
      allergies: data?.allergies ?? '',
      currentMedications: data?.currentMedications ?? '',
      bloodType: data?.bloodType ?? '',
      likes: data?.likes ?? '',
      dislikesOrTriggers: data?.dislikesOrTriggers ?? '',
      selfCareSkills: data?.selfCareSkills ?? '',
      initialReason: data?.initialReason ?? '',
      diagnosisSummary: data?.diagnosisSummary ?? '',
      developmentAgeMonth: data?.developmentAgeMonth ?? 0,
      supportLevel: data?.supportLevel ?? '',
      createdAt: data?.createdAt ?? DateTime.now(),
      classInfo: _classInfoDataMapper.mapToEntity(data?.classInfo),
      parent: _parentDataMapper.mapToEntity(data?.parent),
      contacts: _contactDataMapper.mapToListEntity(data?.contacts),
    );
  }

  @override
  StudentData mapToData(Student entity) {
    return StudentData(
      id: entity.id,
      centerId: entity.centerId,
      classId: entity.classId,
      parentId: entity.parentId,
      studentCode: entity.studentCode,
      fullName: entity.fullName,
      nickName: entity.nickName,
      gender: entity.gender,
      birthDate: entity.birthDate?.toIso8601String(),
      avatarUrl: entity.avatarUrl,
      status: entity.status,
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
      createdAt: entity.createdAt,
      classInfo: _classInfoDataMapper.mapToData(entity.classInfo),
      parent: _parentDataMapper.mapToData(entity.parent),
      contacts: _contactDataMapper.mapToListData(entity.contacts),
    );
  }
}
