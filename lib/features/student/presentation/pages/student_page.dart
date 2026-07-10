import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:tanlu_management/core/base/base_page_state.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_refresh_list.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/core/widgets/shimmer_list.dart';
import 'package:tanlu_management/features/student/domain/entity/student.dart';
import 'package:tanlu_management/features/student/presentation/bloc/student_bloc.dart';
import 'package:tanlu_management/features/student/presentation/widgets/student_header.dart';
import 'package:tanlu_management/features/student/presentation/widgets/student_item.dart';
import 'package:tanlu_management/features/student/presentation/widgets/student_stats.dart';

class StudentPage extends StatefulWidget {
  const StudentPage({super.key});

  @override
  State<StudentPage> createState() => _StudentPageState();
}

class _StudentPageState extends BasePageState<StudentPage, StudentBloc> {
  @override
  void initState() {
    super.initState();
    bloc.add(const PageStarted());
  }

  int _countMale(List<Student> students) {
    return students.where((s) {
      final gender = s.gender.toLowerCase();
      return gender == 'nam' || gender == 'male';
    }).length;
  }

  int _countFemale(List<Student> students) {
    return students.where((s) {
      final gender = s.gender.toLowerCase();
      return gender == 'nữ' || gender == 'nu' || gender == 'female';
    }).length;
  }

  @override
  Widget buildPage(BuildContext context) {
    return BlocListener<StudentBloc, StudentState>(
      listener: (context, state) {
        if (state.onPageError.isNotEmpty) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                content: Text(state.onPageError),
                backgroundColor: AppColors.error,
                behavior: SnackBarBehavior.floating,
              ),
            );
        }
      },
      child: BlocBuilder<StudentBloc, StudentState>(
        builder: (context, state) {
          final allStudents = state.allStudents;

          return Scaffold(
            backgroundColor: Colors.white,
            body: SafeArea(
              child: AppRefreshList(
                isLoading: state.showListLoading,
                onRefresh: () async {
                  bloc.add(const RefreshRequested());
                  while (bloc.state.isRefreshing) {
                    await Future<void>.delayed(
                      const Duration(milliseconds: 50),
                    );
                  }
                },
                child: CustomScrollView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  slivers: [
                    SliverToBoxAdapter(
                      child: StudentHeader(
                        onSearchChanged: (query) {
                          bloc.add(SearchQueryChanged(query: query));
                        },
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: StudentStats(
                        total: allStudents.length,
                        male: _countMale(allStudents),
                        female: _countFemale(allStudents),
                        selectedIndex: state.genderFilterIndex,
                        onIndexChanged: (index) {
                          bloc.add(GenderFilterChanged(index: index));
                        },
                      ),
                    ),
                    if (state.showListLoading && state.students.isEmpty)
                      const SliverToBoxAdapter(
                        child: ShimmerList(
                          padding: EdgeInsets.symmetric(horizontal: 0, vertical: 8),
                          itemCount: 6,
                          itemHeight: 76.0,
                        ),
                      )
                    else if (state.students.isEmpty)
                      SliverToBoxAdapter(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 48),
                          child: Center(
                            child: AppText.b1(
                              'Chưa có học sinh.',
                              color: AppColors.grayMedium,
                            ),
                          ),
                        ),
                      )
                    else
                      SliverList(
                        delegate: SliverChildBuilderDelegate((context, index) {
                          final student = state.students[index];
                          return StudentItem(
                            studentId: student.id,
                            fullName: student.fullName,
                            nickName: student.nickName,
                            gender: student.gender,
                            avatarUrl: student.avatarUrl,
                            className: student.classInfo.name,
                            parentName: student.parent.fullName,
                            onTap: () => context.push(
                              '/student-detail/${student.id}',
                              extra: student,
                            ),
                          );
                        }, childCount: state.students.length),
                      ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
