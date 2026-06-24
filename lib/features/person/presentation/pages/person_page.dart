import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/features/app/presentation/bloc/app_bloc.dart';
import 'package:tanlu_management/features/person/presentation/pages/person_about_page.dart';
import 'package:tanlu_management/features/person/presentation/pages/person_notifications_page.dart';
import 'package:tanlu_management/features/person/presentation/pages/person_preferences_page.dart';
import 'package:tanlu_management/features/person/presentation/pages/person_profile_page.dart';
import 'package:tanlu_management/features/person/presentation/pages/person_security_page.dart';
import 'package:tanlu_management/features/person/presentation/widgets/person_menu_tile.dart';
import 'package:tanlu_management/features/person/presentation/widgets/person_profile_header.dart';

class PersonPage extends StatelessWidget {
  const PersonPage({super.key});

  void _open(BuildContext context, Widget page) {
    Navigator.of(context).push(MaterialPageRoute(builder: (_) => page));
  }

  @override
  Widget build(BuildContext context) {
    final user = context.read<AppBloc>().currentUser;

    return Scaffold(
      backgroundColor: AppColors.grayBg,
      body: Column(
        children: [
          PersonProfileHeader(user: user),
          Expanded(
            child: ListView(
              padding: EdgeInsets.fromLTRB(16.w, 20.h, 16.w, 24.h),
              children: [
                _AccountCard(
                  onTap: () => _open(context, PersonProfilePage(user: user)),
                ),
                SizedBox(height: 16.h),
                PersonMenuGroup(
                  children: [
                    PersonMenuTile(
                      icon: Icons.person_outline_rounded,
                      title: 'Thông tin cá nhân',
                      showDivider: true,
                      onTap: () => _open(context, PersonProfilePage(user: user)),
                    ),
                    PersonMenuTile(
                      icon: Icons.shield_outlined,
                      title: 'Tài khoản và bảo mật',
                      showDivider: true,
                      onTap: () => _open(context, const PersonSecurityPage()),
                    ),
                    PersonMenuTile(
                      icon: Icons.notifications_none_rounded,
                      title: 'Thông báo',
                      showDivider: true,
                      onTap: () => _open(context, const PersonNotificationsPage()),
                    ),
                    PersonMenuTile(
                      icon: Icons.tune_rounded,
                      title: 'Ngôn ngữ & giao diện',
                      value: 'Tiếng Việt · Sáng',
                      showDivider: true,
                      onTap: () => _open(context, const PersonPreferencesPage()),
                    ),
                    PersonMenuTile(
                      icon: Icons.info_outline_rounded,
                      title: 'Giới thiệu ứng dụng',
                      showDivider: false,
                      onTap: () => _open(context, const PersonAboutPage()),
                    ),
                  ],
                ),
                SizedBox(height: 24.h),
                Center(
                  child: AppText.b2(
                    'Phiên bản 1.0.0',
                    color: AppColors.grayMedium,
                    fontSize: 12.sp,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _AccountCard extends StatelessWidget {
  const _AccountCard({required this.onTap});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(14.r),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: EdgeInsets.all(16.w),
          child: Row(
            children: [
              Container(
                width: 44.w,
                height: 44.w,
                decoration: BoxDecoration(
                  color: AppColors.primaryLight,
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Icon(Icons.badge_outlined, color: AppColors.primary),
              ),
              SizedBox(width: 12.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText.b1(
                      'Tài khoản của bạn',
                      fontWeight: FontWeight.w700,
                      fontSize: 15.sp,
                      color: AppColors.grayDark,
                    ),
                    SizedBox(height: 2.h),
                    AppText.b2(
                      'Xem và quản lý thông tin cá nhân',
                      color: AppColors.grayMedium,
                      fontSize: 12.sp,
                    ),
                  ],
                ),
              ),
              Icon(Icons.chevron_right_rounded, color: AppColors.grayLight),
            ],
          ),
        ),
      ),
    );
  }
}
