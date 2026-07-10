import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_confirm_dialog.dart';

class AppLeaveDecisionDialogResult {
  const AppLeaveDecisionDialogResult({
    required this.isConfirm,
    this.note,
  });

  final bool isConfirm;
  final String? note;
}

class AppLeaveDecisionDialog extends StatefulWidget {
  const AppLeaveDecisionDialog({
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

  static Future<AppLeaveDecisionDialogResult?> show(
    BuildContext context, {
    required String title,
    required String content,
    String cancelLabel = 'Hủy',
    String confirmLabel = 'Xác nhận',
    AppConfirmDialogType type = AppConfirmDialogType.info,
  }) {
    return showDialog<AppLeaveDecisionDialogResult>(
      context: context,
      barrierDismissible: false,
      builder: (context) => AppLeaveDecisionDialog(
        title: title,
        content: content,
        cancelLabel: cancelLabel,
        confirmLabel: confirmLabel,
        type: type,
      ),
    );
  }

  @override
  State<AppLeaveDecisionDialog> createState() => _AppLeaveDecisionDialogState();
}

class _AppLeaveDecisionDialogState extends State<AppLeaveDecisionDialog> {
  final _noteController = TextEditingController();

  @override
  void dispose() {
    _noteController.dispose();
    super.dispose();
  }

  IconData get _icon => switch (widget.type) {
    AppConfirmDialogType.info => Icons.info_rounded,
    AppConfirmDialogType.warning => Icons.warning_amber_rounded,
    AppConfirmDialogType.error => Icons.error_outline_rounded,
    AppConfirmDialogType.success => Icons.check_circle_outline_rounded,
  };

  Color get _iconColor => switch (widget.type) {
    AppConfirmDialogType.info => AppColors.info,
    AppConfirmDialogType.warning => AppColors.warning,
    AppConfirmDialogType.error => AppColors.error,
    AppConfirmDialogType.success => AppColors.success,
  };

  Color get _confirmBtnColor => switch (widget.type) {
    AppConfirmDialogType.error ||
    AppConfirmDialogType.warning => AppColors.error,
    AppConfirmDialogType.success => AppColors.success,
    AppConfirmDialogType.info => AppColors.primary,
  };

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
              widget.title,
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w700,
                color: AppColors.grayDark,
              ),
            ),
          ),
        ],
      ),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.content,
              style: TextStyle(
                fontSize: 12.5.sp,
                color: AppColors.grayDark,
                height: 1.45.h,
              ),
            ),
            SizedBox(height: 16.h),
            TextField(
              controller: _noteController,
              maxLines: 3,
              minLines: 2,
              style: TextStyle(fontSize: 13.sp, color: AppColors.grayDark),
              decoration: InputDecoration(
                hintText: 'Nhập ghi chú cho phụ huynh (nếu có)...',
                hintStyle: TextStyle(
                  fontSize: 13.sp,
                  color: AppColors.grayMedium,
                ),
                contentPadding: EdgeInsets.all(12.w),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.r),
                  borderSide: BorderSide(color: AppColors.grayLight, width: 1),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.r),
                  borderSide: BorderSide(color: AppColors.primary, width: 1.5),
                ),
              ),
            ),
          ],
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
          onPressed: () {
            Navigator.of(context).pop(
              AppLeaveDecisionDialogResult(isConfirm: false),
            );
          },
          child: Text(
            widget.cancelLabel,
            style: TextStyle(
              color: AppColors.grayMedium,
              fontSize: 12.sp,
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
          onPressed: () {
            final noteText = _noteController.text.trim();
            Navigator.of(context).pop(
              AppLeaveDecisionDialogResult(
                isConfirm: true,
                note: noteText.isNotEmpty ? noteText : null,
              ),
            );
          },
          child: Text(
            widget.confirmLabel,
            style: TextStyle(
              color: Colors.white,
              fontSize: 12.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ],
    );
  }
}
