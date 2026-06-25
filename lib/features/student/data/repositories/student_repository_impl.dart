import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/student/data/mapper/student_data_mapper.dart';
import 'package:tanlu_management/features/student/data/sources/student_firebase_source.dart';
import 'package:tanlu_management/features/student/domain/entity/student.dart';
import 'package:tanlu_management/features/student/domain/entity/student_class_stats.dart';
import 'package:tanlu_management/features/student/domain/repositories/student_repository.dart';

@LazySingleton(as: StudentRepository)
class StudentRepositoryImpl implements StudentRepository {
  StudentRepositoryImpl(this._firebaseSource, this._studentDataMapper);

  final StudentFirebaseSource _firebaseSource;
  final StudentDataMapper _studentDataMapper;

  @override
  Future<List<Student>> getStudentsByClassId({
    required String classId,
    String? gender,
    String? searchKeyword,
  }) async {
    final data = await _firebaseSource.getStudentsByClassId(
      classId: classId,
      gender: gender,
    );
    final students = _studentDataMapper.mapToListEntity(data);

    final keyword = searchKeyword?.trim();
    if (keyword == null || keyword.isEmpty) return students;

    final q = keyword.toLowerCase();
    return students
        .where(
          (s) =>
              s.fullName.toLowerCase().contains(q) ||
              s.nickname.toLowerCase().contains(q),
        )
        .toList();
  }

  @override
  Future<StudentClassStats> getClassStats(String classId) async {
    final stats = await _firebaseSource.getClassStats(classId);
    return StudentClassStats(
      total: stats.total,
      male: stats.male,
      female: stats.female,
    );
  }

  @override
  Future<Student?> getStudentById(String id) async {
    final data = await _firebaseSource.getStudentById(id);
    if (data == null) return null;
    return _studentDataMapper.mapToEntity(data);
  }
}
