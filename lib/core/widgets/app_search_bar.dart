import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/l10n/l10n.dart';

class AppSearchBar extends StatelessWidget {
  const AppSearchBar({
    super.key,
    this.controller,
    this.onChanged,
    this.hintText = 'Tìm kiếm...',
    this.focusNode,
    this.backgroundColor,
    this.borderColor,
    this.suffixIcon,
    this.boxShadow,
  });

  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;
  final String? hintText;
  final FocusNode? focusNode;
  final Color? backgroundColor;
  final Color? borderColor;
  final Widget? suffixIcon;
  final List<BoxShadow>? boxShadow;

  @override
  Widget build(BuildContext context) {
    final effectiveHint = hintText ?? context.l10n.searchPlaceholder;
    return Container(
      height: 48.h,
      decoration: BoxDecoration(
        color: backgroundColor ?? AppColors.white,
        borderRadius: BorderRadius.circular(8.r),
        border: borderColor != null
            ? Border.all(color: borderColor!, width: 1.5)
            : null,
        boxShadow:
            boxShadow ??
            [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.1),
                blurRadius: 5,
                offset: const Offset(0, 2),
              ),
            ],
      ),
      child: TextField(
        controller: controller,
        focusNode: focusNode,
        onChanged: onChanged,
        style: TextStyle(fontSize: 14.sp, color: AppColors.grayDark80),
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
          isDense: true,
          contentPadding: EdgeInsets.symmetric(vertical: 12.h),
          hintText: effectiveHint,
          hintStyle: TextStyle(color: AppColors.grayMedium, fontSize: 14.sp),
          prefixIcon: Icon(
            Icons.search_rounded,
            color: AppColors.grayMedium,
            size: 20.w,
          ),
          suffixIcon: suffixIcon,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
