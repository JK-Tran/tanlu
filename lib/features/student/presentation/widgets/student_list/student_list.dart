import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tanlu_management/core/constants/app_spacing.dart';
import 'package:tanlu_management/core/widgets/shimmer_list.dart';
import 'package:tanlu_management/features/student/presentation/bloc/student_bloc.dart';

import 'student_list_item.dart';

class StudentList extends StatelessWidget {
  const StudentList({super.key, this.searchQuery = ''});

  final String searchQuery;

  @override
  Widget build(BuildContext context) {
    final state = context.watch<StudentBloc>().state;
    final students = state.students.where((s) {
      if (searchQuery.isEmpty) return true;
      return s.fullName.toLowerCase().contains(searchQuery);
    }).toList();

    if (state.isLoading) {
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
        child: Center(child: Text('Không có dữ liệu')),
      );
    }

    return SliverPadding(
      padding: EdgeInsets.symmetric(vertical: AppSpacing.s4),
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate((context, index) {
          final kid = students[index];
          return StudentListItem(student: kid);
        }, childCount: students.length),
      ),
    );
  }
}
