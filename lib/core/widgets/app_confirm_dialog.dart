import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';

enum AppConfirmDialogType { info, warning, error, success }

class AppConfirmDialog extends StatelessWidget {
  const AppConfirmDialog({
    super.key,
    required this.title,
    required this.content,
    this.cancelLabel = 'Hủy',
    this.confirmLabel = 'Xác nhận',
    this.type = AppConfirmDialogType.info,
  });

  final String title;
  final String content;
  final String cancelLabel;
  final String confirmLabel;
  final AppConfirmDialogType type;

  IconData get _icon => switch (type) {
    AppConfirmDialogType.info => Icons.info_rounded,
    AppConfirmDialogType.warning => Icons.warning_amber_rounded,
    AppConfirmDialogType.error => Icons.error_outline_rounded,
    AppConfirmDialogType.success => Icons.check_circle_outline_rounded,
  };

  Color get _iconColor => switch (type) {
    AppConfirmDialogType.info => AppColors.info,
    AppConfirmDialogType.warning => AppColors.warning,
    AppConfirmDialogType.error => AppColors.error,
    AppConfirmDialogType.success => AppColors.success,
  };

  Color get _confirmBtnColor => switch (type) {
    AppConfirmDialogType.error ||
    AppConfirmDialogType.warning => AppColors.error,
    AppConfirmDialogType.info ||
    AppConfirmDialogType.success => AppColors.primary,
  };

  static Future<bool?> show(
    BuildContext context, {
    required String title,
    required String content,
    String cancelLabel = 'Hủy',
    String confirmLabel = 'Xác nhận',
    AppConfirmDialogType type = AppConfirmDialogType.info,
  }) {
    return showDialog<bool>(
      context: context,
      barrierDismissible: false,
      builder: (context) => AppConfirmDialog(
        title: title,
        content: content,
        cancelLabel: cancelLabel,
        confirmLabel: confirmLabel,
        type: type,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: AppColors.white,
      surfaceTintColor: Colors.transparent,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.r)),
      titlePadding: EdgeInsets.fromLTRB(20, 24, 20, 12),
      contentPadding: EdgeInsets.fromLTRB(20, 0, 20, 20),
      actionsPadding: EdgeInsets.fromLTRB(16, 0, 16, 16),
      title: Row(
        children: [
          Icon(_icon, color: _iconColor, size: 26),
          SizedBox(width: 10.w),
          Expanded(
            child: Text(
              title,
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w700,
                color: AppColors.grayDark,
              ),
            ),
          ),
        ],
      ),
      content: Text(
        content,
        style: TextStyle(
          fontSize: 14.5.sp,
          color: AppColors.grayDark,
          height: 1.45.h,
        ),
      ),
      actions: [
        OutlinedButton(
          style: OutlinedButton.styleFrom(
            side: BorderSide(color: AppColors.grayLight, width: 1.w),
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.r),
            ),
          ),
          onPressed: () => Navigator.of(context).pop(false),
          child: Text(
            cancelLabel,
            style: TextStyle(
              color: AppColors.grayMedium,
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: _confirmBtnColor,
            elevation: 0,
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.r),
            ),
          ),
          onPressed: () => Navigator.of(context).pop(true),
          child: Text(
            confirmLabel,
            style: TextStyle(
              color: Colors.white,
              fontSize: 14.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ],
    );
  }
}
