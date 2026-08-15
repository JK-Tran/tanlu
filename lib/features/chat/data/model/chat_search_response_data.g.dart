// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_search_response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatSearchResponseDataImpl _$$ChatSearchResponseDataImplFromJson(
  Map<String, dynamic> json,
) => _$ChatSearchResponseDataImpl(
  query: json['query'] as String?,
  results:
      (json['results'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList() ??
      const [],
  pagination: json['pagination'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$$ChatSearchResponseDataImplToJson(
  _$ChatSearchResponseDataImpl instance,
) => <String, dynamic>{
  'query': instance.query,
  'results': instance.results,
  'pagination': instance.pagination,
};
