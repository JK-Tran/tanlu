import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination_cursor_data.freezed.dart';
part 'pagination_cursor_data.g.dart';

@freezed
class PaginationCursorData with _$PaginationCursorData {
  const factory PaginationCursorData({
    @JsonKey(name: 'beforeCursor') String? beforeCursor,
    @JsonKey(name: 'afterCursor') String? afterCursor,
    @JsonKey(name: 'nextCursor') String? nextCursor,
    @JsonKey(name: 'hasMoreBefore') @Default(false) bool hasMoreBefore,
    @JsonKey(name: 'hasMoreAfter') @Default(false) bool hasMoreAfter,
    @JsonKey(name: 'hasMore') @Default(false) bool hasMore,
  }) = _PaginationCursorData;

  factory PaginationCursorData.fromJson(Map<String, dynamic> json) =>
      _$PaginationCursorDataFromJson(json);
}
