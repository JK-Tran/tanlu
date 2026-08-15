import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_icon_button.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/features/notification/presentation/widgets/notification_bell_widget.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MainAppBar({
    super.key,
    this.showBack = false,
    this.backEnabled = true,
    required this.title,
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
            else
              const NotificationBellWidget(
                size: 40,
                iconSize: 24,
                backgroundColor: AppColors.grayVeryLight,
                hasShadow: false,
              ),
          ],
        ),
      ),
    );
  }
}
