import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:tanlu_management/features/report/domain/entity/report.dart';
import 'package:tanlu_management/features/student/domain/entity/student.dart';
import 'package:tanlu_management/features/report/presentation/widgets/report_student_list_item.dart';

/// Scrollable list of students with a summary progress card at the top.
/// Groups students: those with a report in [selectedMonth] appear first.
class ReportStudentList extends StatelessWidget {
  const ReportStudentList({
    super.key,
    required this.students,
    required this.reports,
    required this.selectedMonth,
    required this.onCardTap,
  });

  final List<Student> students;
  final List<Report> reports;
  final String selectedMonth;
  final void Function(Student, Report?) onCardTap;

  Report? _findReport(int studentId) {
    try {
      return reports.firstWhere(
        (r) => r.studentId == studentId && r.reportMonth == selectedMonth,
      );
    } catch (_) {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    final withReport = students
        .where((s) => _findReport(s.id) != null)
        .toList();
    final withoutReport = students
        .where((s) => _findReport(s.id) == null)
        .toList();
    final ordered = [...withReport, ...withoutReport];

    return SliverPadding(
      padding: EdgeInsets.only(top: 8.h, bottom: 24.h),
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            final student = ordered[index];
            final report = _findReport(student.id);
            return ReportStudentListItem(
              student: student,
              report: report,
              onCardTap: () => onCardTap(student, report),
            );
          },
          childCount: ordered.length,
        ),
      ),
    );
  }
}
