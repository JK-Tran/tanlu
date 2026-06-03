import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/report/domain/entity/report.dart';
import 'package:tanlu_management/features/report/domain/repositories/report_repository.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_output.dart';

part 'create_report_use_case.freezed.dart';

@Injectable()
class CreateReportUseCase
    extends BaseFutureUseCase<CreateReportInput, CreateReportOutput> {
  const CreateReportUseCase(this._repository);

  final ReportRepository _repository;

  @protected
  @override
  Future<CreateReportOutput> buildUseCase(CreateReportInput input) async {
    return CreateReportOutput(
      await _repository.createReport(
        studentId: input.studentId,
        reportMonth: input.reportMonth,
        title: input.title,
        teacherComment: input.teacherComment,
        files: input.files,
      ),
    );
  }
}

@freezed
class CreateReportInput extends BaseInput with _$CreateReportInput {
  const factory CreateReportInput({
    required int studentId,
    required String reportMonth,
    required String title,
    required String teacherComment,
    List<String>? files,
  }) = _CreateReportInput;
}

@freezed
class CreateReportOutput extends BaseOutput with _$CreateReportOutput {
  const factory CreateReportOutput(Report report) = _CreateReportOutput;
}
