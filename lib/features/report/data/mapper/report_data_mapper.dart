import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/report/data/mapper/creator_data_mapper.dart';
import 'package:tanlu_management/features/report/data/mapper/file_data_mapper.dart';
import 'package:tanlu_management/features/report/data/model/report_data.dart';
import 'package:tanlu_management/features/report/domain/entity/report.dart';
import 'package:tanlu_management/features/student/data/mapper/student_data_mapper.dart';
import 'package:tanlu_management/shared/infrastructure/mapper/base_data_mapper.dart';
import 'package:tanlu_management/shared/utils/date_time_utils.dart';

@Injectable()
class ReportDataMapper extends BaseDataMapper<ReportData, Report>
    with DataMapperMixin<ReportData, Report> {
  ReportDataMapper(
    this._fileDataMapper,
    this._studentDataMapper,
    this._creatorDataMapper,
  );

  final FileDataMapper _fileDataMapper;
  final StudentDataMapper _studentDataMapper;
  final CreatorDataMapper _creatorDataMapper;
  @override
  Report mapToEntity(ReportData? data) {
    return Report(
      id: data?.id ?? 0,
      studentId: data?.studentId ?? 0,
      reportMonth: data?.reportMonth ?? '',
      title: data?.title ?? '',
      teacherComment: data?.teacherComment ?? '',
      status: ReportStatus.fromString(data?.status),
      createdAt: DateTimeUtils.parseDateTime(data?.createdAt),
      updatedAt: DateTimeUtils.parseDateTime(data?.updatedAt),
      student: _studentDataMapper.mapToEntity(data?.student),
      creator: _creatorDataMapper.mapToEntity(data?.creator),
      approver: data?.approver ?? 0,
      files: _fileDataMapper.mapToListEntity(data?.files),
    );
  }

  @override
  ReportData mapToData(Report entity) {
    return ReportData(
      id: entity.id,
      studentId: entity.studentId,
      reportMonth: entity.reportMonth,
      title: entity.title,
      teacherComment: entity.teacherComment,
      status: entity.status.name,
      createdAt: entity.createdAt?.toIso8601String(),
      updatedAt: entity.updatedAt?.toIso8601String(),
      student: _studentDataMapper.mapToNullableData(entity.student),
      creator: _creatorDataMapper.mapToNullableData(entity.creator),
      approver: entity.approver,
      files: _fileDataMapper.mapToListData(entity.files),
    );
  }
}
