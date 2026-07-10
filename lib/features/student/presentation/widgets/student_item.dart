import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/features/attendance/presentation/widgets/attendance_avatar.dart';

class StudentItem extends StatelessWidget {
  const StudentItem({
    super.key,
    required this.studentId,
    required this.fullName,
    required this.nickName,
    required this.gender,
    this.avatarUrl,
    this.className,
    this.parentName,
    this.onTap,
  });

  final int studentId;
  final String fullName;
  final String nickName;
  final String gender;
  final String? className;
  final String? parentName;
  final String? avatarUrl;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final isMale =
        gender.toLowerCase() == 'nam' || gender.toLowerCase() == 'male';
    final displayName = nickName.isNotEmpty ? nickName : fullName;

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8.r),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 6.h),
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(color: AppColors.grayLight.withValues(alpha: 0.5)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.03),
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              width: 52.w,
              height: 52.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: isMale
                      ? [AppColors.infoLight, AppColors.info]
                      : [AppColors.cardPinkBg, AppColors.primary],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              padding: EdgeInsets.all(2.5.w),
              child: Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                padding: EdgeInsets.all(1.5.w),
                child: AttendanceAvatar(
                  nickname: displayName,
                  imageUrl: avatarUrl,
                  size: 44,
                ),
              ),
            ),
            SizedBox(width: 12.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText.b2(
                    fullName,
                    color: AppColors.grayDark80,
                    fontWeight: FontWeight.w700,
                    fontSize: 14.sp,
                  ),
                  if (nickName.isNotEmpty) ...[
                    SizedBox(height: 2.h),
                    AppText.t1(
                      nickName,
                      color: AppColors.grayMedium,
                      fontSize: 12.sp,
                    ),
                  ],
                ],
              ),
            ),
            Container(
              width: 36.w,
              height: 36.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: isMale ? AppColors.infoLight : AppColors.cardPinkBg,
              ),
              child: Icon(
                isMale ? Icons.male : Icons.female,
                color: isMale ? AppColors.info : AppColors.primary,
                size: 18.w,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
