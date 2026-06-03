import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/custom_app_bar.dart';

/// App Bar dedicated for the Kids dashboard tab.
/// Uses the unified [CustomAppBar] to keep layout paddings and text sizes perfectly consistent.
class StudentAppBar extends StatelessWidget implements PreferredSizeWidget {
  const StudentAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(76);

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      title: 'Danh sách trẻ',
      subtitle: 'Quản lý và theo dõi thông tin trẻ',
      showBackArrow: false,
      backgroundColor: AppColors.white,
      action: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: 45.w,
            height: 45.h,
            decoration: BoxDecoration(
              color: AppColors.grayBg,
              shape: BoxShape.circle,
            ),
            alignment: Alignment.center,
            child: Icon(
              Icons.notifications_none_rounded,
              color: AppColors.grayDark,
              size: 28,
            ),
          ),
          Positioned(
            top: -2,
            right: -2,
            child: Container(
              width: 14.w,
              height: 14.h,
              decoration: BoxDecoration(
                color: AppColors.error,
                shape: BoxShape.circle,
              ),
              alignment: Alignment.center,
            ),
          ),
        ],
      ),
    );
  }
}
