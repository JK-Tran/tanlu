import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';

class ChatPinnedBanner extends StatelessWidget {
  const ChatPinnedBanner({super.key, required this.message});

  final String message;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
      decoration: BoxDecoration(
        color: AppColors.warningLight,
        border: Border(
          bottom: BorderSide(color: AppColors.grayLight.withValues(alpha: 0.6)),
        ),
      ),
      child: Row(
        children: [
          Icon(Icons.push_pin_rounded, size: 16.w, color: AppColors.warning),
          SizedBox(width: 8.w),
          Expanded(
            child: AppText.b2(
              message,
              color: AppColors.grayDark,
              fontSize: 12.sp,
              maxLines: 1,
              textOverflow: TextOverflow.ellipsis,
            ),
          ),
          AppText.b2(
            'Xem',
            color: AppColors.primary,
            fontSize: 12.sp,
            fontWeight: FontWeight.w700,
          ),
        ],
      ),
    );
  }
}
