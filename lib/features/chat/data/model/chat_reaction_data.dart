import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_reaction_data.freezed.dart';
part 'chat_reaction_data.g.dart';

@freezed
class ChatReactionData with _$ChatReactionData {
  const factory ChatReactionData({
    @JsonKey(name: 'userId') int? userId,
    @JsonKey(name: 'reactionType') int? reactionType,
  }) = _ChatReactionData;

  factory ChatReactionData.fromJson(Map<String, dynamic> json) => _$ChatReactionDataFromJson(json);
}
