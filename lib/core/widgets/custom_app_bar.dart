import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/core/widgets/app_icon_button.dart';

/// A premium, highly versatile and reusable App Bar.
///
/// Supports linear gradients, curved bottom corners, drop shadows, back buttons,
/// secondary description subtitles, custom action widgets, and automatic color matching
/// for frosted glass style action buttons.
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    this.subtitle,
    this.showBackArrow = false,
    this.action,
    this.actionIcon,
    this.onActionPress,
    this.onBackPress,
    this.backgroundColor,
  });

  /// The main screen title displayed in the AppBar.
  final String title;

  /// Optional sub-header description text.
  final String? subtitle;

  /// Whether to display a circular back navigation arrow on the left.
  final bool showBackArrow;

  /// Optional action widget displayed on the far right (takes precedence over [actionIcon]).
  final Widget? action;

  /// Optional icon displayed on the far right.
  /// If provided, a beautifully styled action button is built automatically.
  final IconData? actionIcon;

  /// Callback when [actionIcon] is clicked.
  final VoidCallback? onActionPress;

  /// Optional callback for back arrow. Defaults to [context.pop()].
  final VoidCallback? onBackPress;

  /// Background color. If set to [AppColors.primary], renders a premium linear gradient.
  final Color? backgroundColor;

  @override
  Size get preferredSize => Size.fromHeight(subtitle != null ? 80 : 64);

  @override
  Widget build(BuildContext context) {
    final Color resolvedBg = backgroundColor ?? Colors.transparent;
    final bool isDark = resolvedBg == AppColors.primary;

    return Container(
      decoration: _buildDecoration(isDark, resolvedBg),
      padding: EdgeInsets.symmetric(
        horizontal: 16.w,
        vertical: subtitle != null ? 12 : 8,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _buildLeading(context, isDark),
          _buildTitleAndSubtitle(isDark),
          _buildTrailing(isDark),
        ],
      ),
    );
  }

  /// Builds a premium background decoration (gradient, solid color, or transparent).
  BoxDecoration _buildDecoration(bool isDark, Color resolvedBg) {
    if (isDark) {
      return BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            AppColors.primary,
            Color(0xFF6366F1), // Vibrant modern Indigo
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(20.r)),
        boxShadow: [
          BoxShadow(
            color: AppColors.primary.withValues(alpha: 0.24),
            blurRadius: 12,
            offset: const Offset(0, 6),
          ),
        ],
      );
    }

    if (resolvedBg != Colors.transparent) {
      return BoxDecoration(
        color: resolvedBg,
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(20.r)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.04),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      );
    }

    return BoxDecoration(color: Colors.transparent);
  }

  /// Helper to build a standard frosted or light-grey circular action/back button.
  Widget _buildCircularButton({
    required IconData icon,
    required VoidCallback? onPressed,
    required bool isDark,
  }) {
    return AppIconButton(
      icon: icon,
      iconColor: isDark ? AppColors.white : AppColors.grayDark,
      backgroundColor: isDark
          ? Colors.white.withValues(alpha: 0.16)
          : AppColors.grayBg,
      size: 45,
      borderRadius: 20,
      shape: BoxShape.circle,
      onPressed: onPressed,
    );
  }

  /// Builds the leading side of the AppBar.
  /// Handles back navigation or layout balancing for centered titles.
  Widget _buildLeading(BuildContext context, bool isDark) {
    final bool hasTrailing = action != null || actionIcon != null;
    final bool isCentered = subtitle == null;

    if (showBackArrow) {
      return Padding(
        padding: EdgeInsets.only(right: 12.w),
        child: _buildCircularButton(
          icon: Icons.arrow_back_rounded,
          onPressed: onBackPress ?? () => context.pop(),
          isDark: isDark,
        ),
      );
    }

    // Balanced spacing: If we have a trailing widget and centered title,
    // we must insert dummy spacing of identical width on the left to perfectly center the title.
    if (hasTrailing && isCentered) {
      return SizedBox(width: 52.w); // 40 (button size) + 12 (spacing)
    }

    return SizedBox.shrink();
  }

  /// Builds the trailing side of the AppBar.
  /// Handles custom action widgets, default action icons, or layout balancing.
  Widget _buildTrailing(bool isDark) {
    final bool isCentered = subtitle == null;

    if (action != null) {
      return Padding(padding: EdgeInsets.only(left: 12.w), child: action!);
    }

    if (actionIcon != null) {
      return Padding(
        padding: EdgeInsets.only(left: 12.w),
        child: _buildCircularButton(
          icon: actionIcon!,
          onPressed: onActionPress,
          isDark: isDark,
        ),
      );
    }

    // Balanced spacing: If we have a back arrow and centered title,
    // we must insert dummy spacing of identical width on the right to perfectly center the title.
    if (showBackArrow && isCentered) {
      return SizedBox(width: 52.w); // 12 (spacing) + 40 (button size)
    }

    return SizedBox.shrink();
  }

  /// Builds the title and subtitle section.
  Widget _buildTitleAndSubtitle(bool isDark) {
    final bool isCentered = subtitle == null;

    return Expanded(
      child: Column(
        crossAxisAlignment: isCentered
            ? CrossAxisAlignment.center
            : CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          AppText.t1(
            title,
            fontWeight: FontWeight.w700,
            color: isDark ? AppColors.white : AppColors.grayDark,
            fontSize: 18.sp,
            textAlign: isCentered ? TextAlign.center : TextAlign.left,
          ),
          if (subtitle != null) ...[
            SizedBox(height: 2.h),
            AppText.b2(
              subtitle!,
              color: isDark
                  ? AppColors.white.withValues(alpha: 0.7)
                  : AppColors.grayMedium,
              fontSize: 12.sp,
            ),
          ],
        ],
      ),
    );
  }
}
