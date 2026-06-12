import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';

class LoginFooter extends StatelessWidget {
  const LoginFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppText.b1(
          'Tổng đài hỗ trợ: 1900 636 999',
          color: Colors.white,
          fontWeight: FontWeight.w700,
          fontSize: 14.sp,
        ),
        SizedBox(height: 4.h),
        AppText.b1(
          'Phiên bản 1.0.0 (Beta)',
          color: Colors.white,
          fontWeight: FontWeight.w700,
          fontSize: 10.sp,
        ),
      ],
    );
  }
}
