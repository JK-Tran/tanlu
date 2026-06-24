import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_confirm_dialog.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/core/widgets/buttons/app_primary_button.dart';
import 'package:tanlu_management/features/app/presentation/bloc/app_bloc.dart';
import 'package:tanlu_management/features/person/presentation/pages/person_change_password_page.dart';
import 'package:tanlu_management/features/person/presentation/widgets/person_menu_tile.dart';
import 'package:tanlu_management/features/person/presentation/widgets/person_sub_page_bar.dart';

class PersonSecurityPage extends StatelessWidget {
  const PersonSecurityPage({super.key});

  Future<void> _logout(BuildContext context) async {
    final confirmed = await AppConfirmDialog.show(
      context,
      title: 'Đăng xuất',
      content: 'Bạn có chắc chắn muốn đăng xuất không?',
      cancelLabel: 'Hủy',
      confirmLabel: 'Đăng xuất',
      type: AppConfirmDialogType.warning,
    );
    if (confirmed == true && context.mounted) {
      context.read<AppBloc>().add(const AppEvent.loggedOut());
    }
  }

  @override
  Widget build(BuildContext context) {
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
                value: 'coha.sunflower',
                showChevron: false,
                onTap: () {},
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
          SizedBox(height: 24.h),
          AppPrimaryButton(
            label: 'Đăng xuất tài khoản',
            onPressed: () => _logout(context),
          ),
          SizedBox(height: 12.h),
          Center(
            child: AppText.b2(
              'Phiên đăng nhập hiện tại sẽ kết thúc',
              color: AppColors.grayMedium,
              fontSize: 12.sp,
            ),
          ),
        ],
      ),
    );
  }
}
