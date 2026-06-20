import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/features/attendance/presentation/widgets/attendance_avatar.dart';
import 'package:tanlu_management/features/student/domain/entity/student.dart';

class StudentItem extends StatelessWidget {
  final Student student;

  const StudentItem({super.key, required this.student});

  @override
  Widget build(BuildContext context) {
    final gender = student.gender.toLowerCase();
    final isMale = gender == 'nam' || gender == 'male';
    final name = student.nickname.isNotEmpty
        ? student.nickname
        : student.fullName;
    final fullName = student.fullName;
    final avatarUrl = student.avatarUrl.isNotEmpty ? student.avatarUrl : null;

    return InkWell(
      onTap: () => context.push('/student-detail/${student.id}'),
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
                boxShadow: [
                  BoxShadow(
                    color: (isMale ? AppColors.info : AppColors.primary)
                        .withValues(alpha: 0.3),
                    blurRadius: 4,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              padding: EdgeInsets.all(2.5.w),
              child: Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                padding: EdgeInsets.all(1.5.w),
                child: AttendanceAvatar(
                  nickname: name,
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
                  AppText.t1(
                    name,
                    color: AppColors.grayDark,
                    fontWeight: FontWeight.w800,
                    fontSize: 14.sp,
                  ),
                  if (fullName.isNotEmpty && fullName != name) ...[
                    SizedBox(height: 2.h),
                    AppText.b2(
                      fullName,
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
