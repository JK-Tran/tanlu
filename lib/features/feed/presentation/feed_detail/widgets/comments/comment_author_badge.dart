import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/l10n/l10n.dart';

class CommentAuthorBadge extends StatelessWidget {
  const CommentAuthorBadge({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 2.h),
      decoration: BoxDecoration(
        color: AppColors.primary.withValues(alpha: 0.12),
        borderRadius: BorderRadius.circular(4.r),
      ),
      child: AppText.b2(
        context.l10n.feedAuthorBadge,
        fontSize: 9.sp,
        fontWeight: FontWeight.w600,
        color: AppColors.primary,
      ),
    );
  }
}
