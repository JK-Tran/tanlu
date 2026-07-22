import 'package:tanlu_management/l10n/l10n.dart';

enum FeedLikeFilter {
  all,
  parents,
  teachers;

  String get label => switch (this) {
    FeedLikeFilter.all => S.current.all,
    FeedLikeFilter.parents => S.current.parents,
    FeedLikeFilter.teachers => S.current.teachers,
  };
}
