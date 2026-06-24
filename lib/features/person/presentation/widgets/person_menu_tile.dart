import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';

class PersonMenuGroup extends StatelessWidget {
  const PersonMenuGroup({super.key, required this.children});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(children: children),
    );
  }
}

class PersonMenuTile extends StatelessWidget {
  const PersonMenuTile({
    super.key,
    required this.icon,
    required this.title,
    this.value,
    this.iconColor,
    this.titleColor,
    this.showDivider = true,
    this.showChevron = true,
    required this.onTap,
  });

  final IconData icon;
  final String title;
  final String? value;
  final Color? iconColor;
  final Color? titleColor;
  final bool showDivider;
  final bool showChevron;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(14.r),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
            child: Row(
              children: [
                Container(
                  width: 36.w,
                  height: 36.w,
                  decoration: BoxDecoration(
                    color: (iconColor ?? AppColors.primary).withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Icon(
                    icon,
                    size: 20.w,
                    color: iconColor ?? AppColors.primary,
                  ),
                ),
                SizedBox(width: 12.w),
                Expanded(
                  child: AppText.b1(
                    title,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                    color: titleColor ?? AppColors.grayDark,
                  ),
                ),
                if (value != null) ...[
                  AppText.b2(
                    value!,
                    color: AppColors.grayMedium,
                    fontSize: 12.sp,
                  ),
                  SizedBox(width: 4.w),
                ],
                if (showChevron)
                  Icon(
                    Icons.chevron_right_rounded,
                    color: AppColors.grayLight,
                    size: 22.w,
                  ),
              ],
            ),
          ),
        ),
        if (showDivider)
          Divider(
            height: 1,
            indent: 64.w,
            endIndent: 16.w,
            color: AppColors.grayVeryLight,
          ),
      ],
    );
  }
}
