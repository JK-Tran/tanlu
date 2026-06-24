import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/features/attendance/presentation/widgets/attendance_avatar.dart';
import 'package:tanlu_management/features/feed/domain/entity/feed.dart';
import 'package:tanlu_management/features/feed/presentation/widgets/feed_media_grid.dart';
import 'package:tanlu_management/features/feed/presentation/widgets/feed_video_player.dart';
import 'package:tanlu_management/shared/utils/string_utils.dart';

/// UI một bài viết — dùng chung feed list và chi tiết.
class FeedItem extends StatelessWidget {
  const FeedItem({
    super.key,
    required this.feed,
    this.onTap,
    this.onLikeTap,
    this.onCommentTap,
    this.onMoreTap,
    this.showActions = true,
  });

  final Feed feed;
  final VoidCallback? onTap;
  final VoidCallback? onLikeTap;
  final VoidCallback? onCommentTap;
  final VoidCallback? onMoreTap;
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
                      fullName: feed.author.fullName,
                      avatar: feed.author.avatar,
                      className: feed.className,
                      timeLabel: StringUtils.formatTimeAgo(feed.createdAt),
                      onMoreTap: onMoreTap,
                    ),
                    SizedBox(height: 10.h),
                    AppText.b1(
                      feed.content,
                      color: AppColors.grayDark80,
                      fontSize: 12.sp,
                      maxLines: onTap == null ? null : 4,
                    ),
                    if (feed.videos.isNotEmpty) ...[
                      SizedBox(height: 10.h),
                      FeedVideoList(videos: feed.videos),
                    ],
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
              SizedBox(height: 12.h),
              Padding(
                padding: EdgeInsets.fromLTRB(8.w, 0, 12.w, 12.h),
                child: Row(
                  children: [
                    _ActionButton(
                      icon: feed.isLiked
                          ? Icons.favorite_rounded
                          : Icons.favorite_border_rounded,
                      label: '${feed.likeCount}',
                      color: feed.isLiked
                          ? AppColors.error
                          : AppColors.grayMedium,
                      onTap: onLikeTap,
                    ),
                    SizedBox(width: 12.w),
                    _ActionButton(
                      icon: Icons.chat_bubble_outline_rounded,
                      label: '${feed.commentCount}',
                      color: AppColors.grayMedium,
                      onTap: onCommentTap,
                    ),
                  ],
                ),
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
        AttendanceAvatar(
          nickname: fullName,
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
        AppText.b2(timeLabel, color: AppColors.grayMedium, fontSize: 11.sp),
        // if (onMoreTap != null)
        //   IconButton(
        //     onPressed: onMoreTap,
        //     icon: Icon(Icons.more_horiz_rounded, size: 20.w),
        //     color: AppColors.grayMedium,
        //     padding: EdgeInsets.zero,
        //     constraints: BoxConstraints(minWidth: 32.w, minHeight: 32.w),
        //   ),
      ],
    );
  }
}

class _ActionButton extends StatefulWidget {
  const _ActionButton({
    required this.icon,
    required this.label,
    required this.color,
    this.onTap,
  });

  final IconData icon;
  final String label;
  final Color color;
  final VoidCallback? onTap;

  @override
  State<_ActionButton> createState() => _ActionButtonState();
}

class _ActionButtonState extends State<_ActionButton> {
  var _pressed = false;

  void _setPressed(bool value) {
    if (_pressed == value) return;
    setState(() => _pressed = value);
  }

  @override
  Widget build(BuildContext context) {
    final enabled = widget.onTap != null;

    return AnimatedScale(
      scale: _pressed ? 0.92 : 1,
      duration: const Duration(milliseconds: 100),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: widget.onTap,
          onHighlightChanged: enabled
              ? (pressed) => _setPressed(pressed)
              : null,
          borderRadius: BorderRadius.circular(8.r),
          splashColor: AppColors.primary.withValues(alpha: 0.12),
          highlightColor: AppColors.primary.withValues(alpha: 0.08),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 6.h),
            child: Row(
              children: [
                Icon(widget.icon, size: 18.w, color: widget.color),
                SizedBox(width: 4.w),
                AppText.b2(
                  widget.label,
                  color: widget.color,
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w600,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
