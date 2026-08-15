import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/shared/utils/date_time_utils.dart';

class MessageDateDivider extends StatelessWidget {
  const MessageDateDivider({super.key, required this.date});

  final DateTime date;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 24.h),
      child: Center(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 4.h),
          decoration: BoxDecoration(
            color: AppColors.grayVeryLight,
            borderRadius: BorderRadius.circular(12.r),
          ),
          child: AppText.t2(
            DateTimeUtils.formatDateHeader(date),
            color: AppColors.grayDark80,
            fontSize: 8.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
