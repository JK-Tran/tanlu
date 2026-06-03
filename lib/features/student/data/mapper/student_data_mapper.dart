import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/student/data/mapper/classroom_data_mapper.dart';
import 'package:tanlu_management/features/student/data/mapper/student_parent_data_mapper.dart';
import 'package:tanlu_management/features/student/data/mapper/student_teacher_data_mapper.dart';
import 'package:tanlu_management/features/student/data/mapper/screening_result_data_mapper.dart';
import 'package:tanlu_management/features/student/data/mapper/development_result_data_mapper.dart';
import 'package:tanlu_management/features/student/data/model/student_data.dart';
import 'package:tanlu_management/features/student/domain/entity/student.dart';
import 'package:tanlu_management/shared/infrastructure/mapper/base_data_mapper.dart';

@Injectable()
class StudentDataMapper extends BaseDataMapper<StudentData, Student>
    with DataMapperMixin<StudentData, Student> {
  StudentDataMapper(
    this._classroomDataMapper,
    this._studentParentDataMapper,
    this._studentTeacherDataMapper,
    this._screeningResultDataMapper,
    this._developmentResultDataMapper,
  );

  final ClassroomDataMapper _classroomDataMapper;
  final StudentParentDataMapper _studentParentDataMapper;
  final StudentTeacherDataMapper _studentTeacherDataMapper;
  final ScreeningResultDataMapper _screeningResultDataMapper;
  final DevelopmentResultDataMapper _developmentResultDataMapper;

  @override
  Student mapToEntity(StudentData? data) {
    return Student(
      id: data?.id ?? 0,
      classId: data?.classId ?? 0,
      fullName: data?.fullName ?? '',
      nickname: data?.nickname ?? '',
      gender: data?.gender ?? '',
      dateOfBirth: data?.dateOfBirth != null
          ? DateTime.tryParse(data!.dateOfBirth!)
          : null,
      avatarFileId: data?.avatarFileId ?? '',
      studentCode: data?.studentCode ?? '',
      enrollmentDate: data?.enrollmentDate != null
          ? DateTime.tryParse(data!.enrollmentDate!)
          : null,
      status: data?.status ?? '',
      initialReason: data?.initialReason ?? '',
      diagnosisSummary: data?.diagnosisSummary ?? '',
      developmentAgeMonth: data?.developmentAgeMonth ?? 0,
      supportLevel: data?.supportLevel ?? '',
      note: data?.note ?? '',
      createdAt: data?.createdAt != null
          ? DateTime.tryParse(data!.createdAt!)
          : null,
      updatedAt: data?.updatedAt != null
          ? DateTime.tryParse(data!.updatedAt!)
          : null,
      classroom: _classroomDataMapper.mapToEntity(data?.classroom),
      studentParents: _studentParentDataMapper.mapToListEntity(
        data?.studentParents,
      ),
      studentTeachers: _studentTeacherDataMapper.mapToListEntity(
        data?.studentTeachers,
      ),
      screeningResults: _screeningResultDataMapper.mapToListEntity(
        data?.screeningResults,
      ),
      developmentResults: _developmentResultDataMapper.mapToListEntity(
        data?.developmentResults,
      ),
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
      dateOfBirth: entity.dateOfBirth?.toIso8601String(),
      avatarFileId: entity.avatarFileId,
      studentCode: entity.studentCode,
      enrollmentDate: entity.enrollmentDate?.toIso8601String(),
      status: entity.status,
      initialReason: entity.initialReason,
      diagnosisSummary: entity.diagnosisSummary,
      developmentAgeMonth: entity.developmentAgeMonth,
      supportLevel: entity.supportLevel,
      note: entity.note,
      createdAt: entity.createdAt?.toIso8601String(),
      updatedAt: entity.updatedAt?.toIso8601String(),
      classroom: _classroomDataMapper.mapToData(entity.classroom),
      studentParents: _studentParentDataMapper.mapToListData(
        entity.studentParents,
      ),
      studentTeachers: _studentTeacherDataMapper.mapToListData(
        entity.studentTeachers,
      ),
      screeningResults: _screeningResultDataMapper.mapToListData(
        entity.screeningResults,
      ),
      developmentResults: _developmentResultDataMapper.mapToListData(
        entity.developmentResults,
      ),
    );
  }
}
