import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';

/// Row hiển thị thông tin dạng: [Icon] [Label] ........ [Value] [Trailing Icon]
/// Có hỗ trợ onTap (có hiệu ứng InkWell) nếu cần.
class AppInfoRow extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;
  final Widget? trailing;
  final VoidCallback? onTap;

  const AppInfoRow({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
    this.trailing,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    Widget content = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(icon, size: 16.w, color: AppColors.grayMedium),
            SizedBox(width: 8.w),
            AppText.b2(label, color: AppColors.grayMedium),
          ],
        ),
        Row(
          children: [
            AppText.b2(
              value,
              fontWeight: FontWeight.w700,
              color: AppColors.grayDark,
            ),
            if (trailing != null) ...[SizedBox(width: 4.w), trailing!],
          ],
        ),
      ],
    );

    if (onTap != null) {
      return InkWell(
        onTap: onTap,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 4.h),
          child: content,
        ),
      );
    }

    return content;
  }
}
