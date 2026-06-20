import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tanlu_management/core/base/base_page_state.dart';
import 'package:tanlu_management/core/widgets/app_refresh_list.dart';
import 'package:tanlu_management/core/widgets/app_snackbar.dart';
import 'package:tanlu_management/core/widgets/shimmer_list.dart';
import 'package:tanlu_management/features/app/presentation/bloc/app_bloc.dart';
import 'package:tanlu_management/features/student/presentation/bloc/student_bloc.dart';
import 'package:tanlu_management/features/student/presentation/widgets/student_body.dart';
import 'package:tanlu_management/features/student/presentation/widgets/student_header.dart';
import 'package:tanlu_management/features/student/presentation/widgets/student_stats.dart';

class StudentPage extends StatefulWidget {
  const StudentPage({super.key});

  @override
  State<StudentPage> createState() => _StudentPageState();
}

class _StudentPageState extends BasePageState<StudentPage, StudentBloc> {
  Timer? _searchDebounce;

  @override
  void initState() {
    super.initState();
    final currentUser = context.read<AppBloc>().currentUser;
    bloc.add(FetchStudents(classId: currentUser?.classId));
  }

  @override
  void dispose() {
    _searchDebounce?.cancel();
    super.dispose();
  }

  void _onSearchChanged(String value) {
    _searchDebounce?.cancel();
    _searchDebounce = Timer(const Duration(milliseconds: 400), () {
      bloc.add(SearchStudents(query: value));
    });
  }

  Future<void> _onRefresh() async {
    final currentUser = context.read<AppBloc>().currentUser;
    bloc.add(RefreshStudents(classId: currentUser?.classId));
    await Future.delayed(const Duration(milliseconds: 600));
  }

  @override
  Widget buildPage(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: BlocConsumer<StudentBloc, StudentState>(
          listenWhen: (previous, current) =>
              previous.onPageError != current.onPageError &&
              current.onPageError.isNotEmpty &&
              current.students.isNotEmpty,
          listener: (context, state) {
            AppSnackbar.showError(context, message: state.onPageError);
          },
          builder: (context, state) {
            final isInitialLoading =
                state.isLoading && state.students.isEmpty;
            final stats = state.stats;

            return AbsorbPointer(
              absorbing: isInitialLoading,
              child: AppRefreshList(
                isLoading: isInitialLoading,
                shimmer: const ShimmerList(),
                isEmpty: false,
                onRefresh: _onRefresh,
                child: CustomScrollView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  slivers: [
                    SliverToBoxAdapter(
                      child: StudentHeader(onSearchChanged: _onSearchChanged),
                    ),
                    if (stats != null)
                      SliverToBoxAdapter(
                        child: StudentStats(
                          total: stats.total,
                          male: stats.male,
                          female: stats.female,
                          selectedIndex: state.genderFilter.tabIndex,
                          onIndexChanged: (index) {
                            bloc.add(
                              ChangeStudentGenderFilter(index: index),
                            );
                          },
                        ),
                      ),
                    const StudentBody(),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
