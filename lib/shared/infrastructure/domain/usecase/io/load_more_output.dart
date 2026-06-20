import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tanlu_management/shared/infrastructure/domain/pagination/paging_constants.dart';
import 'package:tanlu_management/shared/infrastructure/domain/usecase/io/base_output.dart';

part 'load_more_output.freezed.dart';

@freezed
class LoadMoreOutput<T> extends BaseOutput with _$LoadMoreOutput<T> {
  const LoadMoreOutput._();

  const factory LoadMoreOutput({
    required List<T> data,
    @Default(null) Object? otherData,
    @Default(PagingConstants.initialPage) int page,
    @Default(false) bool isRefreshSuccess,
    @Default(false) bool isLastPage,
    @Default(0) int totalItems,
    @Default(0) int offset,
    @Default(0) int totalPage,
    @Default(0) int itemsPerPage,
  }) = _LoadMoreOutput;

  int get nextPage => page + 1;
  int get previousPage => page - 1;
}
