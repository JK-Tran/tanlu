import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/l10n/l10n.dart';

class AttendanceStudentCheckOutButton extends StatelessWidget {
  const AttendanceStudentCheckOutButton({super.key, required this.onTap});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(8.r),
        splashColor: AppColors.primary.withValues(alpha: 0.12),
        highlightColor: AppColors.primaryLight.withValues(alpha: 0.4),
        child: Ink(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            color: AppColors.primaryLight.withValues(alpha: 0.15),
          ),
          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.logout_rounded, size: 14.w, color: AppColors.primary),
              SizedBox(width: 4.w),
              AppText.b2(
                context.l10n.checkOutRecord,
                color: AppColors.primary,
                fontSize: 12.sp,
                fontWeight: FontWeight.w700,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
