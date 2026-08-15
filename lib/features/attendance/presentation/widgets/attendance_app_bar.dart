import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/l10n/l10n.dart';

/// AppBar nhỏ gọn, cố định.
class AttendanceAppBar extends StatelessWidget {
  const AttendanceAppBar({
    super.key,
    required this.onBack,
    this.className = '',
  });

  final VoidCallback onBack;
  final String className;

  @override
  Widget build(BuildContext context) {
    final top = MediaQuery.paddingOf(context).top;

    return ColoredBox(
      color: AppColors.primary,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: top),
          SizedBox(
            height: kToolbarHeight,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Material(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8.r),
                      child: InkWell(
                        onTap: onBack,
                        borderRadius: BorderRadius.circular(8.r),
                        child: SizedBox(
                          width: 36.w,
                          height: 36.w,
                          child: Icon(
                            Icons.arrow_back_ios_new_rounded,
                            size: 16.w,
                            color: AppColors.grayDark,
                          ),
                        ),
                      ),
                    ),
                  ),
                  AppText.b1(
                    context.l10n.attendanceTitle,
                    color: Colors.white,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
