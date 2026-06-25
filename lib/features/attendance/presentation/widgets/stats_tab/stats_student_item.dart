import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/features/attendance/presentation/enums/attendance_status.dart';
import 'package:tanlu_management/features/attendance/presentation/widgets/attendance_avatar.dart';

class StatsStudentItem extends StatelessWidget {
  const StatsStudentItem({
    super.key,
    required this.name,
    required this.status,
    this.fullName,
    this.checkInTime,
    this.checkOutTime,
    this.showTime = false,
  });

  final String name;
  final String? fullName;
  final AttendanceStatus status;
  final String? checkInTime;
  final String? checkOutTime;
  final bool showTime;

  bool get _showTimeRow =>
      showTime &&
      (checkInTime != null ||
          checkOutTime != null ||
          status == AttendanceStatus.present ||
          status == AttendanceStatus.late);

  @override
  Widget build(BuildContext context) {
    final displayFullName = fullName ?? name;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.h),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(color: AppColors.grayLight.withValues(alpha: 0.5)),
        ),
      ),
      child: Row(
        children: [
          AttendanceAvatar(nickname: name, size: 38),
          SizedBox(width: 12.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText.b2(
                  displayFullName,
                  color: AppColors.black,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w700,
                ),
                AppText.b1(
                  '($name)',
                  color: AppColors.grayMedium,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w700,
                ),
                if (_showTimeRow)
                  Padding(
                    padding: EdgeInsets.only(top: 4.h),
                    child: _TimeRow(
                      checkInStr: checkInTime,
                      checkOutStr: checkOutTime,
                    ),
                  ),
              ],
            ),
          ),
          if (status != AttendanceStatus.notMarked) _StatusChip(status: status),
        ],
      ),
    );
  }
}

class _TimeRow extends StatelessWidget {
  const _TimeRow({required this.checkInStr, required this.checkOutStr});

  final String? checkInStr;
  final String? checkOutStr;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (checkInStr != null) ...[
          Icon(Icons.login_rounded, size: 12.w, color: AppColors.grayMedium),
          SizedBox(width: 2.w),
          AppText.b2(
            'Vào $checkInStr',
            color: AppColors.grayMedium,
            fontSize: 11.sp,
            fontWeight: FontWeight.w600,
          ),
        ],
        if (checkInStr != null && checkOutStr != null)
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 6.w),
            child: AppText.b2('·', color: AppColors.grayLight, fontSize: 11.sp),
          ),
        if (checkOutStr != null) ...[
          Icon(Icons.logout_rounded, size: 12.w, color: AppColors.grayMedium),
          SizedBox(width: 2.w),
          AppText.b2(
            'Về $checkOutStr',
            color: AppColors.grayMedium,
            fontSize: 11.sp,
            fontWeight: FontWeight.w600,
          ),
        ] else if (checkInStr != null)
          AppText.b2(
            'Chưa về',
            color: AppColors.warning,
            fontSize: 11.sp,
            fontWeight: FontWeight.w600,
          ),
      ],
    );
  }
}

class _StatusChip extends StatelessWidget {
  const _StatusChip({required this.status});

  final AttendanceStatus status;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
      decoration: BoxDecoration(
        color: status.bgColor,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(status.icon, size: 14.w, color: status.color),
          SizedBox(width: 4.w),
          AppText.b2(
            status.label,
            color: status.color,
            fontSize: 12.sp,
            fontWeight: FontWeight.w600,
          ),
        ],
      ),
    );
  }
}
