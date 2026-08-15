import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/features/app/presentation/bloc/app_bloc.dart';
import 'package:tanlu_management/features/person/presentation/pages/change_password/person_change_password_page.dart';
import 'package:tanlu_management/features/person/presentation/widgets/person_menu_tile.dart';
import 'package:tanlu_management/features/person/presentation/widgets/person_sub_page_bar.dart';
import 'package:tanlu_management/features/person/presentation/bloc/person_bloc.dart';
import 'package:tanlu_management/shared/di/di.dart';
import 'package:tanlu_management/l10n/l10n.dart';

class PersonSecurityPage extends StatelessWidget {
  const PersonSecurityPage({super.key});

  @override
  Widget build(BuildContext context) {
    final email = context.read<AppBloc>().currentUser?.email ?? '—';

    return Scaffold(
      backgroundColor: AppColors.grayBg,
      appBar: PersonSubPageBar(title: context.l10n.accountAndSecurity),
      body: ListView(
        padding: EdgeInsets.all(16.w),
        children: [
          PersonMenuGroup(
            children: [
              PersonMenuTile(
                icon: Icons.alternate_email_outlined,
                title: context.l10n.username,
                value: email,
                showChevron: false,
              ),
              PersonMenuTile(
                icon: Icons.lock_outline_rounded,
                title: context.l10n.changePassword,
                showDivider: false,
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => BlocProvider(
                        create: (_) => sl<PersonBloc>(),
                        child: const PersonChangePasswordPage(),
                      ),
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
