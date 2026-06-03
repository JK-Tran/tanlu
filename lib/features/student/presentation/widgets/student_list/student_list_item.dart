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
    return '$years tuổi';
  }

  Widget _buildAvatar() {
    return ClipRRect(
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
        fontSize: 20.sp,
        fontWeight: FontWeight.w700,
      ),
    );
  }

  Widget _buildTag({
    required IconData icon,
    required String text,
    required Color color,
    required Color bgColor,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(6.r),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 14, color: color),
          SizedBox(width: 4.w),
          AppText.b2(
            text,
            fontSize: 13.sp,
            fontWeight: FontWeight.w600,
            color: color,
          ),
        ],
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
          borderRadius: BorderRadius.circular(16.r),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.04),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Material(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(16.r),
          child: InkWell(
            onTap: () {
              context.push('/student-detail', extra: student);
            },
            borderRadius: BorderRadius.circular(16.r),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
              child: Row(
                children: [
                  _buildAvatar(),
                  SizedBox(width: 16.w),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: AppText.t1(
                                student.fullName,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.bold,
                                color: const Color(0xFF1E1E2D),
                                maxLines: 1,
                                textOverflow: TextOverflow.ellipsis,
                              ),
                            ),
                            SizedBox(width: 8.w),
                            if (isMale)
                              _buildTag(
                                icon: Icons.male_rounded,
                                text: 'Nam',
                                color: const Color(0xFF007AFF),
                                bgColor: const Color(0xFFE5F1FF),
                              )
                            else if (student.gender == 'female')
                              _buildTag(
                                icon: Icons.female_rounded,
                                text: 'Nữ',
                                color: const Color(0xFFFF2D55),
                                bgColor: const Color(0xFFFFE5EA),
                              ),
                          ],
                        ),
                        SizedBox(height: 6.h),
                        Row(
                          children: [
                            AppText.b2(
                              _formatAge(student.dateOfBirth),
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              color: AppColors.grayMedium,
                            ),
                            AppText.b2(
                              ' • ',
                              fontSize: 12.sp,
                              color: AppColors.grayMedium,
                            ),
                            Expanded(
                              child: AppText.b2(
                                student.classroom.name.isNotEmpty
                                    ? student.classroom.name
                                    : 'Chưa xếp lớp',
                                fontSize: 12.sp,
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
                  ),
                  SizedBox(width: 8.w),
                  Icon(
                    Icons.chevron_right_rounded,
                    color: Color(0xFFC7C7CC),
                    size: 24,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
