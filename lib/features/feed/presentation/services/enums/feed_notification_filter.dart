enum FeedNotificationFilter {
  all,
  feeds,
  comments,
  other;

  String get label => switch (this) {
        FeedNotificationFilter.all => 'Tất cả',
        FeedNotificationFilter.feeds => 'Bài viết',
        FeedNotificationFilter.comments => 'Bình luận',
        FeedNotificationFilter.other => 'Khác',
      };
}
