import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/features/attendance/presentation/widgets/attendance_avatar.dart';

class ChatAvatar extends StatelessWidget {
  const ChatAvatar({
    super.key,
    required this.name,
    this.imageUrl,
    this.size = 44,
    this.isGroup = false,
  });

  final String name;
  final String? imageUrl;
  final double size;
  final bool isGroup;

  @override
  Widget build(BuildContext context) {
    if (isGroup) {
      return Container(
        width: size.w,
        height: size.w,
        decoration: BoxDecoration(
          color: AppColors.primaryLight,
          borderRadius: BorderRadius.circular(8.r),
        ),
        alignment: Alignment.center,
        child: Icon(
          Icons.groups_rounded,
          color: AppColors.primary,
          size: (size * 0.5).w,
        ),
      );
    }

    final url = imageUrl?.trim();
    if (url != null && url.isNotEmpty) {
      return AttendanceAvatar(nickname: name, imageUrl: url, size: size);
    }

    if (name.trim().isEmpty) {
      return Container(
        width: size.w,
        height: size.w,
        decoration: BoxDecoration(
          color: AppColors.grayVeryLight,
          shape: BoxShape.circle,
          border: Border.all(color: AppColors.grayLight),
        ),
        alignment: Alignment.center,
        child: Icon(
          Icons.person_rounded,
          color: AppColors.grayMedium,
          size: (size * 0.5).w,
        ),
      );
    }

    return AttendanceAvatar(nickname: name, size: size);
  }
}
