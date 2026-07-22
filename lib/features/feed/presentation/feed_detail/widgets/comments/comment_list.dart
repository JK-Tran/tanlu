import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/features/feed/domain/entity/feed_comment.dart';
import 'package:tanlu_management/features/feed/presentation/feed_detail/widgets/comments/comment_item.dart';

class CommentList extends StatefulWidget {
  const CommentList({
    super.key,
    required this.comments,
    required this.feedAuthorId,
    required this.viewerUserId,
    this.isLoading = false,
    this.canInteract = false,
    this.highlightCommentId,
    this.onReply,
    this.onLike,
    this.onEdit,
    this.onDelete,
  });

  final List<FeedComment> comments;
  final int feedAuthorId;
  final int viewerUserId;
  final bool isLoading;
  final bool canInteract;
  final int? highlightCommentId;
  final void Function(FeedComment comment)? onReply;
  final void Function(FeedComment comment)? onLike;
  final void Function(FeedComment comment)? onEdit;
  final void Function(FeedComment comment)? onDelete;

  @override
  State<CommentList> createState() => _CommentListState();
}

class _CommentListState extends State<CommentList> {
  final GlobalKey _highlightKey = GlobalKey();
  bool _hasScrolled = false;

  @override
  void didUpdateWidget(covariant CommentList oldWidget) {
    super.didUpdateWidget(oldWidget);

    // Auto-scroll logic when comments are loaded
    if (!_hasScrolled &&
        widget.highlightCommentId != null &&
        widget.comments.isNotEmpty) {
      _hasScrolled = true; // Only scroll once
      WidgetsBinding.instance.addPostFrameCallback((_) {
        // Wait a tiny bit for the list to finish layout
        Future.delayed(const Duration(milliseconds: 300), () {
          if (mounted && _highlightKey.currentContext != null) {
            Scrollable.ensureVisible(
              _highlightKey.currentContext!,
              duration: const Duration(milliseconds: 600),
              curve: Curves.easeInOut,
              alignment: 0.5,
            );
          }
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final total = _countComments(widget.comments);

    return Container(
      margin: EdgeInsets.fromLTRB(16.w, 0, 16.w, 12.h),
      padding: EdgeInsets.fromLTRB(12.w, 12.h, 12.w, 4.h),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppText.b1(
            'Bình luận ($total)',
            fontWeight: FontWeight.w700,
            fontSize: 14.sp,
            color: AppColors.grayDark,
          ),
          SizedBox(height: 12.h),
          if (widget.isLoading && widget.comments.isEmpty)
            Padding(
              padding: EdgeInsets.symmetric(vertical: 24.h),
              child: const Center(
                child: CircularProgressIndicator(strokeWidth: 2),
              ),
            )
          else if (widget.comments.isEmpty)
            Padding(
              padding: EdgeInsets.only(bottom: 12.h),
              child: AppText.b2(
                'Chưa có bình luận nào. Hãy là người đầu tiên!',
                color: AppColors.grayMedium,
                fontSize: 12.sp,
              ),
            )
          else
            ...widget.comments.expand((rootComment) {
              final flatList = _flattenRootComment(rootComment);
              return flatList.map((flat) {
                final isHighlighted =
                    flat.comment.id == widget.highlightCommentId;
                return CommentItem(
                  key: isHighlighted ? _highlightKey : null,
                  comment: flat.comment,
                  feedAuthorId: widget.feedAuthorId,
                  viewerUserId: widget.viewerUserId,
                  canInteract: widget.canInteract,
                  highlightCommentId: widget.highlightCommentId,
                  depth: flat.depth > 0 ? 1 : 0,
                  replyToName: flat.replyToName,
                  onReply: widget.onReply,
                  onLike: widget.onLike,
                  onEdit: widget.onEdit,
                  onDelete: widget.onDelete,
                );
              });
            }),
        ],
      ),
    );
  }

  List<_FlatComment> _flattenRootComment(FeedComment root) {
    final List<_FlatComment> result = [];
    result.add(_FlatComment(root, 0, null));

    final List<_FlatComment> descendants = [];
    void traverse(FeedComment parent, int currentDepth) {
      for (final child in parent.replies) {
        final replyTo = currentDepth > 0 ? parent.author?.fullName : null;
        descendants.add(_FlatComment(child, currentDepth + 1, replyTo));
        traverse(child, currentDepth + 1);
      }
    }

    traverse(root, 0);

    // Sort all replies by createdAt ascending (oldest first)
    descendants.sort((a, b) {
      final dateA =
          a.comment.createdAt ?? DateTime.fromMillisecondsSinceEpoch(0);
      final dateB =
          b.comment.createdAt ?? DateTime.fromMillisecondsSinceEpoch(0);
      return dateA.compareTo(dateB);
    });

    result.addAll(descendants);
    return result;
  }

  int _countComments(List<FeedComment> items) {
    var total = 0;
    void walk(List<FeedComment> list) {
      for (final comment in list) {
        total++;
        walk(comment.replies);
      }
    }

    walk(items);
    return total;
  }
}

class _FlatComment {
  final FeedComment comment;
  final int depth;
  final String? replyToName;

  _FlatComment(this.comment, this.depth, this.replyToName);
}
