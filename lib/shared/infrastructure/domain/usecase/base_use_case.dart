import 'package:meta/meta.dart';

import '../../../mixin/log_mixin.dart';
import 'io/base_input.dart';

abstract class BaseUseCase<Input extends BaseInput, Output> with LogMixin {
  const BaseUseCase();

  @protected
  Output buildUseCase(Input input);
}
