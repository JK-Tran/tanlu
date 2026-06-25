import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/chat/domain/entity/contact.dart';
import 'package:tanlu_management/features/chat/domain/repositories/chat_repository.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/future/base_future_use_case.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_input.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_output.dart';

part 'get_friends_use_case.freezed.dart';

@Injectable()
class GetFriendsUseCase
    extends BaseFutureUseCase<GetFriendsInput, GetFriendsOutput> {
  const GetFriendsUseCase(this._repository);

  final ChatRepository _repository;

  @protected
  @override
  Future<GetFriendsOutput> buildUseCase(GetFriendsInput input) async {
    final friends = await _repository.getFriends(
      currentUserId: input.currentUserId,
    );
    return GetFriendsOutput(friends: friends);
  }
}

@freezed
class GetFriendsInput extends BaseInput with _$GetFriendsInput {
  const factory GetFriendsInput({required String currentUserId}) =
      _GetFriendsInput;
}

@freezed
class GetFriendsOutput extends BaseOutput with _$GetFriendsOutput {
  const factory GetFriendsOutput({required List<Contact> friends}) =
      _GetFriendsOutput;
}
