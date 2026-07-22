import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tanlu_management/shared/model/typedef.dart';

part 'feed_author_data.freezed.dart';
part 'feed_author_data.g.dart';

@freezed
class FeedAuthorData with _$FeedAuthorData {
  const factory FeedAuthorData({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'fullName') String? fullName,
    @JsonKey(name: 'avatarUrl') String? avatarUrl,
  }) = _FeedAuthorData;

  factory FeedAuthorData.fromJson(JSON json) => _$FeedAuthorDataFromJson(json);
}
