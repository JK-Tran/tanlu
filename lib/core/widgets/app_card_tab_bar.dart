import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';

class AppCardTabBar extends StatelessWidget {
  final TabController controller;
  final List<Widget> tabs;
  final EdgeInsetsGeometry? margin;

  const AppCardTabBar({
    super.key,
    required this.controller,
    required this.tabs,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.h,
      margin: margin ?? EdgeInsets.symmetric(horizontal: 16.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.1),
            blurRadius: 5,
            offset: const Offset(2, 2),
          ),
        ],
      ),
      child: TabBar(
        controller: controller,
        labelColor: AppColors.primary,
        unselectedLabelColor: AppColors.grayMedium,
        indicatorColor: AppColors.primary,
        dividerColor: Colors.transparent,
        indicatorWeight: 2.h,
        indicatorSize: TabBarIndicatorSize.label,
        labelPadding: EdgeInsets.zero,
        labelStyle: TextStyle(
          fontSize: 11.sp,
          fontWeight: FontWeight.bold,
        ),
        unselectedLabelStyle: TextStyle(
          fontSize: 11.sp,
          fontWeight: FontWeight.normal,
        ),
        tabs: tabs,
      ),
    );
  }
}
