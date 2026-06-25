import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/features/app/presentation/bloc/app_bloc.dart';
import 'package:tanlu_management/features/person/presentation/pages/person_change_password_page.dart';
import 'package:tanlu_management/features/person/presentation/widgets/person_menu_tile.dart';
import 'package:tanlu_management/features/person/presentation/widgets/person_sub_page_bar.dart';

class PersonSecurityPage extends StatelessWidget {
  const PersonSecurityPage({super.key});

  @override
  Widget build(BuildContext context) {
    final email = context.read<AppBloc>().currentUser?.email ?? '—';

    return Scaffold(
      backgroundColor: AppColors.grayBg,
      appBar: const PersonSubPageBar(title: 'Tài khoản và bảo mật'),
      body: ListView(
        padding: EdgeInsets.all(16.w),
        children: [
          PersonMenuGroup(
            children: [
              PersonMenuTile(
                icon: Icons.alternate_email_outlined,
                title: 'Tên đăng nhập',
                value: email,
                showChevron: false,
              ),
              PersonMenuTile(
                icon: Icons.lock_outline_rounded,
                title: 'Đổi mật khẩu',
                showDivider: false,
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const PersonChangePasswordPage(),
                    ),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
