import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:tanlu_management/core/dimensions/app_dimens.dart';

/// Nút phụ (outline).
class SecondaryButton extends StatelessWidget {
  const SecondaryButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.loading = false,
    this.minWidth,
  });

  final String label;
  final VoidCallback? onPressed;
  final bool loading;
  final double? minWidth;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppDimens.buttonHeightMd,
      width: double.infinity,
      child: OutlinedButton(
        onPressed: loading ? null : onPressed,
        child: loading
            ? SizedBox(
                height: 24.h,
                width: 24.w,
                child: CircularProgressIndicator(strokeWidth: 2),
              )
            : Text(label),
      ),
    );
  }
}
