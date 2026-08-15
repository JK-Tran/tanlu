import 'package:injectable/injectable.dart';
import 'package:tanlu_management/features/chat/data/model/pagination_cursor_data.dart';
import 'package:tanlu_management/features/chat/domain/entity/pagination_cursor.dart';
import 'package:tanlu_management/shared/infrastructure/data/base/base_data_mapper.dart';

@Injectable()
class PaginationCursorMapper
    extends BaseDataMapper<PaginationCursorData, PaginationCursor> {
  @override
  PaginationCursor mapToEntity(PaginationCursorData? data) {
    return PaginationCursor(
      beforeCursor: data?.beforeCursor,
      afterCursor: data?.afterCursor,
      nextCursor: data?.nextCursor,
      hasMoreBefore: data?.hasMoreBefore ?? false,
      hasMoreAfter: data?.hasMoreAfter ?? false,
      hasMore: data?.hasMore ?? false,
    );
  }
}
