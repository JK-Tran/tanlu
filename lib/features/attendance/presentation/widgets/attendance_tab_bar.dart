import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';

/// Tab chính — segmented control nổi trên nền xám.
class AttendanceTabBar extends StatelessWidget {
  const AttendanceTabBar({
    super.key,
    required this.controller,
    required this.pendingLeaveCount,
  });

  final TabController controller;
  final int pendingLeaveCount;

  /// Chiều cao header — khớp padding + tab + viền cho SliverPersistentHeader.
  static double get headerExtent =>
      12.h + 12.h + 4.h + 4.h + 40.h + 2;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: AppColors.grayBg,
      child: Padding(
        padding: EdgeInsets.fromLTRB(16.w, 12.h, 16.w, 12.h),
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.r),
            border: Border.all(
              color: AppColors.grayLight.withValues(alpha: 0.85),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.1),
                blurRadius: 5,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 4.h),
            child: TabBar(
              controller: controller,
              tabAlignment: TabAlignment.fill,
              labelColor: AppColors.grayDark80,
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
                    color: AppColors.primary.withValues(alpha: 0.4),
                    blurRadius: 8,
                    offset: const Offset(0, 2),
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
      height: 40.h,
      child: ListenableBuilder(
        listenable: Listenable.merge([controller, controller.animation!]),
        builder: (context, _) {
          // Đồng bộ màu chữ với indicator — tránh chữ trắng trên nền trắng lúc đang chuyển tab
          final selected = controller.animation!.value.round() == index;
          final color = selected ? Colors.white : AppColors.grayDark;

          return Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 17.w, color: color),
              SizedBox(width: 5.w),
              Flexible(
                child: Text(
                  label,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: color,
                    fontSize: 12.sp,
                    fontWeight: selected ? FontWeight.w800 : FontWeight.w600,
                  ),
                ),
              ),
              if (badge > 0) ...[
                SizedBox(width: 4.w),
                Container(
                  constraints: BoxConstraints(minWidth: 16.w, minHeight: 16.w),
                  padding: EdgeInsets.symmetric(horizontal: 3.w),
                  decoration: BoxDecoration(
                    color: selected ? Colors.white : AppColors.primary,
                    shape: BoxShape.circle,
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    badge > 99 ? '99+' : '$badge',
                    style: TextStyle(
                      color: selected ? AppColors.primary : Colors.white,
                      fontSize: 9.sp,
                      fontWeight: FontWeight.w800,
                      height: 1,
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
  AttendanceTabBarDelegate({
    required this.child,
    required this.extent,
  });

  final Widget child;
  final double extent;

  @override
  double get minExtent => extent;

  @override
  double get maxExtent => extent;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return SizedBox(height: extent, child: child);
  }

  @override
  bool shouldRebuild(covariant AttendanceTabBarDelegate oldDelegate) {
    return oldDelegate.child != child || oldDelegate.extent != extent;
  }
}
