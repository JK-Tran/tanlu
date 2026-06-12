import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/chat/domain/entity/contact.dart';
import 'package:tanlu_management/features/chat/domain/repositories/chat_repository.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_output.dart';

part 'get_contacts_use_case.freezed.dart';

@Injectable()
class GetContactsUseCase extends BaseFutureUseCase<GetContactsInput, GetContactsOutput> {
  const GetContactsUseCase(this._repository);

  final ChatRepository _repository;

  @protected
  @override
  Future<GetContactsOutput> buildUseCase(GetContactsInput input) async {
    return GetContactsOutput(await _repository.getContacts());
  }
}

@freezed
class GetContactsInput extends BaseInput with _$GetContactsInput {
  const factory GetContactsInput() = _GetContactsInput;
}

@freezed
class GetContactsOutput extends BaseOutput with _$GetContactsOutput {
  const factory GetContactsOutput(List<Contact> contacts) = _GetContactsOutput;
}
