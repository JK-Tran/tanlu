import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/features/feed/domain/entity/feed_post.dart';
import 'package:tanlu_management/features/feed/domain/entity/feed_comment.dart';
import 'package:tanlu_management/features/feed/presentation/feed_detail/bloc/feed_detail_bloc.dart';
import 'package:tanlu_management/features/feed/presentation/feed_detail/widgets/comments/comment_list.dart';
import 'package:tanlu_management/features/feed/presentation/widgets/feed_item.dart';

class FeedDetailBody extends StatelessWidget {
  const FeedDetailBody({
    super.key,
    required this.scrollController,
    required this.feed,
    this.highlightCommentId,
    this.onMoreTap,
    this.onCommentTap,
    this.onReplyTap,
  });

  final ScrollController scrollController;
  final FeedPost feed;
  final int? highlightCommentId;
  final VoidCallback? onMoreTap;
  final VoidCallback? onCommentTap;
  final void Function(FeedComment)? onReplyTap;

  @override
  Widget build(BuildContext context) {
    final state = context.watch<FeedDetailBloc>().state;

    return ListView(
      controller: scrollController,
      padding: EdgeInsets.only(top: 8.h, bottom: 16.h),
      children: [
        FeedItem(
          feed: feed,
          showActions: true,
          onTap: onCommentTap,
          onLike: () {
            context.read<FeedDetailBloc>().add(const FeedDetailToggleLike());
          },
          onMoreTap: onMoreTap,
        ),
        CommentList(
          comments: state.comments,
          feedAuthorId: feed.author?.id ?? 0,
          viewerUserId: state.viewerUserId,
          totalCommentCount: feed.commentCount,
          highlightCommentId: highlightCommentId,
          isLoading: state.isLoadingComments,
          canInteract: true,
          onReply: onReplyTap,
          onLike: (comment) {
            context.read<FeedDetailBloc>().add(
              FeedDetailToggleCommentLike(commentId: comment.id),
            );
          },
        ),
      ],
    );
  }
}
