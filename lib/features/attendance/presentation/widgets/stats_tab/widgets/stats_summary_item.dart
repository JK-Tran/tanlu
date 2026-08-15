import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/l10n/l10n.dart';

class StatsSummaryCard extends StatelessWidget {
  const StatsSummaryCard({
    super.key,
    required this.presentCount,
    required this.absentCount,
    required this.excusedCount,
  });

  final int presentCount;
  final int absentCount;
  final int excusedCount;

  int get _total => presentCount + absentCount + excusedCount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(12.w, 0, 12.w, 4.h),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(10.r),
          boxShadow: [
            BoxShadow(
              color: AppColors.black.withValues(alpha: 0.06),
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.fromLTRB(14.w, 12.h, 14.w, 4.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              if (_total > 0)
                Padding(
                  padding: EdgeInsets.only(bottom: 10.h),
                  child: AppText.b2(
                    context.l10n.totalStudentsCount(_total),
                    color: AppColors.grayMedium,
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              _StatRow(
                label: context.l10n.present,
                count: presentCount,
                color: AppColors.success,
              ),
              _divider(),
              _StatRow(
                label: context.l10n.absent,
                count: absentCount,
                color: AppColors.warning,
              ),
              _divider(),
              _StatRow(
                label: context.l10n.excused,
                count: excusedCount,
                color: AppColors.info,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _divider() {
    return Divider(
      height: 1,
      thickness: 1,
      color: AppColors.grayLight.withValues(alpha: 0.55),
    );
  }
}

class _StatRow extends StatelessWidget {
  const _StatRow({
    required this.label,
    required this.count,
    required this.color,
  });

  final String label;
  final int count;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: Row(
        children: [
          Container(
            width: 8.w,
            height: 8.w,
            decoration: BoxDecoration(color: color, shape: BoxShape.circle),
          ),
          SizedBox(width: 10.w),
          Expanded(
            child: AppText.b2(
              label,
              color: AppColors.grayDark,
              fontSize: 12.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
          AppText.b2(
            '$count',
            color: AppColors.grayDark,
            fontSize: 12.sp,
            fontWeight: FontWeight.w700,
          ),
        ],
      ),
    );
  }
}
