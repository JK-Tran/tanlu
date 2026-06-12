import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/features/student/domain/entity/student.dart';

class StudentListItem extends StatelessWidget {
  const StudentListItem({super.key, required this.student});

  final Student student;

  String _formatAge(DateTime? dob) {
    if (dob == null) return '';
    final now = DateTime.now();
    int years = now.year - dob.year;
    int months = now.month - dob.month;
    if (months < 0) {
      years--;
      months += 12;
    }
    return months > 0 ? '$years tuổi $months tháng' : '$years tuổi';
  }

  Widget _buildAvatar() {
    final isMale = student.gender == 'male';
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(24.r),
          child: student.avatarFileId.isNotEmpty
              ? Image.network(
                  student.avatarFileId,
                  width: 48.w,
                  height: 48.h,
                  fit: BoxFit.cover,
                  errorBuilder: (_, _, _) => _buildFallbackAvatar(),
                )
              : _buildFallbackAvatar(),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: Container(
            padding: EdgeInsets.all(2.w),
            decoration: BoxDecoration(
              color: isMale ? const Color(0xFFE5F1FF) : const Color(0xFFFFE5EA),
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white, width: 1.5),
            ),
            child: Icon(
              isMale ? Icons.male_rounded : Icons.female_rounded,
              size: 10,
              color: isMale ? const Color(0xFF007AFF) : const Color(0xFFFF2D55),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildFallbackAvatar() {
    final firstLetter = student.fullName.isNotEmpty
        ? student.fullName[0].toUpperCase()
        : '?';
    return Container(
      width: 48.w,
      height: 48.h,
      color: AppColors.primaryLight,
      alignment: Alignment.center,
      child: AppText.t1(
        firstLetter,
        color: AppColors.primary,
        fontSize: 18.sp,
        fontWeight: FontWeight.w700,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final isMale = student.gender == 'male';

    return TweenAnimationBuilder<double>(
      duration: const Duration(milliseconds: 400),
      tween: Tween(begin: 0.0, end: 1.0),
      curve: Curves.easeOutQuad,
      builder: (context, value, child) {
        return Transform.translate(
          offset: Offset(0, 20 * (1 - value)),
          child: Opacity(opacity: value, child: child),
        );
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 6.h),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6.r),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.1),
              blurRadius: 2,
              offset: const Offset(0, 1),
            ),
          ],
        ),
        child: Material(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(6.r),
          child: InkWell(
            onTap: () {
              context.push('/student-detail', extra: student);
            },
            borderRadius: BorderRadius.circular(6.r),
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  top: 0,
                  bottom: 0,
                  child: Container(
                    width: 4.w,
                    decoration: BoxDecoration(
                      color: isMale
                          ? const Color(0xFF007AFF)
                          : const Color(0xFFFF2D55),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(6.r),
                        bottomLeft: Radius.circular(6.r),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20.w, 12.h, 16.w, 12.h),
                  child: Row(
                    children: [
                      _buildAvatar(),
                      SizedBox(width: 10.w),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: AppText.t1(
                                    student.fullName,
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.grayDark80,
                                    maxLines: 1,
                                    textOverflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),

                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.cake_rounded,
                                      size: 14,
                                      color: AppColors.grayMedium,
                                    ),
                                    SizedBox(width: 4.w),
                                    AppText.b2(
                                      _formatAge(student.dateOfBirth),
                                      fontSize: 11.sp,
                                      fontWeight: FontWeight.w500,
                                      color: AppColors.grayMedium,
                                    ),
                                  ],
                                ),
                                SizedBox(height: 4.h),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.school_rounded,
                                      size: 14,
                                      color: AppColors.grayMedium,
                                    ),
                                    SizedBox(width: 4.w),
                                    Expanded(
                                      child: AppText.b2(
                                        student.classroom.name.isNotEmpty
                                            ? student.classroom.name
                                            : 'Chưa xếp lớp',
                                        fontSize: 11.sp,
                                        fontWeight: FontWeight.w500,
                                        color: AppColors.grayMedium,
                                        maxLines: 1,
                                        textOverflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                      Icon(
                        Icons.chevron_right_rounded,
                        color: Color(0xFFC7C7CC),
                        size: 24,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
