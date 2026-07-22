import 'package:tanlu_management/l10n/l10n.dart';

enum FeedNotificationFilter {
  all,
  feeds,
  comments,
  other;

  String get label => switch (this) {
        FeedNotificationFilter.all => S.current.all,
        FeedNotificationFilter.feeds => S.current.posts,
        FeedNotificationFilter.comments => S.current.comments,
        FeedNotificationFilter.other => S.current.other,
      };
}
