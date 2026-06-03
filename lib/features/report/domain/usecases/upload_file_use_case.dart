import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/report/domain/repositories/report_repository.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_output.dart';

part 'upload_file_use_case.freezed.dart';

@injectable
class UploadFileUseCase
    extends BaseFutureUseCase<UploadFileInput, UploadFileOutput> {
  final ReportRepository _repository;

  const UploadFileUseCase(this._repository);

  @override
  Future<UploadFileOutput> buildUseCase(UploadFileInput input) async {
    final url = await _repository.uploadFile(input.filePath);
    return UploadFileOutput(fileUrl: url);
  }
}

@freezed
class UploadFileInput extends BaseInput with _$UploadFileInput {
  const factory UploadFileInput({required String filePath}) = _UploadFileInput;
}

@freezed
class UploadFileOutput extends BaseOutput with _$UploadFileOutput {
  const factory UploadFileOutput({required String? fileUrl}) =
      _UploadFileOutput;
}
