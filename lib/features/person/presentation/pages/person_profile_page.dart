import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_avatar.dart';
import 'package:tanlu_management/features/auth/domain/entity/user.dart';
import 'package:tanlu_management/features/person/presentation/widgets/person_info_tile.dart';
import 'package:tanlu_management/features/person/presentation/widgets/person_menu_tile.dart';
import 'package:tanlu_management/features/person/presentation/widgets/person_sub_page_bar.dart';
import 'package:tanlu_management/l10n/l10n.dart';

class PersonProfilePage extends StatelessWidget {
  const PersonProfilePage({super.key, required this.user, this.className});

  final User? user;
  final String? className;

  @override
  Widget build(BuildContext context) {
    final name = user?.fullName.trim().isNotEmpty == true
        ? user!.fullName
        : '—';

    return Scaffold(
      backgroundColor: AppColors.grayBg,
      appBar: PersonSubPageBar(title: context.l10n.personalInfo),
      body: ListView(
        padding: EdgeInsets.all(16.w),
        children: [
          Center(
            child: AppAvatar(name: name,
              imageUrl: user?.avatarUrl,
              size: 88,
            ),
          ),
          SizedBox(height: 20.h),
          PersonMenuGroup(
            children: [
              PersonInfoTile(
                icon: Icons.person_outline_rounded,
                label: context.l10n.fullName,
                value: name,
              ),
              PersonInfoTile(
                icon: Icons.phone_outlined,
                label: context.l10n.phoneNumber,
                value: user?.phone.trim().isNotEmpty == true
                    ? user!.phone
                    : '—',
              ),
              PersonInfoTile(
                icon: Icons.email_outlined,
                label: 'Email',
                value: user?.email.trim().isNotEmpty == true
                    ? user!.email
                    : '—',
              ),
              PersonInfoTile(
                icon: Icons.school_outlined,
                label: context.l10n.role,
                value: user?.role == 'parent'
                    ? context.l10n.roleParent
                    : context.l10n.roleTeacher,
              ),
              Divider(height: 1, color: AppColors.grayLight),
              PersonInfoTile(
                icon: Icons.class_outlined,
                label: user?.role == 'parent'
                    ? context.l10n.classTitle
                    : context.l10n.assignedClass,
                value: className?.trim().isNotEmpty == true ? className! : '—',
                showDivider: false,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
