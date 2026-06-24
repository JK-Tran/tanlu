import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_surface_card.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/features/app/presentation/bloc/app_bloc.dart';
import 'package:tanlu_management/features/attendance/presentation/widgets/attendance_avatar.dart';

class ComposeCard extends StatelessWidget {
  const ComposeCard({super.key, required this.onTap, this.onLibraryTap});

  final VoidCallback onTap;
  final VoidCallback? onLibraryTap;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBloc, AppState>(
      builder: (context, appState) {
        final user = appState.mapOrNull(authenticated: (s) => s.user);
        final displayName = user?.fullName.isNotEmpty == true
            ? user!.fullName
            : 'Giáo viên';

        return AppSurfaceCard(
          margin: EdgeInsets.fromLTRB(16.w, 0, 16.w, 12.h),
          padding: EdgeInsets.zero,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(10.w, 10.h, 10.w, 8.h),
                child: Row(
                  children: [
                    AttendanceAvatar(
                      nickname: displayName,
                      imageUrl: user?.avatar,
                      size: 40,
                    ),
                    SizedBox(width: 10.w),
                    Expanded(
                      child: Material(
                        color: AppColors.grayVeryLight,
                        borderRadius: BorderRadius.circular(24.r),
                        child: InkWell(
                          onTap: onTap,
                          borderRadius: BorderRadius.circular(24.r),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 14.w,
                              vertical: 10.h,
                            ),
                            child: AppText.b1(
                              'Hôm nay lớp mình có gì vui?',
                              color: AppColors.grayMedium,
                              fontSize: 12.sp,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                height: 1,
                thickness: 1,
                color: AppColors.grayLight.withValues(alpha: 0.45),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
                child: _LibraryAction(onTap: onLibraryTap ?? onTap),
              ),
            ],
          ),
        );
      },
    );
  }
}

class _LibraryAction extends StatelessWidget {
  const _LibraryAction({required this.onTap});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: AppSurfaceCard.decoration(),
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(8.r),
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(8.r),
          splashColor: AppColors.primary.withValues(alpha: 0.12),
          highlightColor: AppColors.grayVeryLight,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  CupertinoIcons.photo_on_rectangle,
                  size: 18.w,
                  color: AppColors.success,
                ),
                SizedBox(width: 6.w),
                AppText.b2(
                  'Thư viện ảnh',
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.grayDark,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
