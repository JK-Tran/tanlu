import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/features/attendance/domain/entity/enums/attendance_status.dart';
import 'package:tanlu_management/features/attendance/presentation/widgets/attendance_tab/widgets/attendance_status_ext.dart';

class AttendanceStudentStatusChip extends StatelessWidget {
  const AttendanceStudentStatusChip({
    super.key,
    required this.status,
    required this.onTap,
  });

  final AttendanceStatus status;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(20.r),
        child: Ink(
          padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 6.h),
          decoration: BoxDecoration(
            color: status.bgColor.withValues(alpha: 0.6),
            borderRadius: BorderRadius.circular(20.r),
            border: Border.all(color: status.color.withValues(alpha: 0.2)),
            boxShadow: [
              BoxShadow(
                color: status.color.withValues(alpha: 0.1),
                blurRadius: 8,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(status.icon, size: 16.w, color: status.color),
              SizedBox(width: 2.w),
              Icon(
                Icons.keyboard_arrow_down_rounded,
                size: 14.w,
                color: status.color.withValues(alpha: 0.8),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
