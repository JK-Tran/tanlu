/// Base mapper: Data/Model (R) → Entity (E).
/// Dùng cho data layer map DTO từ API/storage sang entity domain.
abstract class BaseDataMapper<R, E> {
  const BaseDataMapper();

  E mapToEntity(R? data);

  List<E> mapToListEntity(List<R>? listData) {
    return listData?.map(mapToEntity).toList() ?? <E>[];
  }
}

/// Bổ sung chiều ngược: Entity (E) → Data (R).
/// Dùng khi cần lưu entity xuống storage hoặc gửi lên API.
mixin DataMapperMixin<R, E> on BaseDataMapper<R, E> {
  R mapToData(E entity);

  R? mapToNullableData(E? entity) {
    if (entity == null) return null;
    return mapToData(entity);
  }

  List<R> mapToListData(List<E>? listEntity) {
    return listEntity?.map(mapToData).toList() ?? <R>[];
  }
}
