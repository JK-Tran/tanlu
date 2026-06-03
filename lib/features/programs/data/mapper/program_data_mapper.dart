import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/programs/data/mapper/program_file_data_mapper.dart';
import 'package:tanlu_management/features/programs/data/model/program_data.dart';
import 'package:tanlu_management/features/programs/domain/entity/program.dart';
import 'package:tanlu_management/features/student/data/mapper/classroom_data_mapper.dart';
import 'package:tanlu_management/shared/infrastructure/mapper/base_data_mapper.dart';
import 'package:tanlu_management/shared/utils/date_time_utils.dart';

@Injectable()
class ProgramDataMapper extends BaseDataMapper<ProgramData, Program>
    with DataMapperMixin<ProgramData, Program> {
  ProgramDataMapper(this._programFileDataMapper, this._classroomDataMapper);

  final ProgramFileDataMapper _programFileDataMapper;
  final ClassroomDataMapper _classroomDataMapper;

  @override
  Program mapToEntity(ProgramData? data) {
    return Program(
      id: data?.id ?? 0,
      classId: data?.classId ?? 0,
      title: data?.title ?? '',
      description: data?.description ?? '',
      version: data?.version ?? '',
      targetAgeFromMonth: data?.targetAgeFromMonth ?? 0,
      targetAgeToMonth: data?.targetAgeToMonth ?? 0,
      status: data?.status ?? '',
      createdAt: DateTimeUtils.parseOccurredAt(data?.createdAt),
      updatedAt: DateTimeUtils.parseOccurredAt(data?.updatedAt),
      classroom: _classroomDataMapper.mapToEntity(data?.classroom),
      creator: _ProgramCreatorDataMapper().mapToEntity(data?.creator),
      files: _programFileDataMapper.mapToListEntity(data?.files),
    );
  }

  @override
  ProgramData mapToData(Program entity) {
    return ProgramData(
      id: entity.id,
      classId: entity.classId,
      title: entity.title,
      description: entity.description,
      version: entity.version,
      targetAgeFromMonth: entity.targetAgeFromMonth,
      targetAgeToMonth: entity.targetAgeToMonth,
      status: entity.status,
      createdAt: entity.createdAt?.toIso8601String(),
      updatedAt: entity.updatedAt?.toIso8601String(),
      creator: _ProgramCreatorDataMapper().mapToData(entity.creator),
    );
  }
}

class _ProgramCreatorDataMapper
    extends BaseDataMapper<ProgramCreatorData, ProgramCreator> {
  @override
  ProgramCreator mapToEntity(ProgramCreatorData? data) {
    if (data == null) return const ProgramCreator();
    return ProgramCreator(
      id: data.id ?? 0,
      fullName: data.fullName ?? '',
      email: data.email ?? '',
    );
  }

  ProgramCreatorData mapToData(ProgramCreator? entity) {
    if (entity == null) return const ProgramCreatorData();
    return ProgramCreatorData(
      id: entity.id,
      fullName: entity.fullName,
      email: entity.email,
    );
  }
}
