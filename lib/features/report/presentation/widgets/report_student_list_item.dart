import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/features/report/domain/entity/report.dart';
import 'package:tanlu_management/features/student/domain/entity/student.dart';

class ReportStudentListItem extends StatelessWidget {
  const ReportStudentListItem({
    super.key,
    required this.student,
    required this.report,
    required this.onCardTap,
  });

  final Student student;
  final Report? report;
  final VoidCallback onCardTap;

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

  @override
  Widget build(BuildContext context) {
    final hasReport = report != null;
    final isMale = student.gender == 'male';
    final statusText = hasReport ? 'Đã có báo cáo' : 'Chưa có báo cáo';
    final statusColor = hasReport
        ? const Color(0xFF22C55E)
        : const Color(0xFFF59E0B);
    final statusBg = hasReport
        ? const Color(0xFFF0FDF4)
        : const Color(0xFFFFFBEB);
    final classLabel = student.classroom.name.isNotEmpty
        ? student.classroom.name
        : 'Chưa xếp lớp';

    return TweenAnimationBuilder<double>(
      duration: const Duration(milliseconds: 400),
      tween: Tween(begin: 0.0, end: 1.0),
      curve: Curves.easeOutQuad,
      builder: (context, value, child) => Transform.translate(
        offset: Offset(0, 20 * (1 - value)),
        child: Opacity(opacity: value, child: child),
      ),
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
            onTap: onCardTap,
            borderRadius: BorderRadius.circular(16.r),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
              child: Row(
                children: [
                  // Avatar
                  _buildAvatar(),
                  SizedBox(width: 16.w),

                  // Name + class + age
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Name row with gender tag
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
                              _buildGenderTag(
                                icon: Icons.male_rounded,
                                text: 'Nam',
                                color: const Color(0xFF007AFF),
                                bgColor: const Color(0xFFE5F1FF),
                              )
                            else if (student.gender == 'female')
                              _buildGenderTag(
                                icon: Icons.female_rounded,
                                text: 'Nữ',
                                color: const Color(0xFFFF2D55),
                                bgColor: const Color(0xFFFFE5EA),
                              ),
                          ],
                        ),
                        SizedBox(height: 6.h),

                        // Age + class
                        Row(
                          children: [
                            AppText.b2(
                              _formatAge(student.dateOfBirth),
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              color: AppColors.grayMedium,
                            ),
                            if (_formatAge(student.dateOfBirth).isNotEmpty) ...[
                              AppText.b2(
                                ' • ',
                                fontSize: 12.sp,
                                color: AppColors.grayMedium,
                              ),
                            ],
                            Expanded(
                              child: AppText.b2(
                                classLabel,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                                color: AppColors.grayMedium,
                                maxLines: 1,
                                textOverflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height: 8.h),

                        // Status pill
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 10.w,
                            vertical: 4.h,
                          ),
                          decoration: BoxDecoration(
                            color: statusBg,
                            borderRadius: BorderRadius.circular(100.r),
                            border: Border.all(
                              color: statusColor.withValues(alpha: 0.3),
                              width: 1.w,
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                hasReport
                                    ? Icons.check_circle_rounded
                                    : Icons.hourglass_top_rounded,
                                color: statusColor,
                                size: 12,
                              ),
                              SizedBox(width: 4.w),
                              AppText.b2(
                                statusText,
                                color: statusColor,
                                fontWeight: FontWeight.w700,
                              ),
                            ],
                          ),
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

  Widget _buildGenderTag({
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

  Widget _buildAvatar() {
    final firstLetter = student.fullName.isNotEmpty
        ? student.fullName[0].toUpperCase()
        : '?';
    return ClipRRect(
      borderRadius: BorderRadius.circular(24.r),
      child: student.avatarFileId.isNotEmpty
          ? Image.network(
              student.avatarFileId,
              width: 48.w,
              height: 48.h,
              fit: BoxFit.cover,
              errorBuilder: (_, _, _) => _buildFallbackAvatar(firstLetter),
            )
          : _buildFallbackAvatar(firstLetter),
    );
  }

  Widget _buildFallbackAvatar(String letter) {
    return Container(
      width: 48.w,
      height: 48.h,
      color: AppColors.primaryLight,
      alignment: Alignment.center,
      child: AppText.t1(
        letter,
        color: AppColors.primary,
        fontSize: 20.sp,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
