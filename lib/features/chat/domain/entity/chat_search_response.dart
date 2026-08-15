import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_search_response.freezed.dart';

@freezed
class ChatSearchResponse with _$ChatSearchResponse {
  const factory ChatSearchResponse({
    String? query,
    @Default([]) List<Map<String, dynamic>> results,
    Map<String, dynamic>? pagination,
  }) = _ChatSearchResponse;
}
