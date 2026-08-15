import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_icon_pill.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/features/student/domain/entity/student.dart';
import 'package:tanlu_management/core/widgets/app_avatar.dart';
import 'package:tanlu_management/shared/utils/string_utils.dart';
import 'package:tanlu_management/l10n/l10n.dart';

class StudentDetailHeader extends StatelessWidget {
  final Student student;

  const StudentDetailHeader({super.key, required this.student});

  @override
  Widget build(BuildContext context) {
    final gender = student.gender.toLowerCase();
    final isMale = gender == 'nam' || gender == 'male';
    final avatarNickname = student.fullName;
    final avatarUrl = student.avatarUrl.isNotEmpty ? student.avatarUrl : null;

    String diagnosisName = student.diagnosis;
    String severity = '';
    if (student.diagnosis.contains('(') && student.diagnosis.contains(')')) {
      final startIndex = student.diagnosis.indexOf('(');
      final endIndex = student.diagnosis.indexOf(')');
      diagnosisName = student.diagnosis.substring(0, startIndex).trim();
      severity = student.diagnosis.substring(startIndex + 1, endIndex).trim();
    }

    return Container(
      padding: EdgeInsets.only(
        top: MediaQuery.paddingOf(context).top + 10.h,
        bottom: 10,
      ),
      decoration: BoxDecoration(color: AppColors.primary),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Top Row (App Bar)
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Row(
              children: [
                // Back Button
                Container(
                  width: 32.w,
                  height: 32.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    color: Colors.white,
                  ),
                  child: IconButton(
                    padding: EdgeInsets.zero,
                    icon: Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: AppColors.black,
                      size: 18.w,
                    ),
                    onPressed: () => context.pop(),
                  ),
                ),
                SizedBox(width: 12.w),
                // Title
                Expanded(
                  child: Text(
                    context.l10n.studentProfileTitle,
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),

                // Actions (Phone, More)
                Container(
                  width: 32.w,
                  height: 32.w,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: IconButton(
                    padding: EdgeInsets.zero,
                    icon: Icon(
                      Icons.more_horiz,
                      color: AppColors.black,
                      size: 18.w,
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 12.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: DottedLine(
              dashLength: 6,
              dashGapLength: 6,
              dashColor: Colors.white.withValues(alpha: 0.8),
              lineThickness: 1,
            ),
          ),
          SizedBox(height: 12.h),
          // Avatar and Info
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Avatar
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 2),
                  ),
                  child: AppAvatar(
                    name: avatarNickname,
                    imageUrl: avatarUrl,
                    size: 76,
                  ),
                ),
                SizedBox(width: 16.w),
                // Info
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: RichText(
                              text: TextSpan(
                                text: student.fullName,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(4.r),
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors.white,
                            ),
                            child: Icon(
                              isMale ? Icons.male : Icons.female,
                              color: isMale
                                  ? AppColors.info
                                  : AppColors.primary,
                              size: 24.w,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 4.h),
                      AppIconPill(
                        icon: Icons.calendar_today_outlined,
                        text: StringUtils.formatBirthDate(student.birthDate),
                        backgroundColor: Colors.white.withValues(alpha: 0.15),
                        contentColor: Colors.white,
                      ),
                      SizedBox(height: 8.h),
                      AppIconPill(
                        icon: Icons.school_rounded,
                        text: student.classInfo.name.isNotEmpty
                            ? student.classInfo.name
                            : (student.classId != 0
                                  ? context.l10n.classLabel(
                                      student.classId.toString(),
                                    )
                                  : context.l10n.noClassUpdated),
                        backgroundColor: Colors.white.withValues(alpha: 0.15),
                        contentColor: Colors.white,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // Diagnosis Card (Compact)
          if (student.diagnosis.isNotEmpty) ...[
            SizedBox(height: 8.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                children: [
                  SizedBox(
                    width: 80.w,
                    child: Center(
                      child: AppText.b2(
                        context.l10n.diagnosis,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(width: 16.w),
                  Flexible(
                    child: AppIconPill(
                      icon: Icons.extension_rounded,
                      text: diagnosisName,
                      backgroundColor: AppColors.white,
                      contentColor: AppColors.grayDark80,
                      iconColor: AppColors.primary,
                      padding: EdgeInsets.symmetric(
                        horizontal: 12.w,
                        vertical: 6.h,
                      ),
                      iconSize: 16.w,
                      trailing: severity.isNotEmpty
                          ? Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 10.w,
                                vertical: 2.h,
                              ),
                              decoration: BoxDecoration(
                                color: AppColors.primary,
                                borderRadius: BorderRadius.circular(12.r),
                              ),
                              child: AppText.b2(
                                severity,
                                color: AppColors.white,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          : null,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ],
      ),
    );
  }
}
