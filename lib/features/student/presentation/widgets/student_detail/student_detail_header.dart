import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/features/student/domain/entity/student.dart';

class StudentDetailHeader extends StatelessWidget {
  const StudentDetailHeader({
    super.key,
    required this.student,
    required this.dob,
    required this.status,
    required this.statusColor,
  });

  final Student student;
  final String dob;
  final String status;
  final Color statusColor;

  @override
  Widget build(BuildContext context) {
    final String name = student.fullName;
    final bool isMale = student.gender.toLowerCase() == 'male';
    final String avatarUrl = student.avatarFileId;

    return Column(
      children: [
        // Avatar with glowing border and badge
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: 3.w),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white.withValues(alpha: 0.3),
                    blurRadius: 24,
                    spreadRadius: 4,
                  ),
                ],
              ),
              child: Container(
                width: 110.w,
                height: 110.h,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100.r),
                  child: avatarUrl.isNotEmpty
                      ? Image.network(avatarUrl, fit: BoxFit.cover)
                      : _buildFallbackAvatar(name, 110),
                ),
              ),
            ),
            Positioned(
              bottom: 4.h,
              right: 4.w,
              child: Container(
                padding: EdgeInsets.all(6.w),
                decoration: BoxDecoration(
                  color: const Color(0xFFFF9F0A),
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 2.w),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFFFF9F0A).withValues(alpha: 0.4),
                      blurRadius: 8,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Icon(
                  Icons.shield_rounded,
                  color: Colors.white,
                  size: 18,
                ),
              ),
            ),
          ],
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppText.h1(name, color: Colors.white, fontWeight: FontWeight.w900),
            SizedBox(width: 8.w),
            Icon(
              isMale ? Icons.male_rounded : Icons.female_rounded,
              color: Colors.white.withValues(alpha: 0.9),
              size: 24,
            ),
          ],
        ),
        SizedBox(height: 8.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            AppText.b0(
              student.nickname.isNotEmpty ? '${student.nickname} • $dob' : dob,
              color: Colors.white.withValues(alpha: 0.95),
              fontWeight: FontWeight.w500,
            ),
            if (student.classroom.name.isNotEmpty) ...[
              AppText.b0(' • ', color: Colors.white.withValues(alpha: 0.95)),
              AppText.b0(
                student.classroom.name,
                color: Colors.white.withValues(alpha: 0.95),
                fontWeight: FontWeight.w500,
              ),
            ],
          ],
        ),
      ],
    );
  }

  Widget _buildFallbackAvatar(String name, double size) {
    final firstLetter = name.isNotEmpty ? name[0].toUpperCase() : '?';
    return Container(
      width: size,
      height: size,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: AppColors.primaryLight.withValues(alpha: 0.5),
        shape: BoxShape.circle,
      ),
      child: Text(
        firstLetter,
        style: TextStyle(
          color: AppColors.primary,
          fontSize: size * 0.4,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
