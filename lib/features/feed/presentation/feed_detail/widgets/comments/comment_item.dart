import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_avatar.dart';
import 'package:tanlu_management/features/feed/domain/entity/feed_comment.dart';
import 'package:tanlu_management/features/feed/presentation/feed_detail/widgets/comments/comment_bubble.dart';
import 'package:tanlu_management/features/feed/presentation/feed_detail/widgets/comments/comment_interactions.dart';

class CommentItem extends StatelessWidget {
  const CommentItem({
    super.key,
    required this.comment,
    required this.feedAuthorId,
    required this.viewerUserId,
    this.depth = 0,
    this.replyToName,
    this.canInteract = false,
    this.highlightCommentId,
    this.onReply,
    this.onLike,
    this.onEdit,
    this.onDelete,
  });

  final FeedComment comment;
  final int feedAuthorId;
  final int viewerUserId;
  final int depth;
  final String? replyToName;
  final bool canInteract;
  final int? highlightCommentId;
  final void Function(FeedComment comment)? onReply;
  final void Function(FeedComment comment)? onLike;
  final void Function(FeedComment comment)? onEdit;
  final void Function(FeedComment comment)? onDelete;

  bool get _isAuthor => comment.author?.id == viewerUserId;
  bool get _isFeedAuthor => feedAuthorId == viewerUserId;
  bool get _canEdit => _isAuthor;
  bool get _canDelete => _isAuthor || _isFeedAuthor;
  bool get _showMenu => canInteract && (_canEdit || _canDelete);

  @override
  Widget build(BuildContext context) {
    // Chỉ thụt lề đúng 1 cấp (0 cho bình luận gốc, 1 cho TẤT CẢ các reply)
    final visualDepth = depth > 0 ? 1 : 0;
    final isHighlighted = highlightCommentId == comment.id;

    return Padding(
      padding: EdgeInsets.only(bottom: 12.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TweenAnimationBuilder<Color?>(
            key: ValueKey(
              isHighlighted
                  ? 'highlight_${comment.id}'
                  : 'normal_${comment.id}',
            ),
            tween: ColorTween(
              begin: isHighlighted
                  ? AppColors.primary.withValues(alpha: 0.8)
                  : Colors.transparent,
              end: Colors.transparent,
            ),
            duration: const Duration(milliseconds: 2500),
            curve: Curves.easeOutCubic,
            builder: (context, color, child) {
              return Container(
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                padding: isHighlighted
                    ? EdgeInsets.symmetric(vertical: 4.h, horizontal: 4.w)
                    : EdgeInsets.zero,
                child: child,
              );
            },
            child: Padding(
              padding: EdgeInsets.only(left: visualDepth * 48.w),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppAvatar(name: comment.author?.fullName ?? '',
                    imageUrl: (comment.author?.avatarUrl?.isEmpty ?? true)
                        ? null
                        : comment.author!.avatarUrl,
                    size: depth == 0 ? 36 : 30,
                  ),
                  SizedBox(width: 10.w),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CommentBubble(
                          comment: comment,
                          depth: depth,
                          replyToName: replyToName,
                          showMenu: _showMenu,
                          canEdit: _canEdit,
                          canDelete: _canDelete,
                          feedAuthorId: feedAuthorId,
                          onEdit: () => onEdit!(comment),
                          onDelete: () => onDelete!(comment),
                        ),
                        SizedBox(height: 4.h),
                        CommentInteractions(
                          comment: comment,
                          canInteract: canInteract,
                          onLike: onLike,
                          onReply: onReply,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
