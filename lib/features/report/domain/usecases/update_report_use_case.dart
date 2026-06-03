import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/report/domain/entity/report.dart';
import 'package:tanlu_management/features/report/domain/repositories/report_repository.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_output.dart';

part 'update_report_use_case.freezed.dart';

@Injectable()
class UpdateReportUseCase
    extends BaseFutureUseCase<UpdateReportInput, UpdateReportOutput> {
  const UpdateReportUseCase(this._repository);

  final ReportRepository _repository;

  @protected
  @override
  Future<UpdateReportOutput> buildUseCase(UpdateReportInput input) async {
    return UpdateReportOutput(
      await _repository.updateReport(
        id: input.id,
        title: input.title,
        teacherComment: input.teacherComment,
        status: input.status,
        files: input.files,
      ),
    );
  }
}

@freezed
class UpdateReportInput extends BaseInput with _$UpdateReportInput {
  const factory UpdateReportInput({
    required int id,
    String? title,
    String? teacherComment,
    ReportStatus? status,
    List<String>? files,
  }) = _UpdateReportInput;
}

@freezed
class UpdateReportOutput extends BaseOutput with _$UpdateReportOutput {
  const factory UpdateReportOutput(Report report) = _UpdateReportOutput;
}
