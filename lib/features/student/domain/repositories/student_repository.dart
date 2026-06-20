import 'package:tanlu_management/features/student/domain/entity/student.dart';
import 'package:tanlu_management/features/student/domain/entity/student_class_stats.dart';

abstract class StudentRepository {
  Future<List<Student>> getStudentsByClassId({
    required String classId,
    String? gender,
    String? searchKeyword,
  });

  Future<StudentClassStats> getClassStats(String classId);

  Future<Student?> getStudentById(String id);
}
