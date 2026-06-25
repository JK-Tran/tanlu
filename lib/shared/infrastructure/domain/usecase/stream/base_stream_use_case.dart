import 'package:tanlu_management/shared/config/log_config.dart';
import 'package:tanlu_management/core/utils/app_logger.dart';
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
      appLogger.i(
        '\x1B[36m************ UseCase Stream ************\n'
        '📦 $runtimeType\n'
        '📦 Input:\n'
        '${AppLogger.prettyJson(_inputForLog(input))}',
      );
    }
    return buildUseCase(input).handleError((Object e, StackTrace st) {
      if (LogConfig.enableLogUseCaseError) {
        logE('StreamUseCase Error: $e');
      }
      throw e is AppException ? e : AppUncaughtException(e);
    });
  }

  Map<String, dynamic> _inputForLog(Input input) {
    try {
      final json = (input as dynamic).toJson();
      if (json is Map<String, dynamic>) return json;
      if (json is Map) return Map<String, dynamic>.from(json);
    } catch (_) {}

    return {'value': input.toString()};
  }
}
