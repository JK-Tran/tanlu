import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/features/feed/domain/entity/feed_post.dart';
import 'package:tanlu_management/features/feed/presentation/feed_page/widgets/explore_tab/explore_item.dart';
import 'package:tanlu_management/l10n/l10n.dart';

class ExploreList extends StatelessWidget {
  const ExploreList({
    super.key,
    required this.feeds,
    required this.hasMore,
    required this.isLoadingMore,
    required this.onLoadMore,
    required this.onItemTap,
    this.onLike,
  });

  final List<FeedPost> feeds;
  final bool hasMore;
  final bool isLoadingMore;
  final VoidCallback onLoadMore;
  final void Function(FeedPost feed) onItemTap;
  final void Function(FeedPost feed)? onLike;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (feeds.isEmpty)
          Padding(
            padding: EdgeInsets.all(32.w),
            child: AppText.b1(
              context.l10n.feedNoPublicPosts,
              textAlign: TextAlign.center,
              color: AppColors.grayMedium,
            ),
          ),
        for (final feed in feeds)
          ExploreItem(
            feed: feed,
            onTap: () => onItemTap(feed),
            onLike: onLike != null ? () => onLike!(feed) : null,
          ),
        if (hasMore)
          Center(
            child: TextButton(
              onPressed: isLoadingMore ? null : onLoadMore,
              child: isLoadingMore
                  ? const SizedBox(
                      width: 24,
                      height: 24,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    )
                  : Text(context.l10n.feedSeeMore),
            ),
          ),
      ],
    );
  }
}
