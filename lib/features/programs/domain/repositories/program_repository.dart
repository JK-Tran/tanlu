import 'package:tanlu_management/features/programs/domain/entity/program.dart';

abstract class ProgramRepository {
  Future<List<Program>> getPrograms();
  Future<Program> getProgramById({required int id});
}
