import 'package:tanlu_management/features/student/domain/entity/student.dart';

abstract class StudentRepository {
  Future<List<Student>> getStudents();
  Future<Student> getStudentById(int id);
  Future<Student> updateStudent(int id, Map<String, dynamic> data);
}
