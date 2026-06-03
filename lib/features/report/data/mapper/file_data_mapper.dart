import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/report/data/model/file_data.dart';
import 'package:tanlu_management/features/report/domain/entity/file.dart';
import 'package:tanlu_management/shared/infrastructure/mapper/base_data_mapper.dart';
import 'package:tanlu_management/shared/utils/date_time_utils.dart';

@Injectable()
class FileDataMapper extends BaseDataMapper<FileData, File>
    with DataMapperMixin<FileData, File> {
  FileDataMapper();

  @override
  File mapToEntity(FileData? data) {
    return File(
      id: data?.id ?? 0,
      monthlyReportId: data?.monthlyReportId ?? 0,
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
  FileData mapToData(File entity) {
    return FileData(
      id: entity.id,
      monthlyReportId: entity.monthlyReportId,
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
