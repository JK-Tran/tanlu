import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/features/report/presentation/widgets/report_month_picker.dart';

/// Gradient AppBar for the Report tab.
/// Contains icon, title/subtitle, and the [ReportMonthPicker] chip.
class ReportAppBar extends StatelessWidget {
  const ReportAppBar({
    super.key,
    required this.selectedMonth,
    required this.onMonthChanged,
  });

  final String selectedMonth;
  final ValueChanged<String> onMonthChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [AppColors.primary, Color(0xFF6366F1)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(20.r)),
        boxShadow: [
          BoxShadow(
            color: Color(0x3D7B61FF),
            blurRadius: 14,
            offset: Offset(0, 6),
          ),
        ],
      ),
      child: Row(
        children: [
          // Leading icon badge
          Container(
            padding: EdgeInsets.all(8.w),
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.18),
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: Icon(
              Icons.assignment_outlined,
              color: Colors.white,
              size: 20,
            ),
          ),
          SizedBox(width: 12.w),
          // Title & subtitle
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText.t1(
                  'Báo cáo tháng',
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                  fontSize: 15.sp,
                ),
                AppText.b2(
                  'Theo dõi tiến bộ học viên',
                  color: Colors.white.withValues(alpha: 0.75),
                  fontSize: 10.sp,
                ),
              ],
            ),
          ),
          // Month picker chip
          ReportMonthPicker(
            selectedMonth: selectedMonth,
            onMonthChanged: onMonthChanged,
          ),
        ],
      ),
    );
  }
}
