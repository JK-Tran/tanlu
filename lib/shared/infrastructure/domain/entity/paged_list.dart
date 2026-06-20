import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/load_more_output.dart';

part 'paged_list.freezed.dart';

@freezed
class PagedList<T> with _$PagedList<T> {
  const PagedList._();

  const factory PagedList({
    required List<T> data,
    @Default(null) Object? otherData,
    @Default(1) int currentPage,
    @Default(false) bool hasMore,
    @Default(0) int totalItems,
    @Default(0) int totalPage,
    @Default(0) int itemsPerPage,
    @Default(-99) int? offset,
  }) = _PagedList;

  bool get isLastPage => data.isEmpty || !hasMore;

  LoadMoreOutput<T> toLoadMoreOutput() {
    return LoadMoreOutput(
      data: data,
      otherData: otherData,
      page: currentPage,
      isLastPage: isLastPage,
      itemsPerPage: itemsPerPage,
      totalItems: totalItems,
      totalPage: totalPage,
    );
  }
}
