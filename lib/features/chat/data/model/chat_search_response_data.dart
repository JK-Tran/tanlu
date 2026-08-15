import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_search_response_data.freezed.dart';
part 'chat_search_response_data.g.dart';

@freezed
class ChatSearchResponseData with _$ChatSearchResponseData {
  const factory ChatSearchResponseData({
    @JsonKey(name: 'query') String? query,
    @JsonKey(name: 'results') @Default([]) List<Map<String, dynamic>> results,
    @JsonKey(name: 'pagination') Map<String, dynamic>? pagination,
  }) = _ChatSearchResponseData;

  factory ChatSearchResponseData.fromJson(Map<String, dynamic> json) =>
      _$ChatSearchResponseDataFromJson(json);
}
