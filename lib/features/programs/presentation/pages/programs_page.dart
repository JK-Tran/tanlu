import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tanlu_management/core/base/base_page_state.dart';
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
      backgroundColor: const Color(0xFFF5F5FA),
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
                          color: Colors.white,
                          child: _buildHeader(),
                        ),
                      ),
                      SliverPersistentHeader(
                        pinned: true,
                        delegate: AppStickyHeaderDelegate(
                          child: Container(
                            color: Colors.white,
                            padding: EdgeInsets.fromLTRB(20, 0, 20, 14),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                AppText.h1(
                                  'Danh sách giáo trình',
                                  color: const Color(0xFF1E1E2D),
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w800,
                                ),
                                SizedBox(height: 12.h),
                                AppSearchBar(
                                  controller: _searchController,
                                  hintText: 'Tìm kiếm giáo trình...',
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
                      SliverPadding(padding: EdgeInsets.only(bottom: 24.h)),
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
      padding: EdgeInsets.fromLTRB(20, 12, 0, 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText.b1(
                  'Giáo trình',
                  fontSize: 28.sp,
                  fontWeight: FontWeight.w900,
                  color: const Color(0xFF1E293B),
                ),
                SizedBox(height: 6.h),
                AppText.b1(
                  'Khám phá kiến thức – Nâng cao mỗi ngày ✨',
                  fontSize: 13.sp,
                  color: const Color(0xFF94A3B8),
                ),
              ],
            ),
          ),
          Transform.scale(
            scale: 2,
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
