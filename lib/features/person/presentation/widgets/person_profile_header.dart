import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_icon_button.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/features/attendance/presentation/widgets/attendance_avatar.dart';
import 'package:tanlu_management/features/auth/domain/entity/user.dart';

class PersonProfileHeader extends StatelessWidget {
  const PersonProfileHeader({
    super.key,
    required this.user,
    this.onEditTap,
  });

  final User? user;
  final VoidCallback? onEditTap;

  String get _roleLabel {
    final role = user?.role == 'parent' ? 'Phụ huynh' : 'Giáo viên';
    return '$role · Lớp Mầm 2 - SUNFLOWER';
  }

  @override
  Widget build(BuildContext context) {
    final name = user?.fullName.isNotEmpty == true
        ? user!.fullName
        : 'Nguyễn Thị Mai';

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            AppColors.primary,
            AppColors.primary.withValues(alpha: 0.85),
            const Color(0xFFFF8A8A),
          ],
        ),
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(28.r)),
      ),
      child: SafeArea(
        bottom: false,
        child: Padding(
          padding: EdgeInsets.fromLTRB(16.w, 8.h, 16.w, 28.h),
          child: Column(
            children: [
              AppText.h2(
                'Cá nhân',
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 17.sp,
              ),
              SizedBox(height: 20.h),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  AttendanceAvatar(
                    nickname: name,
                    imageUrl: user?.avatar,
                    size: 84,
                  ),
                  if (onEditTap != null)
                    Positioned(
                      right: 0,
                      bottom: 0,
                      child: AppIconButton(
                        icon: Icons.edit_rounded,
                        iconColor: AppColors.primary,
                        backgroundColor: Colors.white,
                        size: 30,
                        borderRadius: 15,
                        shape: BoxShape.circle,
                        onPressed: onEditTap,
                      ),
                    ),
                ],
              ),
              SizedBox(height: 12.h),
              AppText.h1(
                name,
                color: Colors.white,
                fontWeight: FontWeight.w800,
                fontSize: 18.sp,
              ),
              SizedBox(height: 4.h),
              AppText.b2(
                _roleLabel,
                color: Colors.white.withValues(alpha: 0.9),
                fontSize: 13.sp,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
