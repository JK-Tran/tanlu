import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:tanlu_management/core/base/base_page_state.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/features/student/presentation/bloc/student_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tanlu_management/features/student/domain/entity/student.dart';

import '../widgets/student_detail/student_detail_header.dart';
import '../widgets/student_detail/student_info_tab.dart';
import '../widgets/student_detail/student_assessment_tab.dart';
import '../widgets/student_detail/student_family_tab.dart';

class StudentDetailPage extends StatefulWidget {
  const StudentDetailPage({super.key, required this.student});

  final Student student;

  @override
  State<StudentDetailPage> createState() => _StudentDetailPageState();
}

class _StudentDetailPageState
    extends BasePageState<StudentDetailPage, StudentBloc> {
  final List<String> _tabs = ['Thông tin', 'Nhận xét', 'Gia đình'];

  @override
  void initState() {
    super.initState();
    bloc.add(FetchStudentById(widget.student.id));
  }

  String _formatAge(DateTime? dob) {
    if (dob == null) return '';
    final now = DateTime.now();
    int years = now.year - dob.year;
    int months = now.month - dob.month;
    if (months < 0) {
      years--;
      months += 12;
    }
    if (years == 0) return '$months tháng tuổi';
    return '$years tuổi $months tháng';
  }

  @override
  Widget buildPage(BuildContext context) {
    return BlocBuilder<StudentBloc, StudentState>(
      bloc: bloc,
      builder: (context, state) {
        final student = state.currentStudent ?? widget.student;
        return _buildModernUI(context, student);
      },
    );
  }

  Widget _buildModernUI(BuildContext context, Student student) {
    final String dob = _formatAge(student.dateOfBirth);
    final String group = student.classroom.name.isNotEmpty
        ? student.classroom.name
        : 'Chưa xếp lớp';
    final String status = student.status == 'active' ? 'Đang học' : 'Tạm nghỉ';
    final bool isStudying = student.status == 'active';
    final Color statusColor = isStudying
        ? const Color(0xFF34C759)
        : const Color(0xFFFF9F0A);

    return Scaffold(
      backgroundColor: Colors.white,
      body: DefaultTabController(
        length: _tabs.length,
        child: NestedScrollView(
          physics: const BouncingScrollPhysics(),
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                expandedHeight: 300.0,
                collapsedHeight: 180.0,
                pinned: true,
                elevation: 0,
                backgroundColor: const Color(
                  0xFF0F52BA,
                ), // Solid color when collapsed
                automaticallyImplyLeading: false,
                leading: Center(
                  child: _buildCircleButton(
                    Icons.arrow_back_ios_new_rounded,
                    () => Navigator.pop(context),
                  ),
                ),

                flexibleSpace: LayoutBuilder(
                  builder: (context, constraints) {
                    final top = constraints.biggest.height;
                    final safeArea = MediaQuery.of(context).padding.top;
                    // minHeight is where the app bar stops collapsing
                    final double minHeight = safeArea + 180.0 + 60.0;

                    // Animate during the last 100 pixels of scroll
                    double percent = (top - minHeight) / 100.0;
                    percent = percent.clamp(0.0, 1.0);

                    final double scale =
                        0.7 + (0.3 * percent); // Scale from 0.7 to 1.0
                    final double topPadding =
                        10.0 +
                        (50.0 * percent); // 60 when expanded, 10 when collapsed

                    return Stack(
                      children: [
                        // Gradient background
                        Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [AppColors.primary, AppColors.accent],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                          ),
                        ),
                        // Floating decorations
                        Positioned(
                          left: -20,
                          top: 120.h,
                          child: Opacity(
                            opacity: 0.7,
                            child: Transform.scale(
                              scale: 1.2,
                              child: Image.asset(
                                'assets/icons/balloon.png',
                                width: 100.w,
                                errorBuilder: (_, _, _) => SizedBox(),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          right: 10.w,
                          top: 50.h,
                          child: Opacity(
                            opacity: 0.7,
                            child: Transform.scale(
                              scale: 1.2,
                              child: Image.asset(
                                'assets/icons/ic-stars.png',
                                width: 50.w,
                                errorBuilder: (_, _, _) => SizedBox(),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          right: -20,
                          top: 150.h,
                          child: Opacity(
                            opacity: 0.5,
                            child: Transform.scale(
                              scale: 1.2,
                              child: Image.asset(
                                'assets/icons/ic-clouds.png',
                                width: 120.w,
                                errorBuilder: (_, _, _) => SizedBox(),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 20.w,
                          top: 240.h,
                          child: Opacity(
                            opacity: 0.4,
                            child: Transform.scale(
                              scale: 1.2,
                              child: Image.asset(
                                'assets/icons/ic-stars.png',
                                width: 40.w,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 70.w,
                          top: 30.h,
                          child: Opacity(
                            opacity: 0.9,
                            child: Transform.scale(
                              scale: 1.2,
                              child: Image.asset(
                                'assets/icons/ic-rocket.png',
                                width: 60.w,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          right: 40.w,
                          top: 280.h,
                          child: Opacity(
                            opacity: 0.3,
                            child: Transform.scale(
                              scale: 1.2,
                              child: Image.asset(
                                'assets/icons/ic_balloon.png',
                                width: 70.w,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 100.w,
                          top: 320.h,
                          child: Opacity(
                            opacity: 0.15,
                            child: Transform.scale(
                              scale: 1.2,
                              child: Image.asset(
                                'assets/icons/ic_cloud.png',
                                width: 90.w,
                              ),
                            ),
                          ),
                        ),
                        // Header Content (Avatar, Name, Subtitle)
                        SafeArea(
                          bottom: false,
                          child: Padding(
                            padding: EdgeInsets.only(
                              top: topPadding,
                            ), // Dynamic padding to slide up
                            child: Align(
                              alignment: Alignment.topCenter,
                              child: Transform.scale(
                                scale: scale,
                                alignment: Alignment.topCenter,
                                child: StudentDetailHeader(
                                  student: student,
                                  dob: dob,
                                  status: status,
                                  statusColor: statusColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
                bottom: PreferredSize(
                  preferredSize: const Size.fromHeight(60),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(32.r),
                      ),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 16.h),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 16.w),
                          padding: EdgeInsets.all(4.w),
                          decoration: BoxDecoration(
                            color: const Color(
                              0xFFF1F5F9,
                            ), // Light grey background for the whole tab bar
                            borderRadius: BorderRadius.circular(100.r),
                          ),
                          child: TabBar(
                            isScrollable: false,
                            labelColor: Colors.white,
                            unselectedLabelColor: const Color(
                              0xFF64748B,
                            ), // Slate 500
                            indicatorSize: TabBarIndicatorSize.tab,
                            indicator: BoxDecoration(
                              color: const Color(0xFF6366F1),
                              borderRadius: BorderRadius.circular(100.r),
                              boxShadow: [
                                BoxShadow(
                                  color: const Color(
                                    0xFF6366F1,
                                  ).withValues(alpha: 0.3),
                                  blurRadius: 8,
                                  offset: const Offset(0, 2),
                                ),
                              ],
                            ),
                            dividerColor: Colors.transparent,
                            labelStyle: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.bold,
                            ),
                            unselectedLabelStyle: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                            ),
                            tabs: _tabs.map((t) => Tab(text: t)).toList(),
                          ),
                        ),
                        SizedBox(height: 8.h),
                      ],
                    ),
                  ),
                ),
              ),
            ];
          },
          body: Container(
            color: Colors.white,
            child: TabBarView(
              children: [
                StudentInfoTab(student: student, group: group),
                StudentAssessmentTab(student: student),
                StudentFamilyTab(student: student),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCircleButton(IconData icon, VoidCallback onPressed) {
    return Container(
      width: 44.w,
      height: 44.h,
      decoration: BoxDecoration(
        color: AppColors.white.withValues(alpha: 0.8),
        shape: BoxShape.circle,
      ),
      child: IconButton(
        icon: Icon(icon, color: AppColors.black, size: 20),
        onPressed: onPressed,
      ),
    );
  }
}
