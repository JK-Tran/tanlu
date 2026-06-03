import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/report/domain/entity/report.dart';
import 'package:tanlu_management/features/report/domain/repositories/report_repository.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_output.dart';

part 'get_report_by_id_use_case.freezed.dart';

@Injectable()
class GetReportByIdUseCase
    extends BaseFutureUseCase<GetReportByIdInput, GetReportByIdOutput> {
  const GetReportByIdUseCase(this._repository);

  final ReportRepository _repository;

  @protected
  @override
  Future<GetReportByIdOutput> buildUseCase(GetReportByIdInput input) async {
    return GetReportByIdOutput(await _repository.getReportById(id: input.id));
  }
}

@freezed
class GetReportByIdInput extends BaseInput with _$GetReportByIdInput {
  const factory GetReportByIdInput({required int id}) = _GetReportByIdInput;
}

@freezed
class GetReportByIdOutput extends BaseOutput with _$GetReportByIdOutput {
  const factory GetReportByIdOutput(Report report) = _GetReportByIdOutput;
}
