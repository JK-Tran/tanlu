import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tanlu_management/core/base/base_page_state.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/features/programs/presentation/bloc/programs_bloc.dart';
import 'package:tanlu_management/features/programs/presentation/widgets/programs_body.dart';
import 'package:tanlu_management/core/widgets/app_refresh_list.dart';
import 'package:tanlu_management/core/widgets/app_sticky_header_delegate.dart';
import 'package:tanlu_management/core/widgets/app_search_bar.dart';

class ProgramsPage extends StatefulWidget {
  const ProgramsPage({super.key});

  @override
  State<ProgramsPage> createState() => _ProgramsPageState();
}

class _ProgramsPageState extends BasePageState<ProgramsPage, ProgramsBloc> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    bloc.add(const ProgramsStarted());
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget buildPage(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        bottom: false,
        child: BlocBuilder<ProgramsBloc, ProgramsState>(
          builder: (context, state) {
            return ValueListenableBuilder<TextEditingValue>(
              valueListenable: _searchController,
              builder: (context, searchValue, _) {
                final query = searchValue.text.toLowerCase();
                final filtered = state.programs.where((p) {
                  if (query.isEmpty) return true;
                  return p.title.toLowerCase().contains(query) ||
                      p.description.toLowerCase().contains(query);
                }).toList();

                return AppRefreshList(
                  isLoading: false,
                  isEmpty: false,
                  onRefresh: () async {
                    bloc.add(const FetchPrograms());
                    await Future.delayed(const Duration(milliseconds: 600));
                  },
                  child: CustomScrollView(
                    physics: const AlwaysScrollableScrollPhysics(),
                    slivers: [
                      SliverToBoxAdapter(
                        child: Container(
                          decoration: BoxDecoration(
                            color: AppColors.primary,
                            borderRadius: BorderRadius.vertical(
                              bottom: Radius.circular(24.r),
                            ),
                          ),
                          child: _buildHeader(),
                        ),
                      ),
                      SliverPersistentHeader(
                        pinned: true,
                        delegate: AppStickyHeaderDelegate(
                          height: 70.h,
                          child: Container(
                            color: AppColors.white,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 16.h),
                                // Padding(
                                //   padding: EdgeInsets.symmetric(
                                //     horizontal: 16.w,
                                //   ),
                                //   child: AppText.h1(
                                //     'Danh sách giáo trình',
                                //     color: const Color(0xFF1E1E2D),
                                //     fontSize: 16.sp,
                                //     fontWeight: FontWeight.w800,
                                //   ),
                                // ),
                                // SizedBox(height: 8.h),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 16.w,
                                  ),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: AppSearchBar(
                                          controller: _searchController,
                                          hintText: 'Tìm kiếm giáo trình...',
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      ...ProgramsBodySlivers.build(
                        isLoading: state.isLoading,
                        pageError: state.pageError,
                        programs: filtered,
                        onRetry: () => bloc.add(const FetchPrograms()),
                      ),
                    ],
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Padding(
      padding: EdgeInsets.fromLTRB(16, 0, 0, 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText.b1(
                  'Giáo trình',
                  fontSize: 26.sp,
                  fontWeight: FontWeight.w900,
                  color: AppColors.white,
                ),
                SizedBox(height: 6.h),
                AppText.b1(
                  'Khám phá kiến thức – Nâng cao mỗi ngày ✨',
                  fontSize: 11.sp,
                  color: AppColors.grayVeryLight,
                ),
              ],
            ),
          ),
          Transform.scale(
            scale: 2.2,
            child: Image.asset(
              'assets/images/img-programs.png',
              width: 120.w,
              height: 120.h,
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}
