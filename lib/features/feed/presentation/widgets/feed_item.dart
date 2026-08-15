import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/core/widgets/app_avatar.dart';
import 'package:tanlu_management/features/feed/domain/entity/feed_post.dart';
import 'package:tanlu_management/features/feed/presentation/widgets/feed_media_grid.dart';
import 'package:tanlu_management/l10n/l10n.dart';
import 'package:tanlu_management/shared/utils/date_time_utils.dart';

/// UI một bài viết — dùng chung feed list và chi tiết.
class FeedItem extends StatelessWidget {
  const FeedItem({
    super.key,
    required this.feed,
    this.onTap,
    this.onMoreTap,
    this.onLike,
    this.showActions = true,
  });

  final FeedPost feed;
  final VoidCallback? onTap;
  final VoidCallback? onMoreTap;
  final VoidCallback? onLike;
  final bool showActions;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(16.w, 0, 16.w, 12.h),
      child: Material(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
        clipBehavior: Clip.antiAlias,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            InkWell(
              onTap: onTap,
              child: Padding(
                padding: EdgeInsets.fromLTRB(12.w, 12.h, 12.w, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _Header(
                      fullName: feed.author?.fullName ?? '',
                      avatar: feed.author?.avatarUrl ?? '',
                      className: context.l10n.classLabel(
                        feed.classId.toString(),
                      ),
                      timeLabel:
                          DateTimeUtils.formatDateTimeType2(feed.createdAt) ??
                          '',
                      onMoreTap: onMoreTap,
                    ),
                    SizedBox(height: 10.h),
                    AppText.b1(
                      feed.content,
                      color: AppColors.grayDark80,
                      fontSize: 12.sp,
                      maxLines: onTap == null ? null : 4,
                    ),
                    if (feed.images.isNotEmpty) ...[
                      SizedBox(height: 10.h),
                      FeedMediaGrid(images: feed.images),
                    ],
                    SizedBox(height: 10.h),
                  ],
                ),
              ),
            ),
            if (showActions) ...[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.w),
                child: Divider(
                  height: 1,
                  thickness: 1,
                  color: AppColors.grayLight,
                ),
              ),
              _ActionBar(
                likeCount: feed.likeCount,
                commentCount: feed.commentCount,
                isLikedByMe: feed.isLikedByMe,
                onLike: onLike,
                onComment: onTap,
              ),
            ],
          ],
        ),
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header({
    required this.fullName,
    required this.avatar,
    required this.className,
    required this.timeLabel,
    this.onMoreTap,
  });

  final String fullName;
  final String avatar;
  final String className;
  final String timeLabel;
  final VoidCallback? onMoreTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AppAvatar(
          name: fullName,
          imageUrl: avatar.isEmpty ? null : avatar,
          size: 40,
        ),
        SizedBox(width: 10.w),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText.b1(
                fullName,
                fontWeight: FontWeight.w700,
                fontSize: 12.sp,
                color: AppColors.grayDark,
              ),
              if (className.isNotEmpty)
                AppText.b2(
                  className,
                  color: AppColors.grayMedium,
                  fontSize: 10.sp,
                ),
            ],
          ),
        ),
        AppText.b2(timeLabel, color: AppColors.grayMedium, fontSize: 10.sp),
      ],
    );
  }
}

class _ActionBar extends StatelessWidget {
  const _ActionBar({
    required this.likeCount,
    required this.commentCount,
    required this.isLikedByMe,
    this.onLike,
    this.onComment,
  });

  final int likeCount;
  final int commentCount;
  final bool isLikedByMe;
  final VoidCallback? onLike;
  final VoidCallback? onComment;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.w),
      child: Row(
        children: [
          // Like button
          _ActionButton(
            icon: isLikedByMe
                ? Icons.favorite_rounded
                : Icons.favorite_border_rounded,
            iconColor: isLikedByMe ? AppColors.error : AppColors.grayMedium,
            label: likeCount > 0 ? _formatCount(likeCount) : context.l10n.like,
            labelColor: isLikedByMe ? AppColors.error : AppColors.grayMedium,
            fontWeight: isLikedByMe ? FontWeight.w700 : FontWeight.w500,
            onTap: onLike,
          ),
          // Divider
          Container(
            width: 1,
            height: 22.h,
            margin: EdgeInsets.symmetric(horizontal: 4.w),
            color: AppColors.grayDark,
          ),
          // Comment button
          _ActionButton(
            icon: Icons.chat_bubble_outline_rounded,
            iconColor: AppColors.grayMedium,
            label: commentCount > 0
                ? context.l10n.commentsCount(_formatCount(commentCount))
                : context.l10n.comment,
            labelColor: AppColors.grayMedium,
            fontWeight: FontWeight.normal,
            onTap: onComment,
          ),
        ],
      ),
    );
  }

  String _formatCount(int count) {
    if (count >= 1000) return '${(count / 1000).toStringAsFixed(1)}k';
    return '$count';
  }
}

class _ActionButton extends StatelessWidget {
  const _ActionButton({
    required this.icon,
    required this.iconColor,
    required this.label,
    required this.labelColor,
    required this.fontWeight,
    this.onTap,
  });

  final IconData icon;
  final Color iconColor;
  final String label;
  final Color labelColor;
  final FontWeight fontWeight;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(8.r),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 8.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 16.w, color: iconColor),
              SizedBox(width: 6.w),
              AppText.b2(
                label,
                fontSize: 12.sp,
                color: labelColor,
                fontWeight: fontWeight,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
