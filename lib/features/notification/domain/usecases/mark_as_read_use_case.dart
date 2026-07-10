import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/notification/domain/repositories/notification_repository.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_output.dart';

part 'mark_as_read_use_case.freezed.dart';

@Injectable()
class MarkAsReadUseCase extends BaseFutureUseCase<MarkAsReadInput, MarkAsReadOutput> {
  const MarkAsReadUseCase(this._repository);

  final NotificationRepository _repository;

  @protected
  @override
  Future<MarkAsReadOutput> buildUseCase(MarkAsReadInput input) async {
    await _repository.markAsRead(input.notificationIds);
    return const MarkAsReadOutput();
  }
}

@freezed
class MarkAsReadInput extends BaseInput with _$MarkAsReadInput {
  const factory MarkAsReadInput({
    required List<int> notificationIds,
  }) = _MarkAsReadInput;
}

@freezed
class MarkAsReadOutput extends BaseOutput with _$MarkAsReadOutput {
  const factory MarkAsReadOutput() = _MarkAsReadOutput;

  const MarkAsReadOutput._();
}
