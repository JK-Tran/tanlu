class PagingConstants {
  const PagingConstants._();

  static const initialPage = 1;
  static const itemsPerPage = 10;
  static const defaultInvisibleItemsThreshold = 1;

  /// Giới hạn an toàn khi load toàn bộ HS 1 lớp (thực tế ~20–50).
  static const maxStudentsPerClass = 100;
}
