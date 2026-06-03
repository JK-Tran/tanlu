import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:tanlu_management/core/dimensions/app_dimens.dart';

/// Một widget Card có hiệu ứng nhấn (bouncy/claymorphic).
/// Khi nhấn vào, Card sẽ lún xuống và mất bóng, tạo cảm giác như nút vật lý.
class AppCardButton extends StatefulWidget {
  final Widget child;
  final Color color;
  final Color borderColor;
  final VoidCallback? onTap;
  final double? borderRadius;
  final double shadowOffset;
  final EdgeInsetsGeometry? padding;

  const AppCardButton({
    super.key,
    required this.child,
    required this.color,
    required this.borderColor,
    this.onTap,
    this.borderRadius,
    this.shadowOffset = 4.0,
    this.padding,
  });

  @override
  State<AppCardButton> createState() => _AppCardButtonState();
}

class _AppCardButtonState extends State<AppCardButton> {
  bool _isPressed = false;

  void _handleTapDown(TapDownDetails details) {
    if (widget.onTap != null) {
      setState(() => _isPressed = true);
    }
  }

  void _handleTapUp(TapUpDetails details) {
    if (widget.onTap != null) {
      setState(() => _isPressed = false);
    }
  }

  void _handleTapCancel() {
    if (widget.onTap != null) {
      setState(() => _isPressed = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: _handleTapDown,
      onTapUp: _handleTapUp,
      onTapCancel: _handleTapCancel,
      onTap: widget.onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 100),
        curve: Curves.easeOut,
        padding: widget.padding,
        transform: Matrix4.translationValues(
          0.0,
          _isPressed ? widget.shadowOffset : 0.0,
          0.0,
        ),
        decoration: BoxDecoration(
          color: widget.color,
          borderRadius: BorderRadius.circular(
            widget.borderRadius ?? AppDimens.radiusXl,
          ),
          border: Border.all(color: widget.borderColor, width: 2.w),
          boxShadow: _isPressed
              ? []
              : [
                  BoxShadow(
                    color: widget.borderColor,
                    blurRadius: 0,
                    offset: Offset(0, widget.shadowOffset),
                  ),
                ],
        ),
        child: widget.child,
      ),
    );
  }
}
