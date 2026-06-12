import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:tanlu_management/core/dimensions/app_dimens.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';

/// Nút chính (filled).
class AppPrimaryButton extends StatelessWidget {
  const AppPrimaryButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.loading = false,
    this.minWidth,
  });

  final String label;
  final VoidCallback? onPressed;
  final bool loading;
  final double? minWidth;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppDimens.buttonHeightMd,
      width: minWidth ?? double.infinity,
      child: ElevatedButton(
        onPressed: loading ? null : onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          foregroundColor: Colors.white,
          disabledBackgroundColor: AppColors.primary.withValues(alpha: 0.5),
          disabledForegroundColor: Colors.white.withValues(alpha: 0.8),
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.r),
          ),
          textStyle: TextStyle(fontWeight: FontWeight.w700, fontSize: 14.sp),
        ),
        child: loading
            ? SizedBox(
                height: 24.h,
                width: 24.w,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                ),
              )
            : Text(label),
      ),
    );
  }
}
