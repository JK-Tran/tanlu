import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/features/student/presentation/bloc/student_bloc.dart';
import 'package:tanlu_management/features/student/presentation/widgets/student_list.dart';

/// Danh sách HS — đọc state từ bloc (đã filter/sort từ Firestore).
class StudentBody extends StatelessWidget {
  const StudentBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StudentBloc, StudentState>(
      builder: (context, state) {
        return SliverMainAxisGroup(
          slivers: [
            if (state.onPageError.isNotEmpty && state.students.isEmpty)
              SliverFillRemaining(
                hasScrollBody: false,
                child: _buildMessage(state.onPageError),
              )
            else
              ..._buildListSlivers(state),
            SliverToBoxAdapter(child: SizedBox(height: 24.h)),
          ],
        );
      },
    );
  }

  List<Widget> _buildListSlivers(StudentState state) {
    if (state.students.isEmpty && !state.isLoading) {
      final message = state.searchKeyword.isNotEmpty
          ? 'Không tìm thấy học sinh phù hợp.'
          : 'Chưa có học sinh trong lớp.';
      return [
        SliverFillRemaining(
          hasScrollBody: false,
          child: _buildMessage(message),
        ),
      ];
    }

    if (state.students.isEmpty) {
      return const [SliverToBoxAdapter(child: SizedBox.shrink())];
    }

    return [StudentList(students: state.students)];
  }

  Widget _buildMessage(String message) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(32.w),
        child: AppText.b1(message, color: AppColors.grayMedium),
      ),
    );
  }
}
