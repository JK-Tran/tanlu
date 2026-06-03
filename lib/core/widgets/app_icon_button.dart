import 'package:flutter/material.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';

/// A simple, reusable icon button that supports circle or rounded-square shapes.
class AppIconButton extends StatelessWidget {
  const AppIconButton({
    super.key,
    required this.icon,
    required this.onPressed,
    this.iconColor,
    this.backgroundColor,
    this.size,
    this.borderRadius,
    this.shape = BoxShape.rectangle, // Default to a modern rounded square!
  });

  /// The icon to display inside the button.
  final IconData icon;

  /// Callback when the button is clicked.
  final VoidCallback? onPressed;

  /// Optional color for the icon. Defaults to [AppColors.primary].
  final Color? iconColor;

  /// Optional background color for the button. Defaults to [Colors.transparent].
  final Color? backgroundColor;

  /// Optional size for the button. Defaults to `40`.
  final double? size;

  /// Optional custom border radius. Defaults to `6` for modern small shape.
  final double? borderRadius;

  /// The geometric shape of the button: [BoxShape.rectangle] (default) or [BoxShape.circle].
  final BoxShape shape;

  @override
  Widget build(BuildContext context) {
    final double resolvedSize = size ?? 40;
    final Color resolvedIconColor = iconColor ?? AppColors.primary;
    final Color resolvedBgColor = backgroundColor ?? Colors.transparent;
    final double resolvedRadius = borderRadius ?? 6;

    final boxDecoration = shape == BoxShape.circle
        ? BoxDecoration(color: resolvedBgColor, shape: BoxShape.circle)
        : BoxDecoration(
            color: resolvedBgColor,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(resolvedRadius),
          );

    final inkBorder = shape == BoxShape.circle
        ? const CircleBorder()
        : RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(resolvedRadius),
          );

    return Container(
      width: resolvedSize,
      height: resolvedSize,
      decoration: boxDecoration,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onPressed,
          customBorder: inkBorder,
          child: Center(
            child: Icon(
              icon,
              size: resolvedSize * 0.6,
              color: resolvedIconColor,
            ),
          ),
        ),
      ),
    );
  }
}
