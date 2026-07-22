import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/features/attendance/domain/entity/attendance_student.dart';
import 'package:tanlu_management/features/attendance/domain/entity/enums/attendance_status.dart';
import 'package:tanlu_management/features/attendance/presentation/widgets/attendance_avatar.dart';
import 'package:tanlu_management/l10n/l10n.dart';

class AttendanceStatusSheet extends StatelessWidget {
  const AttendanceStatusSheet({super.key, required this.student});

  final AttendanceStudent student;

  @override
  Widget build(BuildContext context) {
    final nickname = student.fullName; // Fallback to fullName

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20.r)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _Handle(),
          SizedBox(height: 14.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Row(
              children: [
                AttendanceAvatar(
                  nickname: nickname,
                  imageUrl: student.avatarUrl.isNotEmpty
                      ? student.avatarUrl
                      : null,
                  size: 38,
                ),
                SizedBox(width: 12.w),
                Expanded(
                  child: Row(
                    children: [
                      Flexible(
                        child: AppText.b1(
                          student.fullName,
                          color: AppColors.black,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(width: 4.w),
                      AppText.b1(
                        '($nickname)',
                        color: AppColors.grayMedium,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ],
                  ),
                ),
                AppText.b2(
                  context.l10n.selectStatus,
                  color: AppColors.grayMedium,
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w600,
                ),
              ],
            ),
          ),
          SizedBox(height: 14.h),
          _Option(
            iconColor: AppColors.success,
            bgColor: AppColors.successLight,
            icon: Icons.check_circle_rounded,
            label: context.l10n.statusPresent,
            sublabel: context.l10n.inClass,
            onTap: () => Navigator.pop(context, AttendanceStatus.present),
          ),
          _Option(
            iconColor: AppColors.warning,
            bgColor: AppColors.warningLight,
            icon: Icons.cancel_rounded,
            label: context.l10n.statusAbsent,
            sublabel: context.l10n.absentNoReason,
            onTap: () =>
                Navigator.pop(context, AttendanceStatus.absentUnexcused),
          ),
          _Option(
            iconColor: AppColors.info,
            bgColor: AppColors.infoLight,
            icon: Icons.assignment_return_rounded,
            label: context.l10n.statusExcused,
            sublabel: context.l10n.leaveApprovedByParent,
            onTap: () => Navigator.pop(context, AttendanceStatus.absentExcused),
          ),
          _Option(
            iconColor: const Color(0xFFE17055),
            bgColor: const Color(0xFFE17055).withValues(alpha: 0.12),
            icon: Icons.access_time_rounded,
            label: context.l10n.statusLate,
            sublabel: context.l10n.lateArrival,
            onTap: () => Navigator.pop(context, AttendanceStatus.late),
          ),

          SizedBox(height: MediaQuery.paddingOf(context).bottom + 4.h),
        ],
      ),
    );
  }
}

class _Handle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 12.h),
      child: Center(
        child: Container(
          width: 40.w,
          height: 4.h,
          decoration: BoxDecoration(
            color: AppColors.grayLight,
            borderRadius: BorderRadius.circular(2.r),
          ),
        ),
      ),
    );
  }
}

class _Option extends StatelessWidget {
  const _Option({
    required this.iconColor,
    required this.bgColor,
    required this.icon,
    required this.label,
    required this.sublabel,
    required this.onTap,
  });

  final Color iconColor;
  final Color bgColor;
  final IconData icon;
  final String label;
  final String sublabel;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 4.h),
      child: Material(
        color: Colors.white,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.r),
          side: BorderSide(color: AppColors.grayLight),
        ),
        child: InkWell(
          onTap: onTap,
          splashColor: iconColor.withValues(alpha: 0.18),
          highlightColor: bgColor.withValues(alpha: 0.55),
          borderRadius: BorderRadius.circular(12.r),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 12.h),
            child: Row(
              children: [
                Container(
                  width: 42.w,
                  height: 42.w,
                  decoration: BoxDecoration(
                    color: bgColor,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(icon, color: iconColor, size: 22.w),
                ),
                SizedBox(width: 12.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppText.b1(
                        label,
                        color: AppColors.grayDark,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700,
                      ),
                      AppText.b2(
                        sublabel,
                        color: AppColors.grayMedium,
                        fontSize: 12.sp,
                      ),
                    ],
                  ),
                ),
                Icon(
                  Icons.chevron_right_rounded,
                  color: AppColors.grayMedium,
                  size: 20.w,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
