import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/core/widgets/shimmer_list.dart';
import 'package:tanlu_management/features/programs/domain/entity/program.dart';
import 'package:tanlu_management/features/programs/presentation/widgets/program_item.dart';

class ProgramsBodySlivers {
  static List<Widget> build({
    required bool isLoading,
    required String pageError,
    required List<Program> programs,
    required VoidCallback onRetry,
  }) {
    if (pageError.isNotEmpty && programs.isEmpty) {
      return [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Center(
            child: Padding(
              padding: EdgeInsets.all(32.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.wifi_off_rounded,
                    size: 56,
                    color: Color(0xFFB0B8C8),
                  ),
                  SizedBox(height: 16.h),
                  AppText.b1(
                    'Không thể tải dữ liệu',
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF64748B),
                  ),
                  SizedBox(height: 8.h),
                  AppText.b1(
                    pageError,
                    textAlign: TextAlign.center,
                    fontSize: 11.sp,
                    color: const Color(0xFFB0B8C8),
                  ),
                  SizedBox(height: 24.h),
                  ElevatedButton.icon(
                    onPressed: onRetry,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                    ),
                    icon: Icon(Icons.refresh_rounded, color: Colors.white),
                    label: AppText.b1('Thử lại', color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ),
      ];
    }

    if (isLoading && programs.isEmpty) {
      return [
        SliverPadding(
          padding: EdgeInsets.only(top: 20.h),
          sliver: SliverToBoxAdapter(child: ShimmerList()),
        ),
      ];
    }

    if (programs.isEmpty) {
      return [
        const SliverFillRemaining(
          hasScrollBody: false,
          child: ProgramsEmptyState(),
        ),
      ];
    }

    return [
      SliverPadding(
        padding: EdgeInsets.fromLTRB(20, 20, 20, 100),
        sliver: SliverList(
          delegate: SliverChildBuilderDelegate((context, index) {
            final program = programs[index];
            return Padding(
              padding: EdgeInsets.only(bottom: 16.h),
              child: ProgramItem(
                program: program,
                onTap: () => context.push('/program-detail', extra: program),
              ),
            );
          }, childCount: programs.length),
        ),
      ),
    ];
  }
}

class ProgramsEmptyState extends StatelessWidget {
  const ProgramsEmptyState({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 80.w,
            height: 80.h,
            decoration: BoxDecoration(
              color: AppColors.primary.withValues(alpha: 0.08),
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.menu_book_rounded,
              size: 40,
              color: AppColors.primary,
            ),
          ),
          SizedBox(height: 16.h),
          AppText.b1(
            'Không tìm thấy giáo trình',
            fontSize: 14.sp,
            fontWeight: FontWeight.w600,
            color: const Color(0xFF94A3B8),
          ),
          SizedBox(height: 6.h),
          AppText.b1(
            'Thử tìm kiếm với từ khoá khác',
            fontSize: 11.sp,
            color: const Color(0xFFB8C5D6),
          ),
        ],
      ),
    );
  }
}
