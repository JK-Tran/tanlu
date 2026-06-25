import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';

class PlaceholderTab extends StatelessWidget {
  final String title;
  final IconData icon;

  const PlaceholderTab({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 40.w, color: AppColors.grayLight),
          SizedBox(height: 16.h),
          AppText.t2(
            '$title\n(Tính năng sắp ra mắt)',
            color: AppColors.grayMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
