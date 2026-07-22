import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/l10n/l10n.dart';

class AttendanceStudentTimeRow extends StatelessWidget {
  const AttendanceStudentTimeRow({
    super.key,
    required this.checkInStr,
    required this.checkOutStr,
    required this.waitingCheckOut,
  });

  final String? checkInStr;
  final String? checkOutStr;
  final bool waitingCheckOut;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 6.w,
      runSpacing: 4.h,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        if (checkInStr != null)
          _TimeTag(
            icon: Icons.login_rounded,
            text: checkInStr!,
            isCheckIn: true,
          ),
        if (checkOutStr != null)
          _TimeTag(
            icon: Icons.logout_rounded,
            text: checkOutStr!,
            isCheckIn: false,
          )
        else if (waitingCheckOut)
          _TimeTag(
            icon: Icons.logout_rounded,
            text: context.l10n.notLeftYet,
            isCheckIn: false,
            isWarning: true,
          ),
      ],
    );
  }
}

class _TimeTag extends StatelessWidget {
  const _TimeTag({
    required this.icon,
    required this.text,
    required this.isCheckIn,
    this.isWarning = false,
  });

  final IconData icon;
  final String text;
  final bool isCheckIn;
  final bool isWarning;

  @override
  Widget build(BuildContext context) {
    late final Color color;
    late final Color bgColor;

    if (isWarning) {
      color = AppColors.warning;
      bgColor = AppColors.warningLight.withValues(alpha: 0.5);
    } else if (isCheckIn) {
      color = AppColors.successDark;
      bgColor = AppColors.successLight.withValues(alpha: 0.5);
    } else {
      color = AppColors.error;
      bgColor = AppColors.errorLight.withValues(alpha: 0.5);
    }

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 3.h),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(6.r),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 12.w, color: color),
          SizedBox(width: 4.w),
          AppText.b2(
            text,
            color: color,
            fontSize: 10.sp,
            fontWeight: FontWeight.w700,
          ),
        ],
      ),
    );
  }
}
