import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/programs/data/mapper/program_data_mapper.dart';
import 'package:tanlu_management/features/programs/data/sources/program_api_service.dart';
import 'package:tanlu_management/features/programs/domain/entity/program.dart';
import 'package:tanlu_management/features/programs/domain/repositories/program_repository.dart';

@LazySingleton(as: ProgramRepository)
class ProgramRepositoryImpl extends ProgramRepository {
  ProgramRepositoryImpl(this._apiService, this._programDataMapper);

  final ProgramApiService _apiService;
  final ProgramDataMapper _programDataMapper;

  @override
  Future<List<Program>> getPrograms() async {
    final response = await _apiService.getPrograms();
    return _programDataMapper.mapToListEntity(response?.programs);
  }

  @override
  Future<Program> getProgramById({required int id}) async {
    final response = await _apiService.getProgramById(id);
    if (response?.program != null) {
      return _programDataMapper.mapToEntity(response?.program);
    }
    throw Exception('Program not found');
  }
}
