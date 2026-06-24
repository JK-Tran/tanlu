enum FeedLikeFilter {
  all,
  parents,
  teachers;

  String get label => switch (this) {
    FeedLikeFilter.all => 'Tất cả',
    FeedLikeFilter.parents => 'Phụ huynh',
    FeedLikeFilter.teachers => 'Giáo viên',
  };
}
