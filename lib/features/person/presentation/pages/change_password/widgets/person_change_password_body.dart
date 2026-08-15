import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/core/widgets/app_text_field.dart';
import 'package:tanlu_management/core/widgets/buttons/app_primary_button.dart';
import 'package:tanlu_management/l10n/l10n.dart';

class PersonChangePasswordBody extends StatelessWidget {
  const PersonChangePasswordBody({
    super.key,
    required this.currentController,
    required this.newController,
    required this.confirmController,
    required this.onSubmit,
  });

  final TextEditingController currentController;
  final TextEditingController newController;
  final TextEditingController confirmController;
  final VoidCallback onSubmit;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(16.w),
      children: [
        Center(
          child: Container(
            width: 72.w,
            height: 72.w,
            decoration: BoxDecoration(
              color: AppColors.primaryLight,
              shape: BoxShape.circle,
            ),
            child: Icon(Icons.lock_rounded, color: AppColors.primary, size: 36.w),
          ),
        ),
        SizedBox(height: 24.h),
        AppTextField(
          controller: currentController,
          labelText: context.l10n.currentPassword,
          obscureText: true,
        ),
        SizedBox(height: 12.h),
        AppTextField(
          controller: newController,
          labelText: context.l10n.newPassword,
          obscureText: true,
        ),
        SizedBox(height: 12.h),
        AppTextField(
          controller: confirmController,
          labelText: context.l10n.confirmNewPassword,
          obscureText: true,
        ),
        SizedBox(height: 16.h),
        ValueListenableBuilder<TextEditingValue>(
          valueListenable: newController,
          builder: (context, value, child) {
            final text = value.text;
            final hasMinChars = text.length >= 8;
            final hasUpperLower = text.contains(RegExp(r'[A-Z]')) && text.contains(RegExp(r'[a-z]'));
            final hasSpecialChar = text.contains(RegExp(r'[!@#\$%^&*(),.?":{}|<>\d]')); // bao gồm cả số theo yêu cầu API

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _Requirement(text: context.l10n.reqMinChars, met: hasMinChars),
                _Requirement(text: context.l10n.reqUpperLower, met: hasUpperLower),
                _Requirement(text: context.l10n.reqSpecialChar, met: hasSpecialChar),
              ],
            );
          },
        ),
        SizedBox(height: 24.h),
        AppPrimaryButton(label: context.l10n.changePassword, onPressed: onSubmit),
      ],
    );
  }
}

class _Requirement extends StatelessWidget {
  const _Requirement({required this.text, required this.met});

  final String text;
  final bool met;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 6.h),
      child: Row(
        children: [
          Icon(
            met ? Icons.check_circle_rounded : Icons.radio_button_unchecked,
            size: 18.w,
            color: met ? AppColors.success : AppColors.grayMedium,
          ),
          SizedBox(width: 8.w),
          AppText.b2(
            text,
            color: met ? AppColors.grayDark : AppColors.grayMedium,
            fontSize: 13.sp,
          ),
        ],
      ),
    );
  }
}
