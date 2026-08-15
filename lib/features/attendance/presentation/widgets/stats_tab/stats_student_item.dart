import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/features/attendance/domain/entity/enums/attendance_status.dart';
import 'package:tanlu_management/features/attendance/presentation/widgets/attendance_tab/widgets/attendance_status_ext.dart';
import 'package:tanlu_management/core/widgets/app_avatar.dart';
import 'package:tanlu_management/features/attendance/presentation/widgets/attendance_tab/widgets/attendance_student_time_row.dart';

class StatsStudentItem extends StatelessWidget {
  const StatsStudentItem({
    super.key,
    required this.name,
    required this.status,
    this.nickName,
    this.fullName,
    this.checkInTime,
    this.checkOutTime,
    this.showTime = false,
  });

  final String name;
  final String? fullName;
  final String? nickName;
  final AttendanceStatus status;
  final String? checkInTime;
  final String? checkOutTime;
  final bool showTime;

  bool get _showTimeRow {
    if (status == AttendanceStatus.absentExcused ||
        status == AttendanceStatus.absentUnexcused) {
      return false;
    }
    return showTime &&
        (checkInTime != null ||
            checkOutTime != null ||
            status == AttendanceStatus.present ||
            status == AttendanceStatus.late);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.h),
      decoration: BoxDecoration(
        color: AppColors.white,
        border: Border(
          bottom: BorderSide(color: AppColors.grayLight.withValues(alpha: 0.5)),
        ),
      ),
      child: Row(
        children: [
          AppAvatar(name: name, size: 42),
          SizedBox(width: 12.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  spacing: 6.w,
                  runSpacing: 2.h,
                  children: [
                    AppText.b1(
                      fullName ?? name,
                      color: AppColors.grayDark,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w700,
                    ),

                    if (nickName != null && nickName!.isNotEmpty) ...[
                      AppText.b2(
                        '($nickName)',
                        color: AppColors.grayMedium,
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w700,
                      ),
                      SizedBox(width: 4.w),
                    ],
                  ],
                ),
                SizedBox(height: 4.h),
                if (_showTimeRow)
                  Padding(
                    padding: EdgeInsets.only(top: 4.h),
                    child: AttendanceStudentTimeRow(
                      checkInStr: checkInTime,
                      checkOutStr: checkOutTime,
                      waitingCheckOut:
                          (status == AttendanceStatus.present ||
                              status == AttendanceStatus.late) &&
                          checkOutTime == null,
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

class _StatusChip extends StatelessWidget {
  const _StatusChip({required this.status});

  final AttendanceStatus status;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(6.w),
      decoration: BoxDecoration(
        color: status.bgColor.withValues(alpha: 0.6),
        shape: BoxShape.circle,
        border: Border.all(color: status.color.withValues(alpha: 0.2)),
        boxShadow: [
          BoxShadow(
            color: status.color.withValues(alpha: 0.1),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Icon(status.icon, size: 16.w, color: status.color),
    );
  }
}
