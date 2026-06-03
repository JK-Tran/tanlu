import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/programs/data/model/program_file_data.dart';
import 'package:tanlu_management/features/programs/domain/entity/program_file.dart';
import 'package:tanlu_management/shared/infrastructure/mapper/base_data_mapper.dart';
import 'package:tanlu_management/shared/utils/date_time_utils.dart';

@Injectable()
class ProgramFileDataMapper extends BaseDataMapper<ProgramFileData, ProgramFile>
    with DataMapperMixin<ProgramFileData, ProgramFile> {
  ProgramFileDataMapper();

  @override
  ProgramFile mapToEntity(ProgramFileData? data) {
    return ProgramFile(
      id: data?.id ?? 0,
      programId: data?.programId ?? 0,
      uploadedBy: data?.uploadedBy ?? 0,
      title: data?.title ?? '',
      description: data?.description ?? '',
      fileName: data?.fileName ?? '',
      fileUrl: data?.fileUrl ?? '',
      fileType: data?.fileType ?? '',
      fileSize: data?.fileSize ?? 0,
      sortOrder: data?.sortOrder ?? 0,
      createdAt: DateTimeUtils.parseDateTime(data?.createdAt),
    );
  }

  @override
  ProgramFileData mapToData(ProgramFile entity) {
    return ProgramFileData(
      id: entity.id,
      programId: entity.programId,
      uploadedBy: entity.uploadedBy,
      title: entity.title,
      description: entity.description,
      fileName: entity.fileName,
      fileUrl: entity.fileUrl,
      fileType: entity.fileType,
      fileSize: entity.fileSize,
      sortOrder: entity.sortOrder,
      createdAt: entity.createdAt?.toIso8601String(),
    );
  }
}
