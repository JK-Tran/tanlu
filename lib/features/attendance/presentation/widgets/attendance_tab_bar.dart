import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';

/// Tab chính — segmented control trên nền xám, phân tầng rõ với filter tab con.
class AttendanceTabBar extends StatelessWidget {
  const AttendanceTabBar({
    super.key,
    required this.controller,
    required this.pendingLeaveCount,
  });

  final TabController controller;
  final int pendingLeaveCount;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: AppColors.grayBg,
      child: Padding(
        padding: EdgeInsets.fromLTRB(12.w, 8.h, 12.w, 10.h),
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: AppColors.grayLight.withValues(alpha: 0.35),
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Padding(
            padding: EdgeInsets.all(3.w),
            child: TabBar(
              controller: controller,
              tabAlignment: TabAlignment.fill,
              labelColor: Colors.white,
              unselectedLabelColor: AppColors.grayDark80,
              indicatorSize: TabBarIndicatorSize.tab,
              dividerColor: Colors.transparent,
              labelPadding: EdgeInsets.zero,
              splashFactory: NoSplash.splashFactory,
              overlayColor: WidgetStateProperty.all(Colors.transparent),
              indicator: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(8.r),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.primary.withValues(alpha: 0.25),
                    blurRadius: 4,
                    offset: const Offset(0, 1),
                  ),
                ],
              ),
              tabs: [
                _tab(0, Icons.checklist_rounded, 'Điểm danh'),
                _tab(
                  1,
                  Icons.assignment_return_rounded,
                  'Xin phép',
                  badge: pendingLeaveCount,
                ),
                _tab(2, Icons.history_rounded, 'Lịch sử'),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Tab _tab(int index, IconData icon, String label, {int badge = 0}) {
    return Tab(
      height: 38.h,
      child: ListenableBuilder(
        listenable: controller,
        builder: (context, _) {
          final selected = controller.index == index;
          final color = selected ? Colors.white : AppColors.grayDark80;

          return Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 16.w, color: color),
              SizedBox(width: 4.w),
              Flexible(
                child: Text(
                  label,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: color,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              if (badge > 0) ...[
                SizedBox(width: 3.w),
                Container(
                  width: 15.w,
                  height: 15.w,
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    '$badge',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ],
          );
        },
      ),
    );
  }
}

class AttendanceTabBarDelegate extends SliverPersistentHeaderDelegate {
  AttendanceTabBarDelegate({required this.child});

  final Widget child;

  @override
  double get minExtent => 56.h;

  @override
  double get maxExtent => 56.h;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return child;
  }

  @override
  bool shouldRebuild(covariant AttendanceTabBarDelegate oldDelegate) {
    return oldDelegate.child != child;
  }
}
