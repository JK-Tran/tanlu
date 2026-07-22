// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_author_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FeedAuthorDataImpl _$$FeedAuthorDataImplFromJson(Map<String, dynamic> json) =>
    _$FeedAuthorDataImpl(
      id: (json['id'] as num?)?.toInt(),
      fullName: json['fullName'] as String?,
      avatarUrl: json['avatarUrl'] as String?,
    );

Map<String, dynamic> _$$FeedAuthorDataImplToJson(
  _$FeedAuthorDataImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'fullName': instance.fullName,
  'avatarUrl': instance.avatarUrl,
};
