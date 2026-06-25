import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';

/// Màn hình thành công sau khi lưu điểm danh sáng.
/// Pop về [AttendancePage] phía dưới trong stack.
class AttendanceSuccessDialog extends StatelessWidget {
  const AttendanceSuccessDialog({
    super.key,
    required this.presentCount,
    required this.absentCount,
    required this.excusedCount,
    required this.className,
  });

  final int presentCount;
  final int absentCount;
  final int excusedCount;
  final String className;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 32.w),
          child: Column(
            children: [
              const Spacer(),
              Container(
                width: 120.w,
                height: 120.w,
                decoration: const BoxDecoration(
                  color: AppColors.successLight,
                  shape: BoxShape.circle,
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Positioned(
                      top: 14.w,
                      right: 14.w,
                      child: _Star(color: AppColors.warning, size: 14.w),
                    ),
                    Positioned(
                      bottom: 16.w,
                      left: 10.w,
                      child: _Star(color: AppColors.info, size: 10.w),
                    ),
                    Positioned(
                      top: 20.w,
                      left: 12.w,
                      child: _Star(color: AppColors.primary, size: 8.w),
                    ),
                    Icon(
                      Icons.assignment_turned_in_rounded,
                      size: 60.w,
                      color: AppColors.success,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 28.h),
              AppText.h1(
                'Đã lưu điểm danh sáng!',
                textAlign: TextAlign.center,
                color: AppColors.grayDark,
                fontSize: 20.sp,
                fontWeight: FontWeight.w800,
              ),
              SizedBox(height: 6.h),
              AppText.b2(
                className,
                color: AppColors.grayMedium,
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(height: 28.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _StatChip(
                    count: presentCount,
                    label: 'Có mặt',
                    color: AppColors.success,
                    bgColor: AppColors.successLight,
                    icon: Icons.check_circle,
                  ),
                  SizedBox(width: 10.w),
                  _StatChip(
                    count: absentCount,
                    label: 'Vắng mặt',
                    color: AppColors.warning,
                    bgColor: AppColors.warningLight,
                    icon: Icons.cancel,
                  ),
                  SizedBox(width: 10.w),
                  _StatChip(
                    count: excusedCount,
                    label: 'Xin phép',
                    color: AppColors.info,
                    bgColor: AppColors.infoLight,
                    icon: Icons.assignment_return_rounded,
                  ),
                ],
              ),
              const Spacer(),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => context.pop(),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.success,
                    elevation: 0,
                    padding: EdgeInsets.symmetric(vertical: 16.h),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14.r),
                    ),
                  ),
                  child: AppText.b1(
                    'Quay lại',
                    color: Colors.white,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(height: 24.h),
            ],
          ),
        ),
      ),
    );
  }
}

class _StatChip extends StatelessWidget {
  const _StatChip({
    required this.count,
    required this.label,
    required this.color,
    required this.bgColor,
    required this.icon,
  });

  final int count;
  final String label;
  final Color color;
  final Color bgColor;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 10.h),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Column(
        children: [
          Icon(icon, color: color, size: 20.w),
          SizedBox(height: 4.h),
          AppText.h1(
            '$count',
            color: color,
            fontSize: 18.sp,
            fontWeight: FontWeight.w800,
          ),
          AppText.b2(label, color: color, fontSize: 11.sp),
        ],
      ),
    );
  }
}

class _Star extends StatelessWidget {
  const _Star({required this.color, required this.size});

  final Color color;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Icon(Icons.star_rounded, color: color, size: size);
  }
}
