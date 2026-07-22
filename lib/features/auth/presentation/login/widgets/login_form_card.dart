import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/dimensions/app_dimens.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/core/widgets/app_text_field.dart';
import 'package:tanlu_management/core/widgets/buttons/app_primary_button.dart';
import 'package:tanlu_management/features/auth/presentation/login/bloc/login_bloc.dart';
import 'package:tanlu_management/l10n/l10n.dart';

class LoginFormCard extends StatelessWidget {
  const LoginFormCard({
    super.key,
    required this.formKey,
    required this.emailController,
    required this.passwordController,
    required this.onLoginPressed,
  });

  final GlobalKey<FormState> formKey;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final VoidCallback onLoginPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(AppDimens.spacingLg),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(AppDimens.radiusLg),

        boxShadow: [
          BoxShadow(
            color: AppColors.black.withValues(alpha: 0.3),
            blurRadius: 5,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AppText.t0(
              context.l10n.loginTitleCaps,
              color: AppColors.grayDark80,
              fontWeight: FontWeight.w700,
              fontSize: 20.sp,
            ),
            SizedBox(height: 20.h),
            // --- Email/SĐT ---
            BlocBuilder<LoginBloc, LoginState>(
              buildWhen: (p, c) => p.email != c.email,
              builder: (context, state) {
                return AppTextField(
                  controller: emailController,
                  onChanged: (value) =>
                      context.read<LoginBloc>().add(EmailChanged(email: value)),
                  labelText: 'Email',
                  hintText: context.l10n.enterLoginEmail,
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return context.l10n.pleaseEnterEmail;
                    }
                    return null;
                  },
                  prefixIcon: Icon(
                    Icons.person_2_outlined,
                    color: AppColors.grayDark80,
                    size: 20,
                  ),
                );
              },
            ),
            SizedBox(height: 16.h),
            // --- Mật khẩu ---
            BlocBuilder<LoginBloc, LoginState>(
              buildWhen: (p, c) =>
                  p.obscureText != c.obscureText || p.password != c.password,
              builder: (context, state) {
                return AppTextField(
                  controller: passwordController,
                  onChanged: (value) => context.read<LoginBloc>().add(
                    PasswordChanged(password: value),
                  ),
                  labelText: context.l10n.password,
                  hintText: context.l10n.enterYourPassword,
                  obscureText: state.obscureText,
                  textInputAction: TextInputAction.done,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return context.l10n.pleaseEnterPassword;
                    }
                    if (value.length < 6) {
                      return context.l10n.passwordMinLengthError;
                    }
                    return null;
                  },
                  prefixIcon: Icon(
                    Icons.lock_outline_rounded,
                    color: AppColors.grayDark80,
                    size: 20,
                  ),
                );
              },
            ),
            SizedBox(height: 24.h),
            // --- Nút Đăng nhập ---
            BlocBuilder<LoginBloc, LoginState>(
              buildWhen: (p, c) =>
                  p.isLoginButtonEnabled != c.isLoginButtonEnabled ||
                  p.showLoginButtonLoading != c.showLoginButtonLoading,
              builder: (context, state) {
                return AppPrimaryButton(
                  label: context.l10n.login,
                  loading: state.showLoginButtonLoading,
                  onPressed: state.isLoginButtonEnabled ? onLoginPressed : null,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
