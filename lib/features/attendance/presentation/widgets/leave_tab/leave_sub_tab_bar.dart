import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/features/attendance/domain/entity/enums/leave_status.dart';
import 'package:tanlu_management/features/attendance/presentation/enums/leave_status_ext.dart';

/// Bộ lọc trạng thái đơn xin phép — chip pill, khác hẳn tab chính.
class LeaveSubTabBar extends StatelessWidget {
  const LeaveSubTabBar({
    super.key,
    required this.controller,
    required this.counts,
  });

  final TabController controller;
  final Map<LeaveStatus, int> counts;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: AppColors.grayBg,
      child: Padding(
        padding: EdgeInsets.fromLTRB(10.w, 4.h, 10.w, 10.h),
        child: AnimatedBuilder(
          animation: controller,
          builder: (context, _) {
            return Row(
              children: [
                for (var i = 0; i < LeaveStatus.values.length; i++) ...[
                  if (i > 0) SizedBox(width: 4.w),
                  Expanded(
                    child: _FilterChip(
                      label: LeaveStatus.values[i].label,
                      count: counts[LeaveStatus.values[i]] ?? 0,
                      color: LeaveStatus.values[i].color,
                      selected: controller.index == i,
                      onTap: () => controller.animateTo(i),
                    ),
                  ),
                ],
              ],
            );
          },
        ),
      ),
    );
  }
}

class _FilterChip extends StatelessWidget {
  const _FilterChip({
    required this.label,
    required this.count,
    required this.color,
    required this.selected,
    required this.onTap,
  });

  final String label;
  final int count;
  final Color color;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: selected ? color : AppColors.white,
      borderRadius: BorderRadius.circular(8.r),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(8.r),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            border: Border.all(color: selected ? color : AppColors.grayLight),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: AppText.b2(
                  label,
                  color: selected ? AppColors.white : AppColors.grayDark80,
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w700,
                  textAlign: TextAlign.center,
                ),
              ),
              if (count > 0) ...[
                SizedBox(width: 4.w),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 1.h),
                  decoration: BoxDecoration(
                    color: selected ? AppColors.white : color,
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: AppText.l2(
                    '$count',
                    color: selected ? color : AppColors.white,
                    fontSize: 8.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
