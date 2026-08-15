import 'package:flutter/material.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_snackbar.dart';
import 'package:tanlu_management/core/base/base_page_state.dart';
import 'package:tanlu_management/features/person/presentation/bloc/person_bloc.dart';
import 'package:tanlu_management/features/person/presentation/widgets/person_sub_page_bar.dart';
import 'package:tanlu_management/features/person/presentation/pages/change_password/widgets/person_change_password_body.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tanlu_management/l10n/l10n.dart';

class PersonChangePasswordPage extends StatefulWidget {
  const PersonChangePasswordPage({super.key});

  @override
  State<PersonChangePasswordPage> createState() =>
      _PersonChangePasswordPageState();
}

class _PersonChangePasswordPageState
    extends BasePageState<PersonChangePasswordPage, PersonBloc> {
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
    if (_newController.text != _confirmController.text) {
      AppSnackbar.show(
        context,
        message: 'Mật khẩu mới không khớp',
        type: AppSnackbarType.error,
      );
      return;
    }

    bloc.add(
      PersonEvent.changePassword(
        oldPassword: _currentController.text,
        newPassword: _newController.text,
      ),
    );
  }

  @override
  Widget buildPage(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.grayBg,
      appBar: PersonSubPageBar(title: context.l10n.changePassword),
      body: BlocListener<PersonBloc, PersonState>(
        listener: (context, state) {
          if (state.changePasswordSuccess) {
            AppSnackbar.show(
              context,
              message: context.l10n.passwordUpdated,
              type: AppSnackbarType.success,
            );
            Navigator.of(context).pop();
            return;
          }
          if (state.onPageError.isNotEmpty) {
            AppSnackbar.show(
              context,
              message: state.onPageError,
              type: AppSnackbarType.error,
            );
          }
        },
        child: PersonChangePasswordBody(
          currentController: _currentController,
          newController: _newController,
          confirmController: _confirmController,
          onSubmit: _submit,
        ),
      ),
    );
  }
}
