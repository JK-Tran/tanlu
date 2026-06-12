import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/features/app/presentation/bloc/app_bloc.dart';
import 'package:tanlu_management/shared/utils/string_utils.dart';

class OverviewBanner extends StatelessWidget {
  const OverviewBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBloc, AppState>(
      builder: (context, appState) {
        final currentUser = appState.mapOrNull(authenticated: (s) => s.user);
        final displayName = currentUser?.fullName.isNotEmpty == true
            ? currentUser!.fullName
            : 'Giáo viên';

        final className = currentUser?.center.name.isNotEmpty == true
            ? currentUser!.center.name
            : 'Lớp Can Thiệp 1';

        return Container(
          width: double.infinity,
          height: 180.h,
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [AppColors.primaryLight, AppColors.white],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),

            boxShadow: [
              BoxShadow(
                color: AppColors.primary.withValues(alpha: 0.1),
                blurRadius: 5,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Nội dung Text bên trái
              Expanded(
                flex: 6,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Lời chào
                    AppText.h2(
                      'Xin chào, $displayName 👋',
                      color: AppColors.grayDark,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                      maxLines: 1,
                      textOverflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: 4.h),

                    // Tên lớp / Trung tâm
                    AppText.b2(
                      className,
                      color: AppColors.grayMedium,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(height: 16.h),

                    // Ngày tháng
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 12.w,
                        vertical: 8.h,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(6.r),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withValues(alpha: 0.05),
                            blurRadius: 10,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.calendar_month_rounded,
                            size: 16.w,
                            color: AppColors.grayDark,
                          ),
                          SizedBox(width: 8.w),
                          AppText.b2(
                            StringUtils.getFormattedDate(),
                            color: AppColors.grayDark,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              // Ảnh trang trí bên phải
              Expanded(
                flex: 5,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 16.h),
                  child: Transform.scale(
                    scale: 1.4,
                    child: Image.asset(
                      'assets/images/img-banner-overview.png',
                      fit: BoxFit.contain,
                      errorBuilder: (context, error, stackTrace) =>
                          const SizedBox(),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
