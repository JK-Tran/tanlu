import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination_cursor.freezed.dart';

@freezed
class PaginationCursor with _$PaginationCursor {
  const factory PaginationCursor({
    String? beforeCursor,
    String? afterCursor,
    String? nextCursor,
    @Default(false) bool hasMoreBefore,
    @Default(false) bool hasMoreAfter,
    @Default(false) bool hasMore,
  }) = _PaginationCursor;
}
