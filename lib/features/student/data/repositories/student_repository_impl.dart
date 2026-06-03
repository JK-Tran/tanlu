import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/student/data/mapper/student_data_mapper.dart';

import 'package:tanlu_management/features/student/data/sources/student_api_service.dart';
import 'package:tanlu_management/features/student/domain/entity/student.dart';
import 'package:tanlu_management/features/student/domain/repositories/student_repository.dart';

@LazySingleton(as: StudentRepository)
class StudentRepositoryImpl extends StudentRepository {
  StudentRepositoryImpl(this._apiService, this._studentDataMapper);

  final StudentApiService _apiService;
  final StudentDataMapper _studentDataMapper;
  @override
  Future<List<Student>> getStudents() async {
    final response = await _apiService.getStudents();
    return _studentDataMapper.mapToListEntity(response?.students);
  }

  @override
  Future<Student> getStudentById(int id) async {
    final response = await _apiService.getStudentById(id);
    return _studentDataMapper.mapToEntity(response?.student);
  }

  @override
  Future<Student> updateStudent(int id, Map<String, dynamic> data) async {
    final response = await _apiService.updateStudent(id, data);
    return _studentDataMapper.mapToEntity(response?.student);
  }
}
