import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_icon_button.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/features/attendance/presentation/widgets/attendance_avatar.dart';
import 'package:tanlu_management/features/auth/domain/entity/user.dart';

/// Header tab Cá nhân — nền pastel, avatar trái, tên phải (theo mẫu).
class PersonProfileHeader extends StatelessWidget {
  const PersonProfileHeader({
    super.key,
    required this.user,
    this.className,
    this.onEditTap,
  });

  final User? user;
  final String? className;
  final VoidCallback? onEditTap;

  static const _bandHeight = 108.0;
  static const _avatarSize = 72.0;
  static const _avatarOverlap = 28.0;

  String get _roleLabel {
    final role = user?.role == 'parent' ? 'Phụ huynh' : 'Giáo viên';
    final classLabel = className?.trim();
    if (classLabel != null && classLabel.isNotEmpty) {
      return '$role - $classLabel';
    }
    return role;
  }

  @override
  Widget build(BuildContext context) {
    final name = user?.fullName.trim().isNotEmpty == true
        ? user!.fullName
        : '—';

    return SafeArea(
      bottom: false,
      child: SizedBox(
        height: (_bandHeight - _avatarOverlap + _avatarSize).h + 8.h,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            _DecorBand(height: _bandHeight.h),
            Positioned(
              left: 16.w,
              right: 16.w,
              top: (_bandHeight - _avatarOverlap).h,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                AttendanceAvatar(
                  nickname: name,
                  imageUrl: user?.avatar,
                  size: _avatarSize,
                ),
                SizedBox(width: 12.w),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 6.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        AppText.b1(
                          name,
                          fontWeight: FontWeight.w800,
                          fontSize: 17.sp,
                          color: AppColors.grayDark,
                          maxLines: 1,
                          textOverflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(height: 2.h),
                        AppText.b2(
                          _roleLabel,
                          fontSize: 13.sp,
                          color: AppColors.grayMedium,
                          maxLines: 1,
                          textOverflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ),
                if (onEditTap != null)
                  Padding(
                    padding: EdgeInsets.only(bottom: 4.h),
                    child: AppIconButton(
                      icon: Icons.edit_rounded,
                      iconColor: AppColors.primary,
                      backgroundColor: Colors.white,
                      size: 36,
                      borderRadius: 18,
                      shape: BoxShape.circle,
                      onPressed: onEditTap,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _DecorBand extends StatelessWidget {
  const _DecorBand({required this.height});

  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFFFFF3F3), Color(0xFFFFECEC), Color(0xFFF8F8F8)],
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 8.w,
            top: 18.h,
            child: Icon(
              Icons.wb_sunny_rounded,
              size: 40.w,
              color: const Color(0xFFFFB74D).withValues(alpha: 0.45),
            ),
          ),
          Positioned(
            right: 12.w,
            top: 10.h,
            child: Icon(
              Icons.star_rounded,
              size: 52.w,
              color: const Color(0xFFFFD54F).withValues(alpha: 0.55),
            ),
          ),
        ],
      ),
    );
  }
}
