import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_icon_button.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';

class ChatListAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ChatListAppBar({
    super.key,
    this.title = 'Tin nhắn',
    this.showBack = false,
    this.onBack,
    this.onSearchTap,
    this.onNewChatTap,
    this.showSearch = false,
    this.hideActions = false,
  });

  final String title;
  final bool showBack;
  final VoidCallback? onBack;
  final VoidCallback? onSearchTap;
  final VoidCallback? onNewChatTap;
  final bool showSearch;
  final bool hideActions;

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
                  iconColor: AppColors.grayDark,
                  backgroundColor: AppColors.grayVeryLight,
                  size: 40,
                  borderRadius: 12,
                  onPressed: onBack ?? () => Navigator.of(context).pop(),
                ),
              ),
            Expanded(
              child: AppText.h2(
                title,
                fontWeight: FontWeight.w800,
                fontSize: showBack ? 18.sp : 22.sp,
                color: AppColors.grayDark,
              ),
            ),
            if (!hideActions && onSearchTap != null) ...[
              AppIconButton(
                icon: showSearch ? Icons.close_rounded : Icons.search_rounded,
                iconColor: AppColors.grayDark,
                backgroundColor: AppColors.grayVeryLight,
                size: 40,
                borderRadius: 12,
                onPressed: onSearchTap,
              ),
              SizedBox(width: 8.w),
            ],
            if (!hideActions && onNewChatTap != null)
              AppIconButton(
                icon: Icons.add_comment_outlined,
                iconColor: Colors.white,
                backgroundColor: AppColors.primary,
                size: 40,
                borderRadius: 12,
                onPressed: onNewChatTap,
              ),
          ],
        ),
      ),
    );
  }
}
