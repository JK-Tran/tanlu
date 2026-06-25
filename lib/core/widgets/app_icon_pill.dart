import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';

class AppIconPill extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color backgroundColor;
  final Color contentColor;
  final Color? iconColor;
  final Color? textColor;
  final Widget? trailing;
  final double? fontSize;
  final double? iconSize;
  final EdgeInsetsGeometry? padding;

  const AppIconPill({
    super.key,
    required this.icon,
    required this.text,
    required this.backgroundColor,
    required this.contentColor,
    this.iconColor,
    this.textColor,
    this.trailing,
    this.fontSize,
    this.iconSize,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ?? EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            size: iconSize ?? 12.w,
            color: iconColor ?? contentColor,
          ),
          SizedBox(width: 6.w),
          Flexible(
            child: AppText.b2(
              text,
              color: textColor ?? contentColor,
              fontWeight: FontWeight.w700,
              fontSize: fontSize ?? 12.sp,
              maxLines: 1,
            ),
          ),
          if (trailing != null) ...[
            SizedBox(width: 8.w),
            trailing!,
          ]
        ],
      ),
    );
  }
}
