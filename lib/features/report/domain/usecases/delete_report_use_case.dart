import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/report/domain/repositories/report_repository.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_output.dart';

part 'delete_report_use_case.freezed.dart';

@Injectable()
class DeleteReportUseCase
    extends BaseFutureUseCase<DeleteReportInput, DeleteReportOutput> {
  const DeleteReportUseCase(this._repository);

  final ReportRepository _repository;

  @protected
  @override
  Future<DeleteReportOutput> buildUseCase(DeleteReportInput input) async {
    await _repository.deleteReport(id: input.id);
    return const DeleteReportOutput();
  }
}

@freezed
class DeleteReportInput extends BaseInput with _$DeleteReportInput {
  const factory DeleteReportInput({required int id}) = _DeleteReportInput;
}

@freezed
class DeleteReportOutput extends BaseOutput with _$DeleteReportOutput {
  const factory DeleteReportOutput() = _DeleteReportOutput;
}
