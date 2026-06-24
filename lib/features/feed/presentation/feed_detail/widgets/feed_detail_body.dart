import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/features/feed/domain/entity/comment.dart';
import 'package:tanlu_management/features/feed/domain/entity/feed.dart';
import 'package:tanlu_management/features/feed/presentation/feed_detail/widgets/feed_comments_section.dart';
import 'package:tanlu_management/features/feed/presentation/widgets/feed_item.dart';

class FeedDetailBody extends StatelessWidget {
  const FeedDetailBody({
    super.key,
    required this.scrollController,
    required this.commentsKey,
    required this.feed,
    required this.comments,
    required this.viewerUserId,
    required this.isLoadingComments,
    required this.onLikeTap,
    required this.onCommentTap,
    this.onMoreTap,
    this.canInteract = false,
    this.onReply,
    this.onCommentLike,
    this.onCommentEdit,
    this.onCommentDelete,
  });

  final ScrollController scrollController;
  final GlobalKey commentsKey;
  final Feed feed;
  final List<Comment> comments;
  final String viewerUserId;
  final bool isLoadingComments;
  final VoidCallback? onLikeTap;
  final VoidCallback onCommentTap;
  final VoidCallback? onMoreTap;
  final bool canInteract;
  final void Function(Comment comment)? onReply;
  final void Function(Comment comment)? onCommentLike;
  final void Function(Comment comment)? onCommentEdit;
  final void Function(Comment comment)? onCommentDelete;

  @override
  Widget build(BuildContext context) {
    return ListView(
      controller: scrollController,
      padding: EdgeInsets.only(top: 8.h, bottom: 16.h),
      children: [
        FeedItem(
          feed: feed,
          showActions: true,
          onLikeTap: onLikeTap,
          onCommentTap: onCommentTap,
          onMoreTap: onMoreTap,
        ),
        KeyedSubtree(
          key: commentsKey,
          child: FeedCommentsSection(
            comments: comments,
            feedAuthorId: feed.author.id,
            viewerUserId: viewerUserId,
            isLoading: isLoadingComments,
            canInteract: canInteract,
            onReply: onReply,
            onLike: onCommentLike,
            onEdit: onCommentEdit,
            onDelete: onCommentDelete,
          ),
        ),
      ],
    );
  }
}
