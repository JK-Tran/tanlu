import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/core/widgets/app_avatar.dart';
import 'package:tanlu_management/features/auth/domain/entity/user.dart';
import 'package:tanlu_management/features/notification/presentation/widgets/notification_bell_widget.dart';
import 'package:tanlu_management/l10n/l10n.dart';

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

  @override
  Widget build(BuildContext context) {
    final name = user?.fullName.trim().isNotEmpty == true
        ? user!.fullName
        : '—';

    final role = user?.role == 'parent'
        ? context.l10n.roleParent
        : context.l10n.roleTeacher;
    final classLabel = className?.trim();
    final roleLabelStr = (classLabel != null && classLabel.isNotEmpty)
        ? '$role - $classLabel'
        : role;

    return Padding(
      padding: EdgeInsets.fromLTRB(16.w, 24.h, 16.w, 16.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AppAvatar(name: name, imageUrl: user?.avatarUrl, size: 56.0),
          SizedBox(width: 12.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                AppText.b1(
                  name,
                  fontWeight: FontWeight.w800,
                  fontSize: 14.sp,
                  color: AppColors.grayDark,
                  maxLines: 1,
                  textOverflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 2.h),
                AppText.b2(
                  roleLabelStr,
                  fontSize: 12.sp,
                  color: AppColors.grayMedium,
                  maxLines: 1,
                  textOverflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          const NotificationBellWidget(
            size: 40,
            iconSize: 24,
            backgroundColor: Colors.white,
            hasShadow: true,
          ),
        ],
      ),
    );
  }
}
