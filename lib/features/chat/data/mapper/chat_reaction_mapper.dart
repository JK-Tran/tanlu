import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/chat/data/model/chat_reaction_data.dart';
import 'package:tanlu_management/features/chat/domain/entity/chat_reaction.dart';
import 'package:tanlu_management/shared/infrastructure/data/base/base_data_mapper.dart';

@Injectable()
class ChatReactionMapper extends BaseDataMapper<ChatReactionData, ChatReaction> with DataMapperMixin<ChatReactionData, ChatReaction> {
  @override
  ChatReaction mapToEntity(ChatReactionData? data) {
    return ChatReaction(
      userId: data?.userId ?? 0,
      reactionType: data?.reactionType ?? 0,
    );
  }

  @override
  ChatReactionData mapToData(ChatReaction entity) {
    return ChatReactionData(
      userId: entity.userId,
      reactionType: entity.reactionType,
    );
  }
}
