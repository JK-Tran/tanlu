import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/student/data/mapper/student_data_mapper.dart';
import 'package:tanlu_management/features/student/data/sources/student_api_service.dart';
import 'package:tanlu_management/features/student/domain/entity/student.dart';
import 'package:tanlu_management/features/student/domain/repositories/student_repository.dart';

@LazySingleton(as: StudentRepository)
class StudentRepositoryImpl implements StudentRepository {
  StudentRepositoryImpl(this._studentApiService, this._studentDataMapper);

  final StudentApiService _studentApiService;
  final StudentDataMapper _studentDataMapper;

  @override
  Future<List<Student>> getStudents() async {
    final response = await _studentApiService.getStudents();
    return _studentDataMapper.mapToListEntity(response?.data);
  }

  @override
  Future<Student> getStudentById(int id) async {
    final response = await _studentApiService.getStudentById(id);
    if (response == null) {
      throw Exception('Không tìm thấy học sinh');
    }
    return _studentDataMapper.mapToEntity(response);
  }
}
