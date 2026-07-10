import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/features/attendance/presentation/widgets/attendance_avatar.dart';

class OverviewAvatarPreview {
  const OverviewAvatarPreview({required this.nickname, this.avatarUrl});

  final String nickname;
  final String? avatarUrl;
}

class OverviewProgressCard extends StatelessWidget {
  const OverviewProgressCard({
    super.key,
    required this.title,
    required this.iconPath,
    required this.primaryColor,
    required this.iconBgColor,
    required this.avatars,
    required this.currentValue,
    required this.totalValue,
    required this.statusText,
    required this.remainingText,
    this.imageScale = 1.4,
    required this.onTap,
    this.isLoading = false,
    this.badgeCount,
  });

  final String title;
  final String iconPath;
  final Color primaryColor;
  final Color iconBgColor;
  final List<OverviewAvatarPreview> avatars;
  final int currentValue;
  final int totalValue;
  final String statusText;
  final String remainingText;
  final double imageScale;
  final VoidCallback onTap;
  final bool isLoading;

  /// Số dùng cho badge "+N" trên avatar. Mặc định = [currentValue].
  final int? badgeCount;

  int get _extraCount {
    final base = badgeCount ?? currentValue;
    if (base <= avatars.length) return 0;
    return base - avatars.length;
  }

  @override
  Widget build(BuildContext context) {
    final progress = totalValue == 0 ? 0.0 : currentValue / totalValue;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(12.r),
          boxShadow: [
            BoxShadow(
              color: AppColors.black.withValues(alpha: 0.1),
              blurRadius: 5,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Material(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(12.r),
          child: InkWell(
            onTap: onTap,
            borderRadius: BorderRadius.circular(12.r),
            splashColor: primaryColor.withValues(alpha: 0.1),
            highlightColor: primaryColor.withValues(alpha: 0.05),
            child: Padding(
              padding: EdgeInsets.all(8.w),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 50.w,
                    height: 50.w,
                    decoration: BoxDecoration(
                      color: iconBgColor,
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    alignment: Alignment.center,
                    child: Transform.scale(
                      scale: imageScale,
                      child: Image.asset(
                        iconPath,
                        width: 50.w,
                        height: 50.w,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  SizedBox(width: 12.w),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  AppText.h2(
                                    title,
                                    color: AppColors.grayDark,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14.sp,
                                  ),
                                  SizedBox(height: 4.h),
                                  _buildAvatarRow(),
                                ],
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                if (isLoading)
                                  SizedBox(
                                    width: 18.w,
                                    height: 18.w,
                                    child: CircularProgressIndicator(
                                      strokeWidth: 2,
                                      color: primaryColor,
                                    ),
                                  )
                                else
                                  RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: '$currentValue',
                                          style: TextStyle(
                                            color: primaryColor,
                                            fontSize: 18.sp,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        TextSpan(
                                          text: '/$totalValue',
                                          style: TextStyle(
                                            color: AppColors.grayDark80,
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                SizedBox(height: 2.h),
                                AppText.b2(
                                  statusText,
                                  color: AppColors.grayMedium,
                                  fontSize: 11.sp,
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 10.h),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(4.r),
                          child: LinearProgressIndicator(
                            value: isLoading ? null : progress,
                            minHeight: 6.h,
                            backgroundColor: AppColors.grayLight,
                            valueColor: AlwaysStoppedAnimation<Color>(
                              primaryColor,
                            ),
                          ),
                        ),
                        SizedBox(height: 10.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AppText.b2(
                              remainingText,
                              color: AppColors.grayMedium,
                              fontSize: 12.sp,
                            ),
                            Container(
                              width: 24.w,
                              height: 24.w,
                              decoration: BoxDecoration(
                                color: primaryColor.withValues(alpha: 0.1),
                                shape: BoxShape.circle,
                              ),
                              alignment: Alignment.center,
                              child: Icon(
                                Icons.chevron_right,
                                size: 16.w,
                                color: primaryColor,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildAvatarRow() {
    if (isLoading) {
      return SizedBox(height: 28.r);
    }

    if (avatars.isEmpty && _extraCount == 0) {
      return AppText.b2(
        'Chưa có bé nào được điểm danh',
        color: AppColors.grayMedium,
        fontSize: 12.sp,
      );
    }

    return Row(
      children: [
        for (var i = 0; i < avatars.length; i++)
          Align(
            widthFactor: (i == avatars.length - 1 && _extraCount == 0)
                ? 1.0
                : 0.7,
            alignment: Alignment.centerLeft,
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: AppColors.white, width: 2),
              ),
              child: AttendanceAvatar(
                nickname: avatars[i].nickname,
                imageUrl: avatars[i].avatarUrl,
                size: 28,
              ),
            ),
          ),
        if (_extraCount > 0)
          Align(
            widthFactor: 1.0,
            alignment: Alignment.centerLeft,
            child: Container(
              width: 28.r,
              height: 28.r,
              decoration: BoxDecoration(
                color: primaryColor,
                shape: BoxShape.circle,
                border: Border.all(color: AppColors.white, width: 2),
              ),
              alignment: Alignment.center,
              child: AppText.b2(
                '+$_extraCount',
                color: AppColors.white,
                fontSize: 10.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
      ],
    );
  }
}
