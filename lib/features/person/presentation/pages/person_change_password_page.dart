import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_snackbar.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/core/widgets/app_text_field.dart';
import 'package:tanlu_management/core/widgets/buttons/app_primary_button.dart';
import 'package:tanlu_management/features/person/presentation/widgets/person_sub_page_bar.dart';

class PersonChangePasswordPage extends StatefulWidget {
  const PersonChangePasswordPage({super.key});

  @override
  State<PersonChangePasswordPage> createState() =>
      _PersonChangePasswordPageState();
}

class _PersonChangePasswordPageState extends State<PersonChangePasswordPage> {
  final _currentController = TextEditingController();
  final _newController = TextEditingController();
  final _confirmController = TextEditingController();

  @override
  void dispose() {
    _currentController.dispose();
    _newController.dispose();
    _confirmController.dispose();
    super.dispose();
  }

  void _submit() {
    AppSnackbar.show(
      context,
      message: 'Đã cập nhật mật khẩu (UI demo)',
      type: AppSnackbarType.success,
    );
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.grayBg,
      appBar: const PersonSubPageBar(title: 'Đổi mật khẩu'),
      body: ListView(
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
            controller: _currentController,
            labelText: 'Mật khẩu hiện tại',
            obscureText: true,
          ),
          SizedBox(height: 12.h),
          AppTextField(
            controller: _newController,
            labelText: 'Mật khẩu mới',
            obscureText: true,
          ),
          SizedBox(height: 12.h),
          AppTextField(
            controller: _confirmController,
            labelText: 'Xác nhận mật khẩu mới',
            obscureText: true,
          ),
          SizedBox(height: 16.h),
          _Requirement(text: 'Ít nhất 8 ký tự', met: true),
          _Requirement(text: 'Có chữ hoa và chữ thường', met: true),
          _Requirement(text: 'Có ký tự đặc biệt', met: false),
          SizedBox(height: 24.h),
          AppPrimaryButton(label: 'Đổi mật khẩu', onPressed: _submit),
        ],
      ),
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
