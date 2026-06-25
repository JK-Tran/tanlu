/// Tab trên màn [FeedPage].
enum FeedTab {
  myClass,
  explore;

  String get label => switch (this) {
        FeedTab.myClass => 'Lớp của tôi',
        FeedTab.explore => 'Khám phá',
      };
}
