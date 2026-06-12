import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/features/programs/domain/entity/program.dart';

import 'package:tanlu_management/shared/utils/date_time_utils.dart';

class ProgramItem extends StatelessWidget {
  final Program program;
  final VoidCallback onTap;

  const ProgramItem({super.key, required this.program, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final catColor = const Color(0xFF7C3AED);
    final catBg = const Color(0xFFEDE9FE);
    final catIcon = 'assets/images/program_icon_language.png';

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(16.w),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.r),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.1),
              blurRadius: 5,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Icon Illustration
            Container(
              width: 88.w,
              height: 88.h,
              decoration: BoxDecoration(
                color: catBg,
                borderRadius: BorderRadius.circular(16.r),
              ),
              child: Padding(
                padding: EdgeInsets.all(10.w),
                child: Image.asset(catIcon, fit: BoxFit.contain),
              ),
            ),
            SizedBox(width: 14.w),
            // Content
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Category Badge
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10.w,
                      vertical: 4.h,
                    ),
                    decoration: BoxDecoration(
                      color: catColor.withValues(alpha: 0.12),
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    child: AppText.b1(
                      program.version.isNotEmpty
                          ? 'Phiên bản ${program.version}'
                          : 'Giáo trình',
                      fontSize: 10.5.sp,
                      fontWeight: FontWeight.w700,
                      color: catColor,
                    ),
                  ),
                  SizedBox(height: 6.h),
                  // Title
                  AppText.b1(
                    program.title,
                    maxLines: 2,
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFF1E293B),
                  ),
                  SizedBox(height: 6.h),
                  // Date
                  Row(
                    children: [
                      Icon(
                        Icons.calendar_today_rounded,
                        size: 13,
                        color: AppColors.grayDark80,
                      ),
                      SizedBox(width: 4.w),
                      AppText.b1(
                        DateTimeUtils.formatDateTimeDateOnlyType2(
                              program.createdAt,
                            ) ??
                            '',
                        fontSize: 10.sp,
                        color: AppColors.grayDark80,
                      ),
                    ],
                  ),
                  SizedBox(height: 8.h),
                  // Description
                  AppText.b1(
                    program.description,
                    maxLines: 2,
                    fontSize: 11.sp,
                    color: const Color(0xFF64748B),
                  ),
                  // Attachment count
                  if (program.files.isNotEmpty) ...[
                    SizedBox(height: 10.h),
                    Row(
                      children: [
                        Icon(
                          Icons.attach_file_rounded,
                          size: 14,
                          color: catColor,
                        ),
                        SizedBox(width: 4.w),
                        AppText.b1(
                          '${program.files.length} tệp đính kèm',
                          fontSize: 10.5.sp,
                          fontWeight: FontWeight.w600,
                          color: catColor,
                        ),
                      ],
                    ),
                  ],
                ],
              ),
            ),
            // Arrow
            Padding(
              padding: EdgeInsets.only(top: 28.h),
              child: Container(
                width: 32.w,
                height: 32.h,
                decoration: BoxDecoration(
                  color: catColor.withValues(alpha: 0.1),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.chevron_right_rounded,
                  color: catColor,
                  size: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
