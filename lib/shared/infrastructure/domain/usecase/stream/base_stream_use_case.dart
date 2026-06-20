import 'package:tanlu_management/shared/config/log_config.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/base_use_case.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:tanlu_management/shared/mixins/log_mixin.dart';
import 'package:tanlu_management/shared/network/exceptions/app_exceptions.dart';
import 'package:tanlu_management/shared/network/exceptions/uncaught/app_uncaught_exeption.dart';

/// Base class cho các UseCase trả về Stream (Real-time data từ Firestore).
abstract class BaseStreamUseCase<Input extends BaseInput, Output>
    extends BaseUseCase<Input, Stream<Output>>
    with LogMixin {
  const BaseStreamUseCase();

  Stream<Output> execute(Input input) {
    if (LogConfig.enableLogUseCaseInput) {
      logD('StreamUseCase Input: $input');
    }
    return buildUseCase(input).handleError((Object e, StackTrace st) {
      if (LogConfig.enableLogUseCaseError) {
        logE('StreamUseCase Error: $e');
      }
      throw e is AppException ? e : AppUncaughtException(e);
    });
  }
}
