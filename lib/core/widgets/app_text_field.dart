import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:tanlu_management/core/dimensions/app_dimens.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';

/// Ô input dùng chung: nền trắng, viền rõ, focus primary, chữ đen.
/// Khi obscureText=true có icon bật/tắt hiện mật khẩu.
class AppTextField extends StatefulWidget {
  const AppTextField({
    super.key,
    this.controller,
    this.labelText,
    this.hintText,
    this.obscureText = false,
    this.validator,
    this.keyboardType,
    this.textInputAction,
    this.autofocus = false,
    this.enabled = true,
    this.readOnly = false,
    this.maxLines = 1,
    this.decoration,
    this.prefixIcon,
    this.contentPadding,
    this.onChanged,
  });

  final TextEditingController? controller;
  final String? labelText;
  final String? hintText;
  final bool obscureText;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final bool autofocus;
  final bool enabled;
  final bool readOnly;
  final int maxLines;
  final InputDecoration? decoration;
  final Widget? prefixIcon;
  final EdgeInsetsGeometry? contentPadding;
  final ValueChanged<String>? onChanged;

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  late bool _obscureText;

  @override
  void initState() {
    super.initState();
    _obscureText = widget.obscureText;
  }

  @override
  void didUpdateWidget(covariant AppTextField oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.obscureText != widget.obscureText) {
      _obscureText = widget.obscureText;
    }
  }

  /// Decoration chuẩn của app. Có thể dùng khi cần custom thêm.
  static InputDecoration defaultDecoration({
    String? labelText,
    String? hintText,
    Widget? suffixIcon,
    Widget? prefixIcon,
    EdgeInsetsGeometry? contentPadding,
  }) {
    return InputDecoration(
      labelText: labelText,
      hintText: hintText,
      suffixIcon: suffixIcon,
      prefixIcon: prefixIcon,
      contentPadding: contentPadding,
      filled: true,
      fillColor: AppColors.white,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppDimens.radiusMd),
        borderSide: BorderSide(color: Color(0xFFCBD5E1), width: 1.5.w),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppDimens.radiusMd),
        borderSide: BorderSide(color: AppColors.primary, width: 2.w),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppDimens.radiusMd),
        borderSide: BorderSide(color: AppColors.error),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppDimens.radiusMd),
        borderSide: BorderSide(color: AppColors.error, width: 2.w),
      ),
      labelStyle: TextStyle(color: AppColors.grayMedium, fontSize: 12.sp),
      floatingLabelStyle: TextStyle(
        color: AppColors.primary,
        fontWeight: FontWeight.w600,
        fontSize: 12.sp,
      ),
      hintStyle: TextStyle(color: AppColors.grayMedium),
    );
  }

  @override
  Widget build(BuildContext context) {
    final suffixIcon = widget.obscureText
        ? IconButton(
            icon: Icon(
              _obscureText
                  ? Icons.visibility_off_outlined
                  : Icons.visibility_outlined,
              color: AppColors.grayMedium,
              size: 22,
            ),
            onPressed: () => setState(() => _obscureText = !_obscureText),
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(minWidth: 44, minHeight: 44),
          )
        : null;

    final deco =
        widget.decoration ??
        defaultDecoration(
          labelText: widget.labelText,
          hintText: widget.hintText,
          suffixIcon: suffixIcon,
          prefixIcon: widget.prefixIcon,
          contentPadding: widget.contentPadding,
        );

    return TextFormField(
      controller: widget.controller,
      onChanged: widget.onChanged,
      decoration: deco,
      obscureText: _obscureText,
      validator: widget.validator,
      keyboardType: widget.keyboardType,
      textInputAction: widget.textInputAction,
      autofocus: widget.autofocus,
      enabled: widget.enabled,
      readOnly: widget.readOnly,
      maxLines: widget.obscureText ? 1 : widget.maxLines,
      autocorrect: widget.keyboardType != TextInputType.emailAddress,
      style: TextStyle(color: AppColors.lightOnBackground, fontSize: 12.sp),
    );
  }
}
