import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/features/feed/domain/entity/feed_comment.dart';
import 'package:tanlu_management/features/feed/presentation/feed_detail/widgets/comments/comment_action_sheet.dart';
import 'package:tanlu_management/features/feed/presentation/feed_detail/widgets/comments/comment_author_badge.dart';

class CommentBubble extends StatefulWidget {
  const CommentBubble({
    super.key,
    required this.comment,
    required this.depth,
    this.replyToName,
    required this.showMenu,
    required this.canEdit,
    required this.canDelete,
    required this.feedAuthorId,
    this.onEdit,
    this.onDelete,
  });

  final FeedComment comment;
  final int depth;
  final String? replyToName;
  final bool showMenu;
  final bool canEdit;
  final bool canDelete;
  final int feedAuthorId;
  final VoidCallback? onEdit;
  final VoidCallback? onDelete;

  @override
  State<CommentBubble> createState() => _CommentBubbleState();
}

class _CommentBubbleState extends State<CommentBubble> {
  bool _pressed = false;

  void _setPressed(bool value) {
    if (_pressed == value) return;
    setState(() => _pressed = value);
  }

  void _openActions() {
    _setPressed(false);
    HapticFeedback.mediumImpact();
    CommentActionSheet.show(
      context,
      canEdit: widget.canEdit,
      canDelete: widget.canDelete,
      onEdit: widget.onEdit,
      onDelete: widget.onDelete,
    );
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
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: widget.comment.author?.fullName ?? '',
                            ),
                            if (widget.replyToName != null) ...[
                              WidgetSpan(
                                alignment: PlaceholderAlignment.middle,
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 2.w,
                                  ),
                                  child: Icon(
                                    Icons.play_arrow_rounded,
                                    size: 14.sp,
                                    color: AppColors.grayMedium,
                                  ),
                                ),
                              ),
                              TextSpan(text: widget.replyToName),
                            ],
                          ],
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 12.sp,
                          color: AppColors.grayDark,
                          fontFamily: 'Inter',
                        ),
                      ),
                    ),
                    if (widget.comment.author?.id == widget.feedAuthorId) ...[
                      SizedBox(width: 6.w),
                      const CommentAuthorBadge(),
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
