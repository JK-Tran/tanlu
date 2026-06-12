import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/features/student/domain/entity/student.dart';

class ChildListItem extends StatelessWidget {
  const ChildListItem({super.key, required this.student});

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
    if (years == 0) return '$months tháng tuổi';
    return '$years tuổi';
  }

  Widget _buildAvatar() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30.r),
      child: student.avatarFileId.isNotEmpty
          ? Image.network(
              student.avatarFileId,
              width: 60.w,
              height: 60.h,
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
      width: 60.w,
      height: 60.h,
      color: AppColors.primaryLight,
      alignment: Alignment.center,
      child: AppText.t1(
        firstLetter,
        color: AppColors.primary,
        fontSize: 22.sp,
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
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 6.h),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 16, color: color),
          SizedBox(width: 4.w),
          AppText.b2(
            text,
            fontSize: 11.sp,
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
        margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.r),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.05),
              blurRadius: 15,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Material(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(20.r),
          child: InkWell(
            onTap: () {
              context.push('/student-detail', extra: student);
            },
            borderRadius: BorderRadius.circular(20.r),
            child: Padding(
              padding: EdgeInsets.all(20.w),
              child: Row(
                children: [
                  _buildAvatar(),
                  SizedBox(width: 16.w),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppText.h2(
                          student.fullName,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFF1E1E2D),
                          maxLines: 1,
                          textOverflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(height: 8.h),
                        Row(
                          children: [
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
                            SizedBox(width: 8.w),
                            _buildTag(
                              icon: Icons.cake_rounded,
                              text: _formatAge(student.dateOfBirth),
                              color: const Color(0xFF34C759),
                              bgColor: const Color(0xFFE5F9E7),
                            ),
                          ],
                        ),
                        SizedBox(height: 8.h),
                        Row(
                          children: [
                            Icon(Icons.school_rounded, size: 16, color: AppColors.grayMedium),
                            SizedBox(width: 4.w),
                            Expanded(
                              child: AppText.b2(
                                student.classroom.name.isNotEmpty
                                    ? 'Lớp: ${student.classroom.name}'
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
                  ),
                  SizedBox(width: 8.w),
                  Container(
                    width: 40.w,
                    height: 40.h,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF8F9FA),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.chevron_right_rounded,
                      color: Color(0xFF1E1E2D),
                      size: 24,
                    ),
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
