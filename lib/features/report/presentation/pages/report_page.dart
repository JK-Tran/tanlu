import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tanlu_management/core/base/base_page_state.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/features/report/presentation/bloc/report_bloc.dart';
import 'package:tanlu_management/features/report/presentation/widgets/report_body.dart';
import 'package:tanlu_management/core/widgets/app_refresh_list.dart';
import 'package:tanlu_management/core/widgets/app_sticky_header_delegate.dart';
import 'package:go_router/go_router.dart';
import 'package:tanlu_management/features/report/presentation/pages/report_detail_page.dart';
import 'package:tanlu_management/core/widgets/app_search_bar.dart';

class ReportPage extends StatefulWidget {
  const ReportPage({super.key});

  @override
  State<ReportPage> createState() => _ReportPageState();
}

class _ReportPageState extends BasePageState<ReportPage, ReportBloc> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    bloc.add(const ReportStarted());
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  String _formatDisplayMonth(String yyyyMM) {
    final parts = yyyyMM.split('-');
    if (parts.length == 2) return '${parts[1]}/${parts[0]}';
    return yyyyMM;
  }

  void _showMonthPicker(BuildContext context, String currentMonthStr) {
    final parts = currentMonthStr.split('-');
    DateTime selectedDate = parts.length == 2
        ? DateTime(
            int.tryParse(parts[0]) ?? DateTime.now().year,
            int.tryParse(parts[1]) ?? DateTime.now().month,
          )
        : DateTime.now();

    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24.r)),
      ),
      builder: (ctx) {
        return SizedBox(
          height: 320.h,
          child: Column(
            children: [
              // Handle bar
              SizedBox(height: 12.h),
              Container(
                width: 40.w,
                height: 4.h,
                decoration: BoxDecoration(
                  color: AppColors.grayLight,
                  borderRadius: BorderRadius.circular(100.r),
                ),
              ),
              SizedBox(height: 12.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () => Navigator.pop(ctx),
                      child: AppText.b0('Hủy', color: AppColors.grayMedium),
                    ),
                    AppText.t1(
                      'Chọn tháng',
                      color: AppColors.grayDark,
                      fontWeight: FontWeight.bold,
                    ),
                    TextButton(
                      onPressed: () {
                        final newMonth =
                            '${selectedDate.year}-${selectedDate.month.toString().padLeft(2, '0')}';
                        bloc.add(SelectReportMonth(newMonth));
                        Navigator.pop(ctx);
                      },
                      child: AppText.b0(
                        'Xong',
                        color: AppColors.primary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Divider(height: 1.h),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: CupertinoPicker(
                        scrollController: FixedExtentScrollController(
                          initialItem: selectedDate.month - 1,
                        ),
                        itemExtent: 40,
                        onSelectedItemChanged: (i) =>
                            selectedDate = DateTime(selectedDate.year, i + 1),
                        children: List.generate(
                          12,
                          (i) => Center(
                            child: AppText.t2(
                              'Tháng ${i + 1}',
                              fontSize: 16.sp,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: CupertinoPicker(
                        scrollController: FixedExtentScrollController(
                          initialItem: selectedDate.year - 2020,
                        ),
                        itemExtent: 40,
                        onSelectedItemChanged: (i) => selectedDate = DateTime(
                          2020 + i,
                          selectedDate.month,
                        ),
                        children: List.generate(
                          20,
                          (i) => Center(
                            child: AppText.t2('${2020 + i}', fontSize: 16.sp),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  EdgeInsetsGeometry? get pagePadding => null;

  @override
  Widget buildPage(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FA),
      body: BlocBuilder<ReportBloc, ReportState>(
        builder: (context, state) {
          return ValueListenableBuilder<TextEditingValue>(
            valueListenable: _searchController,
            builder: (context, searchValue, _) {
              final query = searchValue.text.toLowerCase();
              final filteredStudents = state.students.where((s) {
                if (query.isEmpty) return true;
                return s.fullName.toLowerCase().contains(query);
              }).toList();

              final totalStudents = filteredStudents.length;
              int doneCount = 0;
              for (var student in filteredStudents) {
                if (state.reports.any((r) => r.studentId == student.id)) {
                  doneCount++;
                }
              }
              final missingCount = totalStudents - doneCount;

              return SafeArea(
                bottom: false,
                child: AppRefreshList(
                  isLoading: false,
                  isEmpty: false,
                  onRefresh: () async {
                    bloc.add(const RefreshReportData());
                    await Future.delayed(const Duration(milliseconds: 600));
                  },
                  child: CustomScrollView(
                    physics: const AlwaysScrollableScrollPhysics(),
                    slivers: [
                      SliverToBoxAdapter(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // ── Top Header ──────────────────────────────────────────
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 16.w,
                                vertical: 12.h,
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: AppText.h2(
                                      'Báo cáo',
                                      color: const Color(0xFF1C1C1E),
                                      fontWeight: FontWeight.w900,
                                      fontSize: 24.sp,
                                    ),
                                  ),
                                  _MonthPillButton(
                                    label: _formatDisplayMonth(
                                      state.selectedMonth,
                                    ),
                                    onTap: () => _showMonthPicker(
                                      context,
                                      state.selectedMonth,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            // ── Gradient Banner ──────────────────────────────────────
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16.w),
                              child: _ReportBanner(
                                totalStudents: totalStudents,
                                doneCount: doneCount,
                                missingCount: missingCount,
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
                            color: const Color(0xFFF8F9FA),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 12.h),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 16.0.w,
                                  ),
                                  child: Row(
                                    children: [
                                      AppText.h1(
                                        'Danh sách báo cáo',
                                        color: const Color(0xFF1E1E2D),
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 8.h),

                                // ── Search Bar ───────────────────────────────────────────
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 16.w,
                                  ),
                                  child: AppSearchBar(
                                    controller: _searchController,
                                    hintText: 'Tìm kiếm học sinh...',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),

                      // ── Student List ─────────────────────────────────────────
                      ReportBody(
                        isLoading: state.isLoading,
                        pageError: state.pageError,
                        students: filteredStudents,
                        reports: state.reports,
                        selectedMonth: state.selectedMonth,
                        onRetry: () => bloc.add(const FetchReportData()),
                        onRefreshData: () =>
                            bloc.add(const RefreshReportData()),
                        onCardTap: (student, report) => context.pushNamed(
                          'report-detail',
                          extra: ReportDetailArgs(
                            student: student,
                            report: report,
                            selectedMonth: state.selectedMonth,
                            reportBloc: context.read<ReportBloc>(),
                          ),
                        ),
                      ),
                      SliverPadding(padding: EdgeInsets.only(bottom: 24.h)),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// Month Pill Button
// ─────────────────────────────────────────────────────────────────────────────
class _MonthPillButton extends StatelessWidget {
  const _MonthPillButton({required this.label, required this.onTap});

  final String label;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(100.r),
          border: Border.all(color: AppColors.grayLight, width: 1.5.w),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.04),
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.calendar_month_rounded,
              color: AppColors.grayMedium,
              size: 14.sp,
            ),
            SizedBox(width: 6.w),
            AppText.l0(
              label,
              color: AppColors.grayDark,
              fontWeight: FontWeight.w600,
              fontSize: 14.sp,
            ),
            SizedBox(width: 4.w),
            Icon(
              Icons.keyboard_arrow_down_rounded,
              color: AppColors.grayDark,
              size: 18,
            ),
          ],
        ),
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// Gradient Banner with decorations + 3 stat cards
// ─────────────────────────────────────────────────────────────────────────────
class _ReportBanner extends StatelessWidget {
  const _ReportBanner({
    required this.totalStudents,
    required this.doneCount,
    required this.missingCount,
  });

  final int totalStudents;
  final int doneCount;
  final int missingCount;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [AppColors.primary, AppColors.accent],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(24.r),
        boxShadow: [
          BoxShadow(
            color: AppColors.accent,
            blurRadius: 5,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Stack(
        children: [
          // Clouds – top-left
          Positioned(
            left: -10,
            top: -10,
            child: Opacity(
              opacity: 0.3,
              child: Transform.scale(
                scale: 1.4,
                child: Image.asset('assets/icons/ic-clouds.png', width: 100.w),
              ),
            ),
          ),

          // Stars – top-right
          Positioned(
            left: 20.w,
            bottom: -10,
            child: Opacity(
              opacity: 0.8,
              child: Transform.scale(
                scale: 1.3,
                child: Image.asset('assets/icons/ic_balloon.png', width: 55.w),
              ),
            ),
          ),
          // Book – bottom-right
          Positioned(
            right: 12.w,
            top: 0.h,
            child: Opacity(
              opacity: 1,
              child: Transform.scale(
                scale: 0.9,
                child: Image.asset('assets/images/img-report.png', width: 55.w),
              ),
            ),
          ),

          // Content
          Padding(
            padding: EdgeInsets.all(20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Title row with analysis icon
                Row(
                  children: [
                    Container(
                      width: 40.w,
                      height: 40.h,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(4.w),
                        child: Image.asset('assets/icons/ic-analysis.png'),
                      ),
                    ),
                    SizedBox(width: 12.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppText.b2(
                          'Tiến độ báo cáo',
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 16.sp,
                        ),
                        AppText.b2(
                          'Theo dõi báo cáo hàng tháng\ncủa học sinh',
                          color: AppColors.grayLight,
                          fontWeight: FontWeight.w400,
                          fontSize: 12.sp,
                          fontStyle: FontStyle.italic,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 16.h),
                // Stat chips row
                Row(
                  children: [
                    _StatChip(
                      count: totalStudents,
                      label: 'Tổng',
                      icon: Icons.groups_rounded,
                      color: Colors.white,
                    ),
                    SizedBox(width: 8.w),
                    _StatChip(
                      count: doneCount,
                      label: 'Đã có',
                      icon: Icons.check_circle_rounded,
                      color: const Color(0xFF4ADE80),
                    ),
                    SizedBox(width: 8.w),
                    _StatChip(
                      count: missingCount,
                      label: 'Chưa có',
                      icon: Icons.hourglass_top_rounded,
                      color: const Color(0xFFFBBF24),
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
}

class _StatChip extends StatelessWidget {
  const _StatChip({
    required this.count,
    required this.label,
    required this.icon,
    required this.color,
  });

  final int count;
  final String label;
  final IconData icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 4.h),
        decoration: BoxDecoration(
          color: Colors.white.withValues(alpha: 0.1),
          borderRadius: BorderRadius.circular(14.r),
          border: Border.all(
            color: Colors.white.withValues(alpha: 0.2),
            width: 2.w,
          ),
        ),
        child: Column(
          children: [
            Icon(icon, color: color, size: 16),
            SizedBox(height: 4.h),
            AppText.h2(
              count.toString(),
              color: Colors.white,
              fontWeight: FontWeight.w900,
              fontSize: 16.sp,
            ),
            AppText.b2(
              label,
              color: Colors.white,
              fontWeight: FontWeight.w700,
              fontSize: 12.sp,
            ),
          ],
        ),
      ),
    );
  }
}
