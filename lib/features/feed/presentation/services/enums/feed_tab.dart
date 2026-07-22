import 'package:tanlu_management/l10n/l10n.dart';

/// Tab trên màn [FeedPage].
enum FeedTab {
  myClass,
  explore;

  String get label => switch (this) {
        FeedTab.myClass => S.current.myClass,
        FeedTab.explore => S.current.explore,
      };
}
