import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/widgets/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:tanlu_management/features/student/domain/entity/student.dart';
import 'package:tanlu_management/features/student/presentation/widgets/student_info_row.dart';

class StudentAssessmentTab extends StatelessWidget {
  const StudentAssessmentTab({super.key, required this.student});

  final Student student;

  @override
  Widget build(BuildContext context) {
    if (student.screeningResults.isEmpty &&
        student.developmentResults.isEmpty) {
      return _buildEmptyState('Chưa có kết quả đánh giá nào');
    }

    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      child: Column(
        children: [
          if (student.screeningResults.isNotEmpty)
            ...student.screeningResults.map((s) {
              return CustomCard(
                title: s.screeningTest.title,
                icon: Icons.assignment_outlined,
                children: [
                  StudentInfoRow(
                    label: 'Điểm số',
                    value: s.totalScore.toString(),
                  ),
                  StudentInfoRow(
                    label: 'Mức nguy cơ',
                    value: s.riskLevel,
                    valueColor: s.riskLevel == 'Cao'
                        ? const Color(0xFFFF3B30)
                        : null,
                  ),
                  StudentInfoRow(
                    label: 'Khuyến nghị',
                    value: s.recommendation,
                    isMultiLine: true,
                  ),
                  StudentInfoRow(
                    label: 'Người đánh giá',
                    value: s.creator.fullName,
                  ),
                ],
              );
            }),
          if (student.developmentResults.isNotEmpty)
            ...student.developmentResults.map((d) {
              return CustomCard(
                title: d.developmentAssessment.title,
                icon: Icons.trending_up_rounded,
                children: [
                  StudentInfoRow(
                    label: 'Tuổi phát triển',
                    value: '${d.estimatedDevelopmentAgeMonth} tháng',
                  ),
                  StudentInfoRow(
                    label: 'Điểm mạnh',
                    value: d.strengths,
                    isMultiLine: true,
                  ),
                  StudentInfoRow(
                    label: 'Điểm yếu',
                    value: d.weaknesses,
                    isMultiLine: true,
                  ),
                  StudentInfoRow(
                    label: 'Người đánh giá',
                    value: d.creator.fullName,
                  ),
                ],
              );
            }),
          SizedBox(height: 24.h),
        ],
      ),
    );
  }

  Widget _buildEmptyState(String message) {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 60.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(24.w),
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.02),
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Icon(
                Icons.hourglass_empty_rounded,
                size: 40,
                color: Color(0xFFD1D1D6),
              ),
            ),
            SizedBox(height: 16.h),
            Text(
              message,
              style: TextStyle(
                fontSize: 15.sp,
                fontWeight: FontWeight.w500,
                color: Color(0xFF8E8E93),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
