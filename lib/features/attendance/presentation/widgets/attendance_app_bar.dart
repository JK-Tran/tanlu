import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';

/// AppBar nhỏ gọn, cố định — dùng trong [NestedScrollView.headerSliverBuilder].
class AttendanceSliverAppBar extends StatelessWidget {
  const AttendanceSliverAppBar({
    super.key,
    required this.onBack,
    this.className = '',
  });

  final VoidCallback onBack;
  final String className;

  @override
  Widget build(BuildContext context) {
    final top = MediaQuery.paddingOf(context).top;

    return SliverAppBar(
      pinned: true,
      floating: false,
      snap: false,
      elevation: 0,
      scrolledUnderElevation: 0,
      toolbarHeight: kToolbarHeight,
      expandedHeight: kToolbarHeight,
      backgroundColor: AppColors.primary,
      surfaceTintColor: Colors.transparent,
      automaticallyImplyLeading: false,
      flexibleSpace: FlexibleSpaceBar(
        collapseMode: CollapseMode.none,
        background: ColoredBox(
          color: AppColors.primary,
          child: Column(
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
            ],
          ),
        ),
      ),
    );
  }
}
