import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/features/attendance/presentation/widgets/attendance_avatar.dart';
import 'package:tanlu_management/features/feed/domain/entity/comment.dart';
import 'package:tanlu_management/features/feed/presentation/feed_detail/widgets/comment_actions_sheet.dart';
import 'package:tanlu_management/shared/utils/string_utils.dart';

class CommentItem extends StatelessWidget {
  const CommentItem({
    super.key,
    required this.comment,
    required this.feedAuthorId,
    required this.viewerUserId,
    this.depth = 0,
    this.canInteract = false,
    this.onReply,
    this.onLike,
    this.onEdit,
    this.onDelete,
  });

  final Comment comment;
  final String feedAuthorId;
  final String viewerUserId;
  final int depth;
  final bool canInteract;
  final void Function(Comment comment)? onReply;
  final void Function(Comment comment)? onLike;
  final void Function(Comment comment)? onEdit;
  final void Function(Comment comment)? onDelete;

  bool get _isAuthor => comment.author.id == viewerUserId;
  bool get _isFeedAuthor => feedAuthorId == viewerUserId;
  bool get _canEdit => _isAuthor;
  bool get _canDelete => _isAuthor || _isFeedAuthor;
  bool get _showMenu => canInteract && (_canEdit || _canDelete);
  bool get _isEdited =>
      comment.updatedAt != null &&
      comment.createdAt != null &&
      comment.updatedAt!.isAfter(comment.createdAt!);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 12.h, left: depth * 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AttendanceAvatar(
                nickname: comment.author.fullName,
                imageUrl: comment.author.avatar.isEmpty
                    ? null
                    : comment.author.avatar,
                size: depth == 0 ? 36 : 30,
              ),
              SizedBox(width: 10.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _CommentBubble(
                      comment: comment,
                      depth: depth,
                      showMenu: _showMenu,
                      canEdit: _canEdit,
                      canDelete: _canDelete,
                      onEdit: onEdit == null ? null : () => onEdit!(comment),
                      onDelete: onDelete == null
                          ? null
                          : () => onDelete!(comment),
                    ),
                    SizedBox(height: 4.h),
                    Wrap(
                      spacing: 12.w,
                      runSpacing: 4.h,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        AppText.b2(
                          StringUtils.formatTimeAgo(
                            comment.updatedAt ?? comment.createdAt,
                          ),
                          fontSize: 11.sp,
                          color: AppColors.grayMedium,
                        ),
                        if (_isEdited)
                          AppText.b2(
                            '· Đã sửa',
                            fontSize: 11.sp,
                            color: AppColors.grayMedium,
                          ),
                        if (canInteract) ...[
                          GestureDetector(
                            onTap: onLike == null
                                ? null
                                : () => onLike!(comment),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  comment.isLiked
                                      ? Icons.favorite_rounded
                                      : Icons.favorite_border_rounded,
                                  size: 14.w,
                                  color: comment.isLiked
                                      ? AppColors.error
                                      : AppColors.grayMedium,
                                ),
                                if (comment.likeCount > 0) ...[
                                  SizedBox(width: 4.w),
                                  AppText.b2(
                                    '${comment.likeCount}',
                                    fontSize: 11.sp,
                                    color: comment.isLiked
                                        ? AppColors.error
                                        : AppColors.grayMedium,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ],
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: onReply == null
                                ? null
                                : () => onReply!(comment),
                            child: AppText.b2(
                              'Trả lời',
                              fontSize: 11.sp,
                              color: AppColors.grayMedium,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          for (final reply in comment.replies)
            Padding(
              padding: EdgeInsets.only(top: 8.h),
              child: CommentItem(
                comment: reply,
                feedAuthorId: feedAuthorId,
                viewerUserId: viewerUserId,
                depth: depth + 1,
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
}

class _CommentBubble extends StatefulWidget {
  const _CommentBubble({
    required this.comment,
    required this.depth,
    required this.showMenu,
    required this.canEdit,
    required this.canDelete,
    this.onEdit,
    this.onDelete,
  });

  final Comment comment;
  final int depth;
  final bool showMenu;
  final bool canEdit;
  final bool canDelete;
  final VoidCallback? onEdit;
  final VoidCallback? onDelete;

  @override
  State<_CommentBubble> createState() => _CommentBubbleState();
}

class _CommentBubbleState extends State<_CommentBubble> {
  bool _pressed = false;

  void _setPressed(bool value) {
    if (_pressed == value) return;
    setState(() => _pressed = value);
  }

  void _openActions() {
    _setPressed(false);
    HapticFeedback.mediumImpact();
    CommentActionsSheet.show(
      context,
      canEdit: widget.canEdit,
      canDelete: widget.canDelete,
      onEdit: widget.onEdit,
      onDelete: widget.onDelete,
    );
  }

  double _maxBubbleWidth(BuildContext context) {
    final avatarSize = widget.depth == 0 ? 36.w : 30.w;
    const horizontalPadding = 32.0;
    return MediaQuery.sizeOf(context).width -
        horizontalPadding -
        avatarSize -
        10.w -
        widget.depth * 20.w;
  }

  @override
  Widget build(BuildContext context) {
    final borderRadius = BorderRadius.circular(12.r);

    return Align(
      alignment: Alignment.centerLeft,
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onLongPressDown: widget.showMenu ? (_) => _setPressed(true) : null,
        onLongPressEnd: widget.showMenu ? (_) => _setPressed(false) : null,
        onLongPressCancel: widget.showMenu ? () => _setPressed(false) : null,
        onLongPress: widget.showMenu ? _openActions : null,
        child: AnimatedScale(
          scale: _pressed ? 0.97 : 1,
          duration: const Duration(milliseconds: 120),
          curve: Curves.easeOut,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 120),
            curve: Curves.easeOut,
            constraints: BoxConstraints(maxWidth: _maxBubbleWidth(context)),
            padding: EdgeInsets.fromLTRB(12.w, 8.h, 12.w, 8.h),
            decoration: BoxDecoration(
              color: _pressed
                  ? AppColors.grayLight.withValues(alpha: 0.7)
                  : AppColors.grayVeryLight,
              borderRadius: borderRadius,
              boxShadow: _pressed
                  ? [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.06),
                        blurRadius: 4,
                        offset: const Offset(0, 1),
                      ),
                    ]
                  : null,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Flexible(
                      child: AppText.b1(
                        widget.comment.author.fullName,
                        fontWeight: FontWeight.w700,
                        fontSize: 12.sp,
                        color: AppColors.grayDark,
                      ),
                    ),
                    if (widget.comment.isFeedAuthor) ...[
                      SizedBox(width: 6.w),
                      const _AuthorBadge(),
                    ],
                  ],
                ),
                SizedBox(height: 4.h),
                AppText.b1(
                  widget.comment.content,
                  fontSize: 13.sp,
                  color: AppColors.grayDark80,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _AuthorBadge extends StatelessWidget {
  const _AuthorBadge();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 2.h),
      decoration: BoxDecoration(
        color: AppColors.primary.withValues(alpha: 0.12),
        borderRadius: BorderRadius.circular(4.r),
      ),
      child: AppText.b2(
        'Tác giả',
        fontSize: 9.sp,
        fontWeight: FontWeight.w600,
        color: AppColors.primary,
      ),
    );
  }
}
