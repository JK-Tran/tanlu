// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination_cursor_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaginationCursorDataImpl _$$PaginationCursorDataImplFromJson(
  Map<String, dynamic> json,
) => _$PaginationCursorDataImpl(
  beforeCursor: json['beforeCursor'] as String?,
  afterCursor: json['afterCursor'] as String?,
  nextCursor: json['nextCursor'] as String?,
  hasMoreBefore: json['hasMoreBefore'] as bool? ?? false,
  hasMoreAfter: json['hasMoreAfter'] as bool? ?? false,
  hasMore: json['hasMore'] as bool? ?? false,
);

Map<String, dynamic> _$$PaginationCursorDataImplToJson(
  _$PaginationCursorDataImpl instance,
) => <String, dynamic>{
  'beforeCursor': instance.beforeCursor,
  'afterCursor': instance.afterCursor,
  'nextCursor': instance.nextCursor,
  'hasMoreBefore': instance.hasMoreBefore,
  'hasMoreAfter': instance.hasMoreAfter,
  'hasMore': instance.hasMore,
};
