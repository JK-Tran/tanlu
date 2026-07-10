// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaginationDataImpl _$$PaginationDataImplFromJson(Map<String, dynamic> json) =>
    _$PaginationDataImpl(
      currentPage: (json['page'] as num?)?.toInt(),
      hasMore: json['hasMore'] as bool?,
      totalItems: (json['total'] as num?)?.toInt(),
      totalPage: (json['totalPages'] as num?)?.toInt(),
      itemsPerPage: (json['limit'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$PaginationDataImplToJson(
  _$PaginationDataImpl instance,
) => <String, dynamic>{
  'page': instance.currentPage,
  'hasMore': instance.hasMore,
  'total': instance.totalItems,
  'totalPages': instance.totalPage,
  'limit': instance.itemsPerPage,
};

_$PaginationData2Impl _$$PaginationData2ImplFromJson(
  Map<String, dynamic> json,
) => _$PaginationData2Impl(
  currentPage: (json['current_page'] as num?)?.toInt(),
  hasMore: json['has_more'] as bool?,
  totalItems: (json['total_items'] as num?)?.toInt(),
  totalPage: (json['total_page'] as num?)?.toInt(),
  itemsPerPage: (json['items_per_page'] as num?)?.toInt(),
);

Map<String, dynamic> _$$PaginationData2ImplToJson(
  _$PaginationData2Impl instance,
) => <String, dynamic>{
  'current_page': instance.currentPage,
  'has_more': instance.hasMore,
  'total_items': instance.totalItems,
  'total_page': instance.totalPage,
  'items_per_page': instance.itemsPerPage,
};
