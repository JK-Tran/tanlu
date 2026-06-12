import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tanlu_management/core/base/base_page_state.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/features/app/presentation/bloc/app_bloc.dart';

import 'package:tanlu_management/features/student/presentation/bloc/student_bloc.dart';
import 'package:tanlu_management/core/widgets/app_refresh_list.dart';
import 'package:tanlu_management/core/widgets/app_sticky_header_delegate.dart';
import '../widgets/student_list/student_list.dart';
import 'package:tanlu_management/core/widgets/app_search_bar.dart';

class StudentPage extends StatefulWidget {
  const StudentPage({super.key});

  @override
  State<StudentPage> createState() => _StudentPageState();
}

class _StudentPageState extends BasePageState<StudentPage, StudentBloc> {
  final TextEditingController _searchController = TextEditingController();
  String _searchQuery = '';

  @override
  void initState() {
    super.initState();
    bloc.add(const StudentStarted());
    _searchController.addListener(() {
      setState(() => _searchQuery = _searchController.text.toLowerCase());
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget buildPage(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white, // Clean, light background
      body: SafeArea(
        bottom: false,
        child: AppRefreshList(
          isLoading: false,
          isEmpty: false,
          onRefresh: () async {
            bloc.add(const RefreshStudents());
            await Future.delayed(const Duration(milliseconds: 600));
          },
          child: CustomScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Header (Avatar, Greeting, Bell)
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16.0.w,
                        vertical: 12.0.h,
                      ),
                      child: BlocBuilder<AppBloc, AppState>(
                        builder: (context, appState) {
                          final currentUser = appState.mapOrNull(
                            authenticated: (s) => s.user,
                          );
                          final displayName =
                              currentUser?.fullName.isNotEmpty == true
                              ? currentUser!.fullName
                              : 'Giáo viên';

                          return Row(
                            children: [
                              Container(
                                width: 48.w,
                                height: 48.h,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 2.w,
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withValues(
                                        alpha: 0.05,
                                      ),
                                      blurRadius: 8,
                                      offset: const Offset(0, 2),
                                    ),
                                  ],
                                ),
                                child:
                                    currentUser?.avatarFileId.isNotEmpty == true
                                    ? ClipOval(
                                        child: Image.network(
                                          currentUser!.avatarFileId,
                                          width: 48.w,
                                          height: 48.h,
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
                              SizedBox(width: 6.w),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    AppText.b2(
                                      'Xin chào 👋',
                                      color: const Color(0xFF8E8E93),
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    AppText.h2(
                                      displayName,
                                      color: const Color(0xFF1E1E2D),
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.bold,
                                      maxLines: 1,
                                      textOverflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 44.w,
                                height: 44.h,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withValues(
                                        alpha: 0.03,
                                      ),
                                      blurRadius: 8,
                                      offset: const Offset(0, 2),
                                    ),
                                  ],
                                ),
                                child: IconButton(
                                  icon: Icon(
                                    Icons.notifications_outlined,
                                    color: Color(0xFF1E1E2D),
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),

                    // Banner
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0.w),
                      child: BlocBuilder<AppBloc, AppState>(
                        builder: (context, appState) {
                          final currentUser = appState.mapOrNull(
                            authenticated: (s) => s.user,
                          );
                          final centerName =
                              currentUser?.center.name.isNotEmpty == true
                              ? currentUser!.center.name
                              : 'Quản lý học sinh';

                          return Container(
                            width: double.infinity,
                            height: 170.h, // Fixed height for banner
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                colors: [AppColors.primary, AppColors.accent],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                              borderRadius: BorderRadius.circular(24.r),
                              boxShadow: [
                                BoxShadow(
                                  color: AppColors.primary.withValues(
                                    alpha: 0.3,
                                  ),
                                  blurRadius: 15,
                                  offset: const Offset(0, 6),
                                ),
                              ],
                            ),
                            child: Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Positioned(
                                  right: 0.w,
                                  top: 5.h,
                                  child: Opacity(
                                    opacity: 0.9,
                                    child: Transform.scale(
                                      scale: 1,
                                      child: Image.asset(
                                        'assets/icons/ic_balloon.png',
                                        width: 70.w,
                                      ),
                                    ),
                                  ),
                                ),

                                Positioned(
                                  left: 10.w,
                                  top: -2.h,
                                  child: Opacity(
                                    opacity: 1,
                                    child: Transform.scale(
                                      scale: 0.8,
                                      child: Image.asset(
                                        'assets/icons/ic-balloons.png',
                                        width: 60.w,
                                        errorBuilder:
                                            (context, error, stackTrace) =>
                                                SizedBox(),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  right: 40.w,
                                  bottom: 0.h,
                                  child: Transform.scale(
                                    scale: 1.6,
                                    child: Image.asset(
                                      'assets/images/img-banner.png',
                                      width: 130.w, // Adjust based on asset
                                      errorBuilder:
                                          (context, error, stackTrace) =>
                                              SizedBox(),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 20.0.w,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      AppText.h2(
                                        centerName,
                                        color: Colors.white,
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.bold,
                                        maxLines: 2,
                                        textOverflow: TextOverflow.ellipsis,
                                      ),
                                      SizedBox(height: 8.h),
                                      SizedBox(
                                        width: 180.w,
                                        child: AppText.b2(
                                          'Đồng hành cùng bé phát triển\ntoàn diện mỗi ngày',
                                          color: AppColors.grayVeryLight,
                                          fontSize: 12.sp,
                                        ),
                                      ),

                                      SizedBox(height: 12.h),
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 16.w,
                                          vertical: 6.h,
                                        ),
                                        decoration: BoxDecoration(
                                          color: AppColors.warning,
                                          borderRadius: BorderRadius.circular(
                                            6,
                                          ),
                                        ),
                                        child: AppText.b2(
                                          'Thấu hiểu & Tận tình',
                                          color: Colors.white,
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 12.h),
                  ],
                ),
              ),

              SliverPersistentHeader(
                pinned: true,
                delegate: AppStickyHeaderDelegate(
                  height: 100.h,
                  child: Container(
                    color: AppColors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Title "Danh sách học sinh"
                        SizedBox(height: 8.h),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.0.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AppText.h1(
                                'Danh sách học sinh',
                                color: const Color(0xFF1E1E2D),
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w800,
                              ),
                            ],
                          ),
                        ),
                        // Search Bar
                        SizedBox(height: 12.h),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.0.w),
                          child: AppSearchBar(
                            controller: _searchController,
                            hintText: 'Tìm kiếm tên trẻ, phụ huynh, nhóm...',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              // List
              StudentList(searchQuery: _searchQuery),
              SliverPadding(padding: EdgeInsets.only(bottom: 24.h)),
            ],
          ),
        ),
      ),
    );
  }
}
