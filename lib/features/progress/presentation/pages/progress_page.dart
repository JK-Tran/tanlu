import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:tanlu_management/core/base/base_page_state.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/features/app/presentation/bloc/app_bloc.dart';
import 'package:tanlu_management/features/student/domain/entity/student.dart';
import 'package:tanlu_management/features/student/presentation/bloc/student_bloc.dart';
import 'package:tanlu_management/core/widgets/app_refresh_list.dart';
import 'package:tanlu_management/core/widgets/shimmer_list.dart';

class ProgressPage extends StatefulWidget {
  const ProgressPage({super.key});

  @override
  State<ProgressPage> createState() => _ProgressPageState();
}

class _ProgressPageState extends BasePageState<ProgressPage, StudentBloc> {
  Student? _selectedStudent;

  @override
  void initState() {
    super.initState();
    bloc.add(const StudentStarted());
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
    return '$years tuổi';
  }

  @override
  Widget buildPage(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.grayBg,
      body: SafeArea(
        bottom: false,
        child: AppRefreshList(
          isLoading: false,
          isEmpty: false,
          onRefresh: () async {
            bloc.add(const RefreshStudents());
            await Future.delayed(const Duration(milliseconds: 600));
          },
          child: BlocConsumer<StudentBloc, StudentState>(
            listener: (context, state) {
              if (state.students.isNotEmpty && _selectedStudent == null) {
                setState(() {
                  _selectedStudent = state.students.first;
                });
              }
            },
            builder: (context, state) {
              return SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                padding: EdgeInsets.only(bottom: 100.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildHeader(),
                    if (state.isLoading && state.students.isEmpty)
                      Padding(
                        padding: EdgeInsets.all(16.0.w),
                        child: ShimmerList(),
                      )
                    else ...[
                      _buildChildrenList(state.students),
                      _buildBanner(),
                      if (_selectedStudent != null) _buildQuickOverview(),
                      _buildNotifications(),
                    ],
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Padding(
      padding: EdgeInsets.fromLTRB(16, 20, 16, 16),
      child: BlocBuilder<AppBloc, AppState>(
        builder: (context, appState) {
          final currentUser = appState.mapOrNull(authenticated: (s) => s.user);
          final displayName = currentUser?.fullName.isNotEmpty == true
              ? currentUser!.fullName
              : 'Phụ huynh';

          return Row(
            children: [
              Container(
                width: 52.w,
                height: 52.h,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 2.w),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.05),
                      blurRadius: 8,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: currentUser?.avatarFileId.isNotEmpty == true
                    ? ClipOval(
                        child: Image.network(
                          currentUser!.avatarFileId,
                          fit: BoxFit.cover,
                        ),
                      )
                    : const CircleAvatar(
                        backgroundColor: AppColors.primaryLight,
                        child: Icon(
                          Icons.person_rounded,
                          color: AppColors.primary,
                        ),
                      ),
              ),
              SizedBox(width: 12.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        AppText.h2(
                          'Xin chào, $displayName',
                          color: const Color(0xFF1E1E2D),
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                          maxLines: 1,
                          textOverflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(width: 4.w),
                        Text('👋', style: TextStyle(fontSize: 16.sp)),
                      ],
                    ),
                    SizedBox(height: 2.h),
                    AppText.b2(
                      'Phụ huynh',
                      color: const Color(0xFF8E8E93),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                ),
              ),
              IconButton(
                icon: Icon(Icons.notifications_none_rounded, size: 28),
                onPressed: () {},
                color: const Color(0xFF1E1E2D),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildChildrenList(List<Student> students) {
    if (students.isEmpty) return SizedBox.shrink();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppText.h2(
                'Các bé của tôi',
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
                color: AppColors.grayDark,
              ),
            ],
          ),
        ),
        SizedBox(height: 16.h),
        SizedBox(
          height: 180.h,
          child: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 16.0.w),
            scrollDirection: Axis.horizontal,
            itemCount: students.length,
            separatorBuilder: (context, index) => SizedBox(width: 12.w),
            itemBuilder: (context, index) {
              final student = students[index];
              final isSelected = _selectedStudent?.id == student.id;

              return GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedStudent = student;
                  });
                },
                child: Container(
                  width: 140.w,
                  padding: EdgeInsets.all(12.w),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16.r),
                    border: Border.all(
                      color: isSelected
                          ? AppColors.primary
                          : Colors.transparent,
                      width: 1.5.w,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.04),
                        blurRadius: 10,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Stack(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 64.w,
                            height: 64.h,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors.primaryLight,
                            ),
                            child: student.avatarFileId.isNotEmpty
                                ? ClipOval(
                                    child: Image.network(
                                      student.avatarFileId,
                                      fit: BoxFit.cover,
                                    ),
                                  )
                                : Center(
                                    child: AppText.t1(
                                      student.fullName.isNotEmpty
                                          ? student.fullName[0].toUpperCase()
                                          : '?',
                                      color: AppColors.primary,
                                      fontSize: 22.sp,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                          ),
                          SizedBox(height: 12.h),
                          AppText.h2(
                            student.fullName,
                            fontSize: 13.sp,
                            fontWeight: FontWeight.bold,
                            color: AppColors.grayDark,
                            maxLines: 1,
                            textOverflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 4.h),
                          AppText.b2(
                            _formatAge(student.dateOfBirth),
                            fontSize: 10.sp,
                            color: AppColors.grayMedium,
                            maxLines: 1,
                            textOverflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      if (isSelected)
                        Positioned(
                          top: 0.h,
                          right: 0.w,
                          child: Container(
                            decoration: BoxDecoration(
                              color: AppColors.primary,
                              shape: BoxShape.circle,
                            ),
                            padding: EdgeInsets.all(2.w),
                            child: Icon(
                              Icons.check,
                              size: 12,
                              color: Colors.white,
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildBanner() {
    return Container(
      margin: EdgeInsets.all(16.0.w),
      width: double.infinity,
      height: 140.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        gradient: const LinearGradient(
          colors: [Color(0xFF6B4DFB), Color(0xFF8A71FC)],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF6B4DFB).withValues(alpha: 0.3),
            blurRadius: 15,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Stack(
        children: [
          // Background decorations
          Positioned(
            right: -20,
            bottom: -20,
            child: Opacity(
              opacity: 0.2,
              child: Icon(Icons.cloud_rounded, size: 100, color: Colors.white),
            ),
          ),
          Positioned(
            left: 20.w,
            top: 20.h,
            child: Opacity(
              opacity: 0.1,
              child: Icon(Icons.star_rounded, size: 40, color: Colors.white),
            ),
          ),
          // Content
          Padding(
            padding: EdgeInsets.all(20.0.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10.w,
                    vertical: 4.h,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white.withValues(alpha: 0.2),
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: AppText.b2(
                    'Trung tâm Can thiệp sớm Ánh Dương',
                    color: Colors.white,
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 12.h),
                AppText.h1(
                  'Thấu hiểu & Tận tâm',
                  color: Colors.white,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                ),
              ],
            ),
          ),
          // Illustration placeholder
          Positioned(
            right: 16.w,
            bottom: 0.h,
            child: Image.asset(
              'assets/icons/ic-balloons.png',
              width: 80.w,
              errorBuilder: (context, error, stackTrace) =>
                  Icon(Icons.celebration, color: Colors.white, size: 60),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildQuickOverview() {
    final student = _selectedStudent!;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppText.h2(
            'Tổng quan nhanh',
            fontSize: 16.sp,
            fontWeight: FontWeight.bold,
            color: AppColors.grayDark,
          ),
          SizedBox(height: 16.h),
          Container(
            padding: EdgeInsets.all(16.w),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.r),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.04),
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              children: [
                // Child Info Row
                Row(
                  children: [
                    Container(
                      width: 44.w,
                      height: 44.h,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.primaryLight,
                      ),
                      child: student.avatarFileId.isNotEmpty
                          ? ClipOval(
                              child: Image.network(
                                student.avatarFileId,
                                fit: BoxFit.cover,
                              ),
                            )
                          : Center(
                              child: AppText.t1(
                                student.fullName.isNotEmpty
                                    ? student.fullName[0].toUpperCase()
                                    : '?',
                                color: AppColors.primary,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                    ),
                    SizedBox(width: 12.w),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppText.h2(
                            student.fullName,
                            fontSize: 13.sp,
                            fontWeight: FontWeight.bold,
                            color: AppColors.grayDark,
                          ),
                          AppText.b2(
                            _formatAge(student.dateOfBirth),
                            fontSize: 10.sp,
                            color: AppColors.grayMedium,
                          ),
                          AppText.b2(
                            student.classroom.name,
                            fontSize: 10.sp,
                            color: AppColors.grayMedium,
                            textOverflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                    OutlinedButton(
                      onPressed: () {
                        context.push('/student-detail', extra: student);
                      },
                      style: OutlinedButton.styleFrom(
                        foregroundColor: AppColors.primary,
                        side: BorderSide(
                          color: AppColors.primaryLight,
                          width: 1.5.w,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: 16.w,
                          vertical: 8.h,
                        ),
                      ),
                      child: AppText.b2(
                        'Xem chi tiết',
                        color: AppColors.primary,
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 16.0.h),
                  child: Divider(height: 1.h, color: AppColors.grayLight),
                ),
                // Stats Grid
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildStatItem(
                      icon: Icons.trending_up_rounded,
                      iconBgColor: AppColors.primaryLight,
                      iconColor: AppColors.primary,
                      label: 'Tiến độ chung',
                      value: '72%',
                      subLabel: '↑ 12%',
                      subLabelColor: AppColors.success,
                      subDesc: 'so với tháng trước',
                    ),
                    _buildStatItem(
                      icon: Icons.star_rounded,
                      iconBgColor: const Color(0xFFE5F9E7),
                      iconColor: const Color(0xFF34C759),
                      label: 'Kỹ năng đạt được',
                      value: '18',
                      subLabel: 'kỹ năng mới',
                      subLabelColor: AppColors.grayMedium,
                      subDesc: '',
                    ),
                    _buildStatItem(
                      icon: Icons.calendar_today_rounded,
                      iconBgColor: AppColors.primaryLight,
                      iconColor: AppColors.primary,
                      label: 'Buổi học',
                      value: '12/14',
                      subLabel: '↑ 85%',
                      subLabelColor: AppColors.primary,
                      subDesc: '',
                      hasProgressBar: true,
                      progressValue: 12 / 14,
                    ),
                    _buildStatItem(
                      icon: Icons.thumb_up_rounded,
                      iconBgColor: const Color(0xFFE6F2FF),
                      iconColor: const Color(0xFF007AFF),
                      label: 'Mức độ hợp tác',
                      value: 'Tốt',
                      subLabel: '👍',
                      subLabelColor: AppColors.grayDark,
                      subDesc: 'Giáo viên đánh giá',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatItem({
    required IconData icon,
    required Color iconBgColor,
    required Color iconColor,
    required String label,
    required String value,
    required String subLabel,
    required Color subLabelColor,
    required String subDesc,
    bool hasProgressBar = false,
    double progressValue = 0,
  }) {
    return Expanded(
      child: Column(
        children: [
          Container(
            width: 36.w,
            height: 36.h,
            decoration: BoxDecoration(
              color: iconBgColor,
              shape: BoxShape.circle,
            ),
            child: Icon(icon, size: 18, color: iconColor),
          ),
          SizedBox(height: 8.h),
          AppText.b2(
            label,
            fontSize: 10.sp,
            color: AppColors.grayDark,
            fontWeight: FontWeight.w600,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 4.h),
          AppText.h2(
            value,
            fontSize: 16.sp,
            fontWeight: FontWeight.bold,
            color: AppColors.grayDark,
          ),
          SizedBox(height: 4.h),
          if (hasProgressBar) ...[
            AppText.b2(
              subLabel,
              fontSize: 10.sp,
              color: subLabelColor,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(height: 4.h),
            Container(
              width: 40.w,
              height: 4.h,
              decoration: BoxDecoration(
                color: AppColors.primaryLight,
                borderRadius: BorderRadius.circular(2.r),
              ),
              child: FractionallySizedBox(
                alignment: Alignment.centerLeft,
                widthFactor: progressValue,
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.circular(2.r),
                  ),
                ),
              ),
            ),
          ] else ...[
            AppText.b2(
              subLabel,
              fontSize: 10.sp,
              color: subLabelColor,
              fontWeight: FontWeight.w500,
            ),
            if (subDesc.isNotEmpty)
              AppText.b2(
                subDesc,
                fontSize: 9.sp,
                color: AppColors.grayMedium,
                textAlign: TextAlign.center,
              ),
          ],
        ],
      ),
    );
  }

  Widget _buildNotifications() {
    return Padding(
      padding: EdgeInsets.fromLTRB(16, 24, 16, 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppText.h2(
                'Thông báo mới',
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
                color: AppColors.grayDark,
              ),
            ],
          ),
          SizedBox(height: 16.h),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.r),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.04),
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              children: [
                _buildNotificationItem(
                  icon: Icons.chat_bubble_rounded,
                  iconColor: AppColors.primary,
                  iconBgColor: AppColors.primaryLight,
                  title: 'Nhận xét của giáo viên',
                  subtitle: 'Cô Trần Thị Mai đã gửi nhận xét mới',
                  time: '1 giờ trước',
                ),
                Divider(height: 1.h, color: AppColors.grayLight, indent: 64),
                _buildNotificationItem(
                  icon: Icons.calendar_today_rounded,
                  iconColor: const Color(0xFFE76F51),
                  iconBgColor: const Color(0xFFFBE4DF),
                  title: 'Lịch học sắp tới',
                  subtitle: 'Buổi học ngày mai: 09:00 - 10:00',
                  time: '2 giờ trước',
                ),
                Divider(height: 1.h, color: AppColors.grayLight, indent: 64),
                _buildNotificationItem(
                  icon: Icons.assignment_rounded,
                  iconColor: const Color(0xFF34C759),
                  iconBgColor: const Color(0xFFE5F9E7),
                  title: 'Bài tập về nhà',
                  subtitle:
                      '${_selectedStudent?.fullName ?? 'Bé'} có 1 hoạt động cần hoàn thành',
                  time: 'Hôm qua',
                  showBorder: false,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNotificationItem({
    required IconData icon,
    required Color iconColor,
    required Color iconBgColor,
    required String title,
    required String subtitle,
    required String time,
    bool showBorder = true,
  }) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: EdgeInsets.all(16.0.w),
        child: Row(
          children: [
            Container(
              width: 44.w,
              height: 44.h,
              decoration: BoxDecoration(
                color: iconBgColor,
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: Icon(icon, color: iconColor, size: 24),
            ),
            SizedBox(width: 16.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText.h2(
                    title,
                    fontSize: 13.sp,
                    fontWeight: FontWeight.bold,
                    color: AppColors.grayDark,
                  ),
                  SizedBox(height: 4.h),
                  AppText.b2(
                    subtitle,
                    fontSize: 11.sp,
                    color: AppColors.grayMedium,
                    maxLines: 1,
                    textOverflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            SizedBox(width: 12.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                AppText.b2(time, fontSize: 10.sp, color: AppColors.grayMedium),
                SizedBox(height: 4.h),
                Icon(
                  Icons.chevron_right_rounded,
                  color: AppColors.grayMedium,
                  size: 20,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
