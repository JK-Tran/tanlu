import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';

class StudentStats extends StatelessWidget {
  final int total;
  final int male;
  final int female;
  final int selectedIndex;
  final ValueChanged<int>? onIndexChanged;

  const StudentStats({
    super.key,
    required this.total,
    required this.male,
    required this.female,
    this.selectedIndex = 0,
    this.onIndexChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      child: Row(
        children: [
          _buildStatChip(
            index: 0,
            text: 'Tổng: $total',
            activeBgColor: AppColors.primary.withValues(alpha: 0.8),
            textColor: AppColors.black,
          ),
          SizedBox(width: 12.w),
          _buildStatChip(
            index: 1,
            text: 'Nam: $male',
            activeBgColor: AppColors.info,
            textColor: AppColors.black,
          ),
          SizedBox(width: 12.w),
          _buildStatChip(
            index: 2,
            text: 'Nữ: $female',
            activeBgColor: AppColors.primary.withValues(alpha: 0.8),
            textColor: AppColors.black,
          ),
        ],
      ),
    );
  }

  Widget _buildStatChip({
    required int index,
    required String text,
    required Color activeBgColor,
    required Color textColor,
  }) {
    final isSelected = selectedIndex == index;

    return GestureDetector(
      onTap: onIndexChanged == null ? null : () => onIndexChanged!(index),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
        decoration: BoxDecoration(
          color: isSelected ? activeBgColor : Colors.white,
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(
            color: isSelected
                ? AppColors.white
                : AppColors.white.withValues(alpha: 0),
            width: 1,
          ),
          boxShadow: [
            BoxShadow(
              color: AppColors.black.withValues(alpha: 0.1),
              blurRadius: isSelected ? 8 : 4,
              offset: Offset(0, isSelected ? 4 : 2),
            ),
          ],
        ),
        child: AppText.t2(
          text,
          color: isSelected ? Colors.white : textColor,
          fontWeight: FontWeight.w700,
          fontSize: 12.sp,
        ),
      ),
    );
  }
}
