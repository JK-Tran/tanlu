// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_messages_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatMessagesResponseDataImpl _$$ChatMessagesResponseDataImplFromJson(
  Map<String, dynamic> json,
) => _$ChatMessagesResponseDataImpl(
  messages:
      (json['messages'] as List<dynamic>?)
          ?.map((e) => ChatMessageData.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  anchorMessageId: (json['anchorMessageId'] as num?)?.toInt(),
  pagination: json['pagination'] == null
      ? null
      : PaginationCursorData.fromJson(
          json['pagination'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$$ChatMessagesResponseDataImplToJson(
  _$ChatMessagesResponseDataImpl instance,
) => <String, dynamic>{
  'messages': instance.messages,
  'anchorMessageId': instance.anchorMessageId,
  'pagination': instance.pagination,
};
