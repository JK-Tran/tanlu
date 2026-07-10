import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_confirm_dialog.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/core/widgets/buttons/app_primary_button.dart';
import 'package:tanlu_management/features/app/presentation/bloc/app_bloc.dart';
import 'package:tanlu_management/features/auth/domain/entity/user.dart';
import 'package:tanlu_management/features/person/presentation/pages/person_language_page.dart';
import 'package:tanlu_management/features/person/presentation/pages/person_profile_page.dart';
import 'package:tanlu_management/features/person/presentation/pages/person_security_page.dart';
import 'package:tanlu_management/features/person/presentation/widgets/person_menu_tile.dart';
import 'package:tanlu_management/features/person/presentation/widgets/person_profile_header.dart';
import 'package:tanlu_management/core/base/base_page_state.dart';
import 'package:tanlu_management/core/base/default_bloc.dart';

class PersonPage extends StatefulWidget {
  const PersonPage({super.key});

  @override
  State<PersonPage> createState() => _PersonPageState();
}

class _PersonPageState extends BasePageState<PersonPage, DefaultBloc> {
  bool _notificationsEnabled = true;
  String _languageLabel = 'Tiếng Việt';

  User? get _user => context.read<AppBloc>().currentUser;

  void _open(Widget page) {
    Navigator.of(
      context,
      rootNavigator: true,
    ).push(MaterialPageRoute(builder: (_) => page));
  }

  Future<void> _openLanguage() async {
    await Navigator.of(
      context,
    ).push(MaterialPageRoute(builder: (_) => const PersonLanguagePage()));
    if (!mounted) return;
    setState(() => _languageLabel = 'Tiếng Việt');
  }

  Future<void> _onLogout() async {
    final confirmed = await AppConfirmDialog.show(
      context,
      title: 'Đăng xuất',
      content: 'Bạn có chắc muốn đăng xuất?',
      cancelLabel: 'Huỷ',
      confirmLabel: 'Đăng xuất',
      type: AppConfirmDialogType.warning,
    );
    if (confirmed == true && mounted) {
      context.read<AppBloc>().add(const AppEvent.loggedOut());
    }
  }

  @override
  Widget buildPage(BuildContext context) {
    final user = _user;

    return Scaffold(
      backgroundColor: AppColors.grayBg,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
          children: [
            PersonProfileHeader(
              user: user,
              className: 'Lớp Mầm 1',
              onEditTap: () => _open(PersonProfilePage(user: user)),
            ),
            SizedBox(height: 16.h),
            PersonMenuTile(
              icon: Icons.lock_outline,
              title: 'Bảo mật',
              onTap: () => _open(const PersonSecurityPage()),
            ),
            PersonMenuTile(
              icon: Icons.language,
              title: 'Ngôn ngữ',
              trailing: AppText.t1(_languageLabel, color: AppColors.grayMedium),
              onTap: _openLanguage,
            ),
            PersonMenuTile(
              icon: Icons.notifications_outlined,
              title: 'Thông báo',
              trailing: Switch(
                value: _notificationsEnabled,
                onChanged: (v) => setState(() => _notificationsEnabled = v),
              ),
            ),
            SizedBox(height: 24.h),
            AppPrimaryButton(label: 'Đăng xuất', onPressed: _onLogout),
          ],
        ),
      ),
    );
  }
}
