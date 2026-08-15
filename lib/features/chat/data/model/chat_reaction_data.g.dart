// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_reaction_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatReactionDataImpl _$$ChatReactionDataImplFromJson(
  Map<String, dynamic> json,
) => _$ChatReactionDataImpl(
  userId: (json['userId'] as num?)?.toInt(),
  reactionType: (json['reactionType'] as num?)?.toInt(),
);

Map<String, dynamic> _$$ChatReactionDataImplToJson(
  _$ChatReactionDataImpl instance,
) => <String, dynamic>{
  'userId': instance.userId,
  'reactionType': instance.reactionType,
};
