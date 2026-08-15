import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/features/feed/domain/entity/feed_comment.dart';
import 'package:tanlu_management/shared/utils/string_utils.dart';
import 'package:tanlu_management/l10n/l10n.dart';

class CommentInteractions extends StatelessWidget {
  const CommentInteractions({
    super.key,
    required this.comment,
    required this.canInteract,
    this.onLike,
    this.onReply,
  });

  final FeedComment comment;
  final bool canInteract;
  final void Function(FeedComment comment)? onLike;
  final void Function(FeedComment comment)? onReply;

  bool get _isEdited =>
      comment.updatedAt != null &&
      comment.createdAt != null &&
      comment.updatedAt!.isAfter(comment.createdAt!);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 12.w,
      runSpacing: 4.h,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        AppText.b2(
          StringUtils.formatTimeAgo(
            comment.updatedAt ?? comment.createdAt,
          ),
          fontSize: 10.sp,
          color: AppColors.grayMedium,
        ),
        if (_isEdited)
          AppText.b2(
            context.l10n.feedEditedMark,
            fontSize: 10.sp,
            color: AppColors.grayMedium,
          ),
        if (canInteract) ...[
          GestureDetector(
            onTap: onLike == null ? null : () => onLike!(comment),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  comment.isLikedByMe
                      ? Icons.favorite_rounded
                      : Icons.favorite_border_rounded,
                  size: 14.w,
                  color: comment.isLikedByMe
                      ? AppColors.error
                      : AppColors.grayMedium,
                ),
                if (comment.likeCount > 0) ...[
                  SizedBox(width: 4.w),
                  AppText.b2(
                    '${comment.likeCount}',
                    fontSize: 10.sp,
                    color: comment.isLikedByMe
                        ? AppColors.error
                        : AppColors.grayMedium,
                    fontWeight: FontWeight.w600,
                  ),
                ],
              ],
            ),
          ),
          GestureDetector(
            onTap: onReply == null ? null : () => onReply!(comment),
            child: AppText.b2(
              context.l10n.feedReplyBtn,
              fontSize: 10.sp,
              color: AppColors.grayMedium,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ],
    );
  }
}
