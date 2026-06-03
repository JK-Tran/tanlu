import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/report/domain/repositories/report_repository.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_output.dart';

part 'delete_report_file_use_case.freezed.dart';

@Injectable()
class DeleteReportFileUseCase
    extends BaseFutureUseCase<DeleteReportFileInput, DeleteReportFileOutput> {
  const DeleteReportFileUseCase(this._repository);

  final ReportRepository _repository;

  @protected
  @override
  Future<DeleteReportFileOutput> buildUseCase(DeleteReportFileInput input) async {
    await _repository.deleteReportFile(reportId: input.reportId, fileId: input.fileId);
    return const DeleteReportFileOutput();
  }
}

@freezed
class DeleteReportFileInput extends BaseInput with _$DeleteReportFileInput {
  const factory DeleteReportFileInput({
    required int reportId,
    required int fileId,
  }) = _DeleteReportFileInput;
}

@freezed
class DeleteReportFileOutput extends BaseOutput with _$DeleteReportFileOutput {
  const factory DeleteReportFileOutput() = _DeleteReportFileOutput;
}
