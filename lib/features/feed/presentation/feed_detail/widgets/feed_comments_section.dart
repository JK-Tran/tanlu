import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/features/feed/domain/entity/comment.dart';
import 'package:tanlu_management/features/feed/presentation/feed_detail/widgets/comment_item.dart';

class FeedCommentsSection extends StatelessWidget {
  const FeedCommentsSection({
    super.key,
    required this.comments,
    required this.feedAuthorId,
    required this.viewerUserId,
    this.isLoading = false,
    this.canInteract = false,
    this.onReply,
    this.onLike,
    this.onEdit,
    this.onDelete,
  });

  final List<Comment> comments;
  final String feedAuthorId;
  final String viewerUserId;
  final bool isLoading;
  final bool canInteract;
  final void Function(Comment comment)? onReply;
  final void Function(Comment comment)? onLike;
  final void Function(Comment comment)? onEdit;
  final void Function(Comment comment)? onDelete;

  @override
  Widget build(BuildContext context) {
    final total = _countComments(comments);

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
          if (isLoading && comments.isEmpty)
            Padding(
              padding: EdgeInsets.symmetric(vertical: 24.h),
              child: const Center(child: CircularProgressIndicator(strokeWidth: 2)),
            )
          else if (comments.isEmpty)
            Padding(
              padding: EdgeInsets.only(bottom: 12.h),
              child: AppText.b2(
                'Chưa có bình luận nào. Hãy là người đầu tiên!',
                color: AppColors.grayMedium,
                fontSize: 12.sp,
              ),
            )
          else
            ...comments.map(
              (comment) => CommentItem(
                comment: comment,
                feedAuthorId: feedAuthorId,
                viewerUserId: viewerUserId,
                canInteract: canInteract,
                onReply: onReply,
                onLike: onLike,
                onEdit: onEdit,
                onDelete: onDelete,
              ),
            ),
        ],
      ),
    );
  }

  int _countComments(List<Comment> items) {
    var total = 0;
    void walk(List<Comment> list) {
      for (final comment in list) {
        total++;
        walk(comment.replies);
      }
    }

    walk(items);
    return total;
  }
}
