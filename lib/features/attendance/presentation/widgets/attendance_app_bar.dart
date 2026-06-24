import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';

/// AppBar thu gọn khi scroll — dùng trong [NestedScrollView.headerSliverBuilder].
class AttendanceSliverAppBar extends StatelessWidget {
  const AttendanceSliverAppBar({
    super.key,
    required this.onBack,
    this.className = 'Lớp Mầm 2 - SUNFLOWER',
  });

  final VoidCallback onBack;
  final String className;

  static const _classSlot = 54.0;

  @override
  Widget build(BuildContext context) {
    final top = MediaQuery.paddingOf(context).top;

    return SliverAppBar(
      expandedHeight: top + kToolbarHeight + _classSlot.h,
      collapsedHeight: top + kToolbarHeight,
      toolbarHeight: kToolbarHeight,
      pinned: true,
      elevation: 0,
      scrolledUnderElevation: 0,
      backgroundColor: AppColors.primary,
      surfaceTintColor: Colors.transparent,
      automaticallyImplyLeading: false,
      flexibleSpace: LayoutBuilder(
        builder: (context, constraints) {
          final collapsed = top + kToolbarHeight;
          final t = ((constraints.maxHeight - collapsed) / _classSlot.h).clamp(
            0.0,
            1.0,
          );

          return ColoredBox(
            color: AppColors.primary,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: top),
                SizedBox(
                  height: kToolbarHeight,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.w),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Material(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8.r),
                            child: InkWell(
                              onTap: onBack,
                              borderRadius: BorderRadius.circular(8.r),
                              child: SizedBox(
                                width: 36.w,
                                height: 36.w,
                                child: Icon(
                                  Icons.arrow_back_ios_new_rounded,
                                  size: 16.w,
                                  color: AppColors.grayDark,
                                ),
                              ),
                            ),
                          ),
                        ),
                        AppText.b1(
                          'Điểm danh',
                          color: Colors.white,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w700,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
                if (t > 0)
                  Expanded(
                    child: Opacity(
                      opacity: t,
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 12.h),
                          child: _ClassChip(className: className),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class _ClassChip extends StatelessWidget {
  const _ClassChip({required this.className});

  final String className;

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.sizeOf(context).width - 32.w,
        ),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
          decoration: BoxDecoration(
            color: Colors.white.withValues(alpha: 0.14),
            borderRadius: BorderRadius.circular(8.r),
            border: Border.all(color: Colors.white.withValues(alpha: 0.18)),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                Icons.school_outlined,
                size: 12.w,
                color: Colors.white.withValues(alpha: 0.85),
              ),
              SizedBox(width: 6.w),
              Expanded(
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Lớp · ',
                        style: TextStyle(
                          color: Colors.white.withValues(alpha: 0.65),
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w700,
                          height: 1.25,
                        ),
                      ),
                      TextSpan(
                        text: className,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w700,
                          height: 1.25,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
