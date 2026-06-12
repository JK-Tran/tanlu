import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/dimensions/app_dimens.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'login_form_card.dart';
import 'logo_section.dart';
import 'login_footer.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({
    super.key,
    required this.formKey,
    required this.usernameController,
    required this.passwordController,
    required this.onLoginPressed,
  });

  final GlobalKey<FormState> formKey;
  final TextEditingController usernameController;
  final TextEditingController passwordController;
  final VoidCallback onLoginPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [AppColors.primary, AppColors.accent],
          ),
        ),
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              padding: EdgeInsets.symmetric(horizontal: AppDimens.spacingMd),
              child: Center(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 500),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 24.h),
                      LogoSection(),
                      SizedBox(height: 32.h),
                      LoginFormCard(
                        formKey: formKey,
                        usernameController: usernameController,
                        passwordController: passwordController,
                        onLoginPressed: onLoginPressed,
                      ),
                      SizedBox(height: 20.h),
                      LoginFooter(),
                      SizedBox(height: 24.h),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
