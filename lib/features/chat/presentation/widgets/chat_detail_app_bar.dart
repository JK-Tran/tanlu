import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_icon_button.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/features/chat/presentation/models/chat_ui_models.dart';

class ChatDetailAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ChatDetailAppBar({
    super.key,
    required this.conversation,
    this.onBack,
    this.onMoreTap,
  });

  final ChatConversation conversation;
  final VoidCallback? onBack;
  final VoidCallback? onMoreTap;

  @override
  Size get preferredSize => Size.fromHeight(64.h);

  @override
  Widget build(BuildContext context) {
    final subtitle = conversation.type.isGroup
        ? '${conversation.memberCount ?? 0} thành viên'
        : conversation.subtitle ?? '';

    return SafeArea(
      bottom: false,
      child: Padding(
        padding: EdgeInsets.fromLTRB(8.w, 8.h, 12.w, 8.h),
        child: Row(
          children: [
            AppIconButton(
              icon: Icons.arrow_back_ios_new_rounded,
              iconColor: AppColors.grayDark,
              backgroundColor: AppColors.grayVeryLight,
              size: 40,
              borderRadius: 12,
              onPressed: onBack ?? () => Navigator.of(context).pop(),
            ),
            SizedBox(width: 10.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppText.b1(
                    conversation.name,
                    fontWeight: FontWeight.w800,
                    fontSize: 16.sp,
                    color: AppColors.grayDark,
                    maxLines: 1,
                    textOverflow: TextOverflow.ellipsis,
                  ),
                  if (subtitle.isNotEmpty)
                    AppText.b2(
                      subtitle,
                      color: AppColors.grayMedium,
                      fontSize: 12.sp,
                    ),
                ],
              ),
            ),
            if (onMoreTap != null)
              AppIconButton(
                icon: Icons.more_horiz_rounded,
                iconColor: AppColors.grayDark,
                backgroundColor: AppColors.grayVeryLight,
                size: 40,
                borderRadius: 12,
                onPressed: onMoreTap,
              ),
          ],
        ),
      ),
    );
  }
}
