import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/features/attendance/presentation/widgets/attendance_avatar.dart';
import 'package:tanlu_management/features/auth/domain/entity/user.dart';
import 'package:tanlu_management/features/person/presentation/widgets/person_info_tile.dart';
import 'package:tanlu_management/features/person/presentation/widgets/person_menu_tile.dart';
import 'package:tanlu_management/features/person/presentation/widgets/person_sub_page_bar.dart';

class PersonProfilePage extends StatelessWidget {
  const PersonProfilePage({super.key, required this.user});

  final User? user;

  @override
  Widget build(BuildContext context) {
    final name = user?.fullName.isNotEmpty == true
        ? user!.fullName
        : 'Nguyễn Thị Mai';

    return Scaffold(
      backgroundColor: AppColors.grayBg,
      appBar: const PersonSubPageBar(title: 'Thông tin cá nhân'),
      body: ListView(
        padding: EdgeInsets.all(16.w),
        children: [
          Center(
            child: AttendanceAvatar(
              nickname: name,
              imageUrl: user?.avatar,
              size: 88,
            ),
          ),
          SizedBox(height: 20.h),
          PersonMenuGroup(
            children: [
              PersonInfoTile(
                icon: Icons.person_outline_rounded,
                label: 'Họ và tên',
                value: name,
              ),
              PersonInfoTile(
                icon: Icons.phone_outlined,
                label: 'Số điện thoại',
                value: user?.phone?.isNotEmpty == true
                    ? user!.phone!
                    : '0901 234 567',
              ),
              PersonInfoTile(
                icon: Icons.email_outlined,
                label: 'Email',
                value: user?.email.isNotEmpty == true
                    ? user!.email
                    : 'mai.nguyen@tanlu.edu.vn',
              ),
              PersonInfoTile(
                icon: Icons.school_outlined,
                label: 'Vai trò',
                value: user?.role == 'parent' ? 'Phụ huynh' : 'Giáo viên',
              ),
              PersonInfoTile(
                icon: Icons.class_outlined,
                label: 'Lớp phụ trách',
                value: 'Lớp Mầm 2 - SUNFLOWER',
                showDivider: false,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
