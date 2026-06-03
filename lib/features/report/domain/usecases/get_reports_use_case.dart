import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/report/domain/entity/report.dart';
import 'package:tanlu_management/features/report/domain/repositories/report_repository.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_output.dart';

part 'get_reports_use_case.freezed.dart';

@Injectable()
class GetReportsUseCase
    extends BaseFutureUseCase<GetReportsInput, GetReportsOutput> {
  const GetReportsUseCase(this._repository);

  final ReportRepository _repository;

  @protected
  @override
  Future<GetReportsOutput> buildUseCase(GetReportsInput input) async {
    return GetReportsOutput(
      await _repository.getReports(reportMonth: input.reportMonth),
    );
  }
}

@freezed
class GetReportsInput extends BaseInput with _$GetReportsInput {
  const factory GetReportsInput({String? reportMonth}) = _GetReportsInput;
}

@freezed
class GetReportsOutput extends BaseOutput with _$GetReportsOutput {
  const factory GetReportsOutput(List<Report> reports) = _GetReportsOutput;
}
