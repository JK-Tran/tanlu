import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';

enum AppSnackbarType { success, error, info, warning }

class AppSnackbar {
  static void show(
    BuildContext context, {
    required String message,
    AppSnackbarType type = AppSnackbarType.info,
    Duration duration = const Duration(seconds: 3),
  }) {
    Color backgroundColor;
    IconData icon;

    switch (type) {
      case AppSnackbarType.success:
        backgroundColor = AppColors.success;
        icon = Icons.check_circle_outline;
        break;
      case AppSnackbarType.error:
        backgroundColor = AppColors.error;
        icon = Icons.error_outline;
        break;
      case AppSnackbarType.warning:
        backgroundColor = AppColors.warning;
        icon = Icons.warning_amber_outlined;
        break;
      case AppSnackbarType.info:
        backgroundColor = AppColors.info;
        icon = Icons.info_outline;
        break;
    }

    final snackBar = SnackBar(
      elevation: 0,
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.transparent,
      padding: EdgeInsets.zero,
      duration: duration,
      content: Container(
        margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(16.r),
          boxShadow: [
            BoxShadow(
              color: backgroundColor.withValues(alpha: 0.3),
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          children: [
            Icon(icon, color: Colors.white, size: 24.w),
            SizedBox(width: 12.w),
            Expanded(
              child: AppText.b2(
                message,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );

    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(snackBar);
  }

  static void showSuccess(
    BuildContext context, {
    required String message,
    Duration? duration,
  }) {
    show(
      context,
      message: message,
      type: AppSnackbarType.success,
      duration: duration ?? const Duration(seconds: 3),
    );
  }

  static void showError(
    BuildContext context, {
    required String message,
    Duration? duration,
  }) {
    show(
      context,
      message: message,
      type: AppSnackbarType.error,
      duration: duration ?? const Duration(seconds: 3),
    );
  }

  static void showWarning(
    BuildContext context, {
    required String message,
    Duration? duration,
  }) {
    show(
      context,
      message: message,
      type: AppSnackbarType.warning,
      duration: duration ?? const Duration(seconds: 3),
    );
  }

  static void showInfo(
    BuildContext context, {
    required String message,
    Duration? duration,
  }) {
    show(
      context,
      message: message,
      type: AppSnackbarType.info,
      duration: duration ?? const Duration(seconds: 3),
    );
  }
}
