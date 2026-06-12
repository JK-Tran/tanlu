import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/core/widgets/shimmer_list.dart';
import 'package:tanlu_management/features/report/domain/entity/report.dart';
import 'package:tanlu_management/features/student/domain/entity/student.dart';
import 'package:tanlu_management/features/report/presentation/widgets/report_student_list.dart';

/// Dispatches between loading / error / empty / list views.
class ReportBody extends StatelessWidget {
  const ReportBody({
    super.key,
    required this.isLoading,
    required this.pageError,
    required this.students,
    required this.reports,
    required this.selectedMonth,
    required this.onRetry,
    required this.onRefreshData,
    required this.onCardTap,
  });

  final bool isLoading;
  final String pageError;
  final List<Student> students;
  final List<Report> reports;
  final String selectedMonth;
  final VoidCallback onRetry;
  final VoidCallback onRefreshData;
  final void Function(Student, Report?) onCardTap;

  @override
  Widget build(BuildContext context) {
    if (pageError.isNotEmpty) {
      return SliverToBoxAdapter(
        child: ReportErrorView(message: pageError, onRetry: onRetry),
      );
    }

    if (isLoading) {
      return SliverToBoxAdapter(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 24.0.h),
          child: ShimmerList(),
        ),
      );
    }

    if (students.isEmpty) {
      return const SliverFillRemaining(
        hasScrollBody: false,
        child: ReportEmptyView(),
      );
    }

    return ReportStudentList(
      students: students,
      reports: reports,
      selectedMonth: selectedMonth,
      onCardTap: onCardTap,
    );
  }
}

// ─── Loading ──────────────────────────────────────────────────────────────────
class ReportLoadingView extends StatelessWidget {
  const ReportLoadingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: CircularProgressIndicator(color: AppColors.primary));
  }
}

// ─── Error ────────────────────────────────────────────────────────────────────
class ReportErrorView extends StatelessWidget {
  const ReportErrorView({
    super.key,
    required this.message,
    required this.onRetry,
  });

  final String message;
  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(32.w),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.wifi_off_rounded, size: 52, color: AppColors.grayMedium),
            SizedBox(height: 16.h),
            AppText.t1(
              message,
              color: AppColors.grayMedium,
              textAlign: TextAlign.center,
              fontSize: 12.sp,
            ),
            SizedBox(height: 20.h),
            ElevatedButton.icon(
              onPressed: onRetry,
              icon: Icon(Icons.refresh_rounded, size: 18),
              label: Text('Thử lại'),
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primary,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.r),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ─── Empty ────────────────────────────────────────────────────────────────────
class ReportEmptyView extends StatelessWidget {
  const ReportEmptyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.child_care_rounded, size: 56, color: AppColors.grayMedium),
          SizedBox(height: 16.h),
          AppText.t1(
            'Chưa có học viên nào.',
            color: AppColors.grayMedium,
            fontSize: 13.sp,
          ),
        ],
      ),
    );
  }
}
