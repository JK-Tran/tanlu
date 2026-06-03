import 'package:meta/meta.dart';
import 'package:tanlu_management/shared/mixins/log_mixin.dart';

import 'io/base_input.dart';

abstract class BaseUseCase<Input extends BaseInput, Output> with LogMixin {
  const BaseUseCase();

  @protected
  Output buildUseCase(Input input);
}
