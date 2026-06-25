import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';

class LogoSection extends StatelessWidget {
  const LogoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Transform.scale(
          scale: 1.5,
          child: Image.asset(
            'assets/images/logo-tanlu.png',
            width: 120.w,
            height: 120.h,
            fit: BoxFit.contain,
            errorBuilder: (context, error, _) =>
                Icon(Icons.school_rounded, size: 40, color: AppColors.primary),
          ),
        ),
      ],
    );
  }
}
