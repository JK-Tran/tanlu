import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:intl/intl.dart';
import 'package:tanlu_management/shared/utils/date_time_utils.dart';

/// Strip ngày — một dòng gọn, cùng padding với segmented tab bar.
class AttendanceDateStrip extends StatelessWidget {
  const AttendanceDateStrip({super.key, required this.date, this.onTap});

  final DateTime date;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final fullDate = DateFormat('EEEE, dd/MM/yyyy').format(date);
    final label = date.isToday ? 'Hôm nay · $fullDate' : fullDate;

    return ColoredBox(
      color: AppColors.grayBg,
      child: Padding(
        padding: EdgeInsets.fromLTRB(12.w, 0, 12.w, 10.h),
        child: Align(
          alignment: Alignment.centerLeft,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8.r),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.1),
                  blurRadius: 5,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Material(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(8.r),
              child: InkWell(
                onTap: onTap,
                borderRadius: BorderRadius.circular(8.r),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10.w,
                    vertical: 7.h,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.calendar_today_outlined,
                        size: 14.w,
                        color: AppColors.grayMedium,
                      ),
                      SizedBox(width: 6.w),
                      AppText.b2(
                        label.toString(),
                        color: AppColors.grayDark,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600,
                      ),
                      if (onTap != null) ...[
                        SizedBox(width: 2.w),
                        Icon(
                          Icons.expand_more_rounded,
                          size: 16.w,
                          color: AppColors.grayMedium,
                        ),
                      ],
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class AttendanceDateStripSliver extends StatelessWidget {
  const AttendanceDateStripSliver({super.key, required this.date, this.onTap});

  final DateTime date;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: AttendanceDateStrip(date: date, onTap: onTap),
    );
  }
}
