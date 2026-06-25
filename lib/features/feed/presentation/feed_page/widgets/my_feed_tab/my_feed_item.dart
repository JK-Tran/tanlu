import 'package:flutter/material.dart';
import 'package:tanlu_management/features/feed/domain/entity/feed.dart';
import 'package:tanlu_management/features/feed/presentation/widgets/feed_item.dart';

class MyFeedItem extends StatelessWidget {
  const MyFeedItem({
    super.key,
    required this.feed,
    required this.onTap,
    required this.onLikeTap,
    required this.onCommentTap,
  });

  final Feed feed;
  final VoidCallback onTap;
  final VoidCallback onLikeTap;
  final VoidCallback onCommentTap;

  @override
  Widget build(BuildContext context) {
    return FeedItem(
      feed: feed,
      onTap: onTap,
      onLikeTap: onLikeTap,
      onCommentTap: onCommentTap,
    );
  }
}
