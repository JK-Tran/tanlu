import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';

/// Thanh lưu cố định dưới màn hình — chỉ nhận text/trạng thái, không biết nghiệp vụ.
class AttendanceSaveBar extends StatelessWidget {
  const AttendanceSaveBar({
    super.key,
    required this.title,
    required this.subtitle,
    required this.buttonLabel,
    required this.titleColor,
    required this.canSave,
    required this.isSaving,
    required this.onSave,
    this.secondaryButtonLabel,
    this.onSecondarySave,
  });

  final String title;
  final String subtitle;
  final String buttonLabel;
  final Color titleColor;
  final bool canSave;
  final bool isSaving;
  final VoidCallback onSave;
  final String? secondaryButtonLabel;
  final VoidCallback? onSecondarySave;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(
        20.w,
        10.h,
        20.w,
        MediaQuery.paddingOf(context).bottom + 10.h,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.06),
            blurRadius: 12,
            offset: const Offset(0, -4),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                AppText.b1(
                  title,
                  color: titleColor,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w700,
                ),
                SizedBox(height: 2.h),
                AppText.b2(
                  subtitle,
                  color: AppColors.grayMedium,
                  fontSize: 12.sp,
                ),
              ],
            ),
          ),
          SizedBox(width: 12.w),
          if (secondaryButtonLabel != null && onSecondarySave != null) ...[
            OutlinedButton(
              onPressed: canSave ? onSecondarySave : null,
              style: OutlinedButton.styleFrom(
                foregroundColor: AppColors.primary,
                side: const BorderSide(color: AppColors.primary),
                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.r),
                ),
              ),
              child: AppText.b1(
                secondaryButtonLabel!,
                color: AppColors.primary,
                fontSize: 14.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(width: 8.w),
          ],
          FilledButton(
            onPressed: canSave ? onSave : null,
            style: FilledButton.styleFrom(
              backgroundColor: AppColors.primary,
              disabledBackgroundColor: AppColors.grayLight,
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.h),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.r),
              ),
            ),
            child: isSaving
                ? SizedBox(
                    width: 18.w,
                    height: 18.w,
                    child: const CircularProgressIndicator(
                      color: Colors.white,
                      strokeWidth: 2,
                    ),
                  )
                : AppText.b1(
                    buttonLabel,
                    color: Colors.white,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                  ),
          ),
        ],
      ),
    );
  }
}
