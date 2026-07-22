import 'package:flutter/material.dart';
import 'package:tanlu_management/features/feed/domain/entity/feed_post.dart';
import 'package:tanlu_management/features/feed/presentation/widgets/feed_item.dart';

class MyFeedItem extends StatelessWidget {
  const MyFeedItem({
    super.key,
    required this.feed,
    this.onTap,
    this.onLike,
  });

  final FeedPost feed;
  final VoidCallback? onTap;
  final VoidCallback? onLike;

  @override
  Widget build(BuildContext context) {
    return FeedItem(
      feed: feed,
      onTap: onTap,
      onLike: onLike,
    );
  }
}
