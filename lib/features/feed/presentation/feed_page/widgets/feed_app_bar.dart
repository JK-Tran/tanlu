import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_icon_button.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';

class FeedAppBar extends StatelessWidget implements PreferredSizeWidget {
  const FeedAppBar({
    super.key,
    this.showBack = false,
    this.backEnabled = true,
    this.title = 'Bảng tin',
    this.onBack,
    this.onNotificationTap,
    this.notificationCount = 0,
    this.trailing,
  });

  final bool showBack;
  final bool backEnabled;
  final String title;
  final VoidCallback? onBack;
  final VoidCallback? onNotificationTap;
  final int notificationCount;
  final Widget? trailing;

  @override
  Size get preferredSize => Size.fromHeight(56.h);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
        child: Row(
          children: [
            if (showBack)
              Padding(
                padding: EdgeInsets.only(right: 8.w),
                child: AppIconButton(
                  icon: Icons.arrow_back_ios_new_rounded,
                  iconColor: AppColors.white,
                  backgroundColor: AppColors.primary,
                  size: 30,
                  onPressed: backEnabled
                      ? (onBack ?? () => context.pop())
                      : null,
                ),
              )
            else
              SizedBox(width: 40.w),
            Expanded(
              child: AppText.h2(
                title,
                textAlign: TextAlign.center,
                fontWeight: FontWeight.w800,
                fontSize: 18.sp,
                color: AppColors.grayDark,
              ),
            ),
            if (trailing != null)
              trailing!
            else if (onNotificationTap != null)
              Stack(
                clipBehavior: Clip.none,
                children: [
                  AppIconButton(
                    icon: Icons.notifications_none_rounded,
                    iconColor: AppColors.grayDark,
                    backgroundColor: AppColors.grayVeryLight,
                    size: 40,
                    borderRadius: 12,
                    onPressed: onNotificationTap,
                  ),
                  if (notificationCount > 0)
                    Positioned(
                      top: 6,
                      right: 6,
                      child: Container(
                        width: 8.r,
                        height: 8.r,
                        decoration: const BoxDecoration(
                          color: AppColors.primary,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                ],
              )
            else
              SizedBox(width: 40.w),
          ],
        ),
      ),
    );
  }
}
