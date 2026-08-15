import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:tanlu_management/core/router/app_router.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/l10n/l10n.dart';

class OverviewActionCard extends StatelessWidget {
  const OverviewActionCard({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.1),
            blurRadius: 5,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                splashColor: const Color(0xFFFF5B71).withValues(alpha: 0.1),
                highlightColor: const Color(0xFFFF5B71).withValues(alpha: 0.1),
                borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(8.r),
                ),
                onTap: () => context.push(AppRouter.attendance),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Transform.scale(
                      scale: 1.4,
                      child: Image.asset(
                        'assets/images/overview/img-call-reroll.png',
                        width: 36.w,
                        height: 36.w,
                      ),
                    ),

                    AppText.b1(
                      context.l10n.attendanceTitle,
                      color: AppColors.grayDark,
                      fontWeight: FontWeight.w600,
                      fontSize: 12.sp,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 12.h),
            child: VerticalDivider(
              width: 1,
              color: Colors.grey.withValues(alpha: 0.2),
            ),
          ),
          Expanded(
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                splashColor: const Color(0xFFFF5B71).withValues(alpha: 0.1),
                highlightColor: const Color(0xFFFF5B71).withValues(alpha: 0.1),
                borderRadius: BorderRadius.horizontal(
                  right: Radius.circular(8.r),
                ),
                onTap: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Transform.scale(
                      scale: 1.4,
                      child: Image.asset(
                        'assets/images/overview/img-evaluate.png',
                        width: 36.w,
                        height: 36.w,
                      ),
                    ),
                    SizedBox(width: 4.w),
                    AppText.b1(
                      context.l10n.overviewEvaluate,
                      color: AppColors.grayDark,
                      fontWeight: FontWeight.w600,
                      fontSize: 12.sp,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
