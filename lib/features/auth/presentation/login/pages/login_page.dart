import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tanlu_management/core/base/base_page_state.dart';
import 'package:tanlu_management/core/dimensions/app_dimens.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';

import 'package:tanlu_management/features/auth/presentation/login/bloc/login_bloc.dart';
import 'package:tanlu_management/features/auth/presentation/login/widgets/login_body.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends BasePageState<LoginPage, LoginBloc> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _usernameController.text = bloc.state.email;
    _passwordController.text = bloc.state.password;
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  EdgeInsetsGeometry? get pagePadding => null;

  void _onLoginPressed() {
    if (_formKey.currentState?.validate() ?? false) {
      bloc.add(const LoginButtonPressed());
    }
  }

  @override
  Widget buildPage(BuildContext context) {
    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) {
        if (state.loginSuccess == true) {
          return;
        }
        // Lắng nghe lỗi cụ thể của trang (onPageError) → hiển thị SnackBar
        if (state.onPageError.isNotEmpty) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                content: Text(state.onPageError),
                backgroundColor: AppColors.error,
                behavior: SnackBarBehavior.floating,
                margin: EdgeInsets.all(AppDimens.spacingMd),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(AppDimens.radiusMd),
                ),
              ),
            );
        }
      },
      child: LoginBody(
        formKey: _formKey,
        emailController: _usernameController,
        passwordController: _passwordController,
        onLoginPressed: _onLoginPressed,
      ),
    );
  }
}
