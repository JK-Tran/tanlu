import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';

class AttendanceSaveBar extends StatelessWidget {
  const AttendanceSaveBar({
    super.key,
    required this.markedCount,
    required this.total,
    required this.notMarkedCount,
    required this.isSaving,
    required this.onSave,
    this.isUpdateMode = false,
    this.missingCheckOutCount = 0,
    this.reminderOnly = false,
    this.isCheckOutMode = false,
    this.isMorningDraft = false,
  });

  final int markedCount;
  final int total;
  final int notMarkedCount;
  final int missingCheckOutCount;
  final bool reminderOnly;
  final bool isCheckOutMode;
  final bool isMorningDraft;
  final bool isSaving;
  final VoidCallback onSave;
  final bool isUpdateMode;

  @override
  Widget build(BuildContext context) {
    final canSave = reminderOnly
        ? false
        : isCheckOutMode
        ? !isSaving
        : isUpdateMode
        ? !isSaving
        : notMarkedCount == 0 && !isSaving;

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
                  isCheckOutMode
                      ? 'Chốt cuối ngày'
                      : reminderOnly
                      ? 'Còn $missingCheckOutCount bé chưa ghi giờ về'
                      : isUpdateMode
                      ? 'Có thay đổi chưa lưu'
                      : isMorningDraft
                      ? 'Đã chọn $markedCount/$total'
                      : 'Đã điểm $markedCount/$total',
                  color: isCheckOutMode
                      ? AppColors.primary
                      : reminderOnly
                      ? AppColors.warning
                      : canSave
                      ? AppColors.success
                      : AppColors.grayDark,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w700,
                ),
                SizedBox(height: 2.h),
                AppText.b2(
                  isCheckOutMode
                      ? (missingCheckOutCount > 0
                            ? 'Sẽ ghi giờ về cho $missingCheckOutCount bé còn lại'
                            : 'Giáo viên xác nhận chốt điểm danh cuối ngày')
                      : reminderOnly
                      ? 'Bé đã vào lớp — bấm Về khi được đón'
                      : isUpdateMode
                      ? (missingCheckOutCount > 0
                            ? 'Còn $missingCheckOutCount bé chưa ghi giờ về'
                            : 'Sửa điểm danh — bấm Cập nhật')
                      : isMorningDraft
                      ? (notMarkedCount > 0
                            ? 'Còn $notMarkedCount bé chưa chọn — bấm ○ để đánh dấu có mặt'
                            : 'Sẵn sàng lưu điểm danh sáng')
                      : notMarkedCount > 0
                      ? 'Còn $notMarkedCount học sinh chưa điểm'
                      : 'Sẵn sàng lưu điểm danh sáng',
                  color: AppColors.grayMedium,
                  fontSize: 12.sp,
                ),
              ],
            ),
          ),
          if (!reminderOnly) ...[
            SizedBox(width: 12.w),
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
                      isCheckOutMode
                          ? 'Chốt điểm danh'
                          : isUpdateMode
                          ? 'Cập nhật'
                          : 'Lưu điểm danh sáng',
                      color: Colors.white,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                    ),
            ),
          ],
        ],
      ),
    );
  }
}
