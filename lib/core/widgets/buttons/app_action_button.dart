import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';

enum AppButtonType { solid, outlined }

class AppActionButton extends StatelessWidget {
  const AppActionButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.icon,
    this.color,
    this.textColor,
    this.borderColor,
    this.type = AppButtonType.solid,
    this.borderRadius = 12.0,
    this.padding = const EdgeInsets.symmetric(vertical: 12),
    this.expanded = false,
  });

  final String label;
  final VoidCallback? onPressed;
  final IconData? icon;
  final Color? color;
  final Color? textColor;
  final Color? borderColor;
  final AppButtonType type;
  final double borderRadius;
  final EdgeInsetsGeometry padding;
  final bool expanded;

  Widget _buildContent(Color textColor) {
    if (icon == null) {
      return AppText.b1(label, color: textColor, fontWeight: FontWeight.w600);
    }
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: textColor, size: 20),
        SizedBox(width: 8.w),
        AppText.b1(label, color: textColor, fontWeight: FontWeight.w600),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final effectiveColor = color ?? Theme.of(context).primaryColor;

    if (type == AppButtonType.outlined) {
      final textAndIconColor = textColor ?? effectiveColor;
      final effectiveBorderColor = borderColor ?? effectiveColor;
      return OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          padding: padding,
          backgroundColor: Colors.white,
          side: BorderSide(color: effectiveBorderColor),
          minimumSize: expanded ? Size(double.infinity, 0) : null,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
        child: _buildContent(textAndIconColor),
      );
    }

    final textAndIconColor = textColor ?? Colors.white;
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: padding,
        backgroundColor: effectiveColor,
        minimumSize: expanded ? Size(double.infinity, 0) : null,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        elevation: 0,
      ),
      child: _buildContent(textAndIconColor),
    );
  }
}
