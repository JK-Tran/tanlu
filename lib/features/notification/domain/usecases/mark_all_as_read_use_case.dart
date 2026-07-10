import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/notification/domain/repositories/notification_repository.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_output.dart';

part 'mark_all_as_read_use_case.freezed.dart';

@Injectable()
class MarkAllAsReadUseCase extends BaseFutureUseCase<MarkAllAsReadInput, MarkAllAsReadOutput> {
  const MarkAllAsReadUseCase(this._repository);

  final NotificationRepository _repository;

  @protected
  @override
  Future<MarkAllAsReadOutput> buildUseCase(MarkAllAsReadInput input) async {
    await _repository.markAllAsRead();
    return const MarkAllAsReadOutput();
  }
}

@freezed
class MarkAllAsReadInput extends BaseInput with _$MarkAllAsReadInput {
  const factory MarkAllAsReadInput() = _MarkAllAsReadInput;
}

@freezed
class MarkAllAsReadOutput extends BaseOutput with _$MarkAllAsReadOutput {
  const factory MarkAllAsReadOutput() = _MarkAllAsReadOutput;

  const MarkAllAsReadOutput._();
}
