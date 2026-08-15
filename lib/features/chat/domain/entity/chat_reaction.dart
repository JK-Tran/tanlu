import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_reaction.freezed.dart';

@freezed
class ChatReaction with _$ChatReaction {
  const factory ChatReaction({
    @Default(0) int userId,
    @Default(0) int reactionType,
  }) = _ChatReaction;
}
