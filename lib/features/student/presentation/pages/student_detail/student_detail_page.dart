import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_card_tab_bar.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/core/widgets/placeholder_tab.dart';
import 'package:tanlu_management/features/student/domain/entity/student.dart';
import 'package:tanlu_management/features/student/presentation/pages/student_detail/widgets/contact_tab_view.dart';

import 'package:tanlu_management/shared/di/di.dart';
import 'package:tanlu_management/features/student/domain/repositories/student_repository.dart';
import 'package:tanlu_management/features/student/presentation/pages/student_detail/widgets/student_detail_header.dart';

class StudentDetailPage extends StatefulWidget {
  final int studentId;

  const StudentDetailPage({super.key, required this.studentId});

  @override
  State<StudentDetailPage> createState() => _StudentDetailPageState();
}

class _StudentDetailPageState extends State<StudentDetailPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  Student? _student;
  bool _isLoading = true;
  String? _error;

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  Future<void> _fetchStudent() async {
    try {
      final student = await sl<StudentRepository>().getStudentById(
        widget.studentId,
      );
      if (mounted) {
        setState(() {
          _student = student;
          _isLoading = false;
        });
      }
    } catch (e) {
      if (mounted) {
        setState(() {
          _error = e.toString();
          _isLoading = false;
        });
      }
    }
  }

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
    _fetchStudent();
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: CircularProgressIndicator(color: AppColors.primary),
        ),
      );
    }

    if (_student == null) {
      return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new_rounded),
            onPressed: () => context.pop(),
          ),
          backgroundColor: AppColors.primary,
          elevation: 0,
        ),
        body: Center(
          child: AppText.t2(
            _error ?? 'Không tìm thấy học sinh',
            color: AppColors.grayMedium,
          ),
        ),
      );
    }

    final student = _student!;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          StudentDetailHeader(student: student),
          SizedBox(height: 10.h),
          // Tabs
          AppCardTabBar(
            controller: _tabController,
            tabs: [
              Tab(
                icon: Icon(Icons.people_alt_rounded, size: 20.w),
                text: 'Liên hệ',
                iconMargin: EdgeInsets.only(bottom: 2.h),
              ),
              Tab(
                icon: Icon(Icons.description_outlined, size: 20.w),
                text: 'Ghi chú',
                iconMargin: EdgeInsets.only(bottom: 2.h),
              ),
              Tab(
                icon: Icon(Icons.calendar_today_outlined, size: 20.w),
                text: 'Điểm danh',
                iconMargin: EdgeInsets.only(bottom: 2.h),
              ),
              Tab(
                icon: Icon(Icons.notifications_none_outlined, size: 20.w),
                text: 'Bảng tin',
                iconMargin: EdgeInsets.only(bottom: 2.h),
              ),
            ],
          ),
          // Tab Views
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                ContactTabView(
                  contacts: student.contacts,
                ),
                const PlaceholderTab(
                  title: 'Ghi chú',
                  icon: Icons.note_alt_outlined,
                ),
                const PlaceholderTab(
                  title: 'Điểm danh',
                  icon: Icons.fact_check_outlined,
                ),
                const PlaceholderTab(
                  title: 'Bảng tin',
                  icon: Icons.feed_outlined,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
