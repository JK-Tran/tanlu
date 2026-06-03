import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/features/app/presentation/bloc/app_bloc.dart';
import 'package:tanlu_management/features/auth/domain/entity/user.dart'
    hide Center;

class PersonPage extends StatelessWidget {
  const PersonPage({super.key});

  @override
  Widget build(BuildContext context) {
    final currentUser = context.read<AppBloc>().currentUser;

    return Scaffold(
      backgroundColor: AppColors.grayBg,
      body: Column(
        children: [
          // Fixed Header Background
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(32.r),
                bottomRight: Radius.circular(32.r),
              ),
            ),
            child: SafeArea(
              bottom: false,
              child: Column(
                children: [
                  // Custom AppBar Row
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.0.w,
                      vertical: 12.0.h,
                    ),
                    child: Center(
                      child: Text(
                        'Cá nhân',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),

                  // Avatar
                  Container(
                    width: 80.w,
                    height: 80.h,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 3.w),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: 0.1),
                          blurRadius: 10,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    alignment: Alignment.center,
                    child: currentUser?.avatarFileId.isNotEmpty == true
                        ? ClipOval(
                            child: Image.network(
                              currentUser!.avatarFileId,
                              fit: BoxFit.cover,
                              width: 80.w,
                              height: 80.h,
                            ),
                          )
                        : Text(
                            currentUser?.fullName.isNotEmpty == true
                                ? currentUser!.fullName
                                      .split(' ')
                                      .last[0]
                                      .toUpperCase()
                                : 'U',
                            style: TextStyle(
                              color: AppColors.primary,
                              fontSize: 32.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                  ),
                  SizedBox(height: 16.h),
                  // Name
                  Text(
                    currentUser?.fullName ?? 'Người dùng',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 6.h),
                  // Role / Job title
                  Text(
                    currentUser?.role.name.isNotEmpty == true
                        ? currentUser!.role.name
                        : 'Giáo viên',
                    style: TextStyle(
                      color: Colors.white.withValues(alpha: 0.9),
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 32.h),
                ],
              ),
            ),
          ),

          // Scrollable Settings List
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              padding: EdgeInsets.symmetric(
                horizontal: 16.0.w,
                vertical: 24.0.h,
              ),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16.r),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: 0.02),
                          blurRadius: 10,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        _buildSettingRow(
                          icon: Icons.person_outline_rounded,
                          title: 'Thông tin cá nhân',
                          onTap: () =>
                              _showPersonalInfoModal(context, currentUser),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16.h),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16.r),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: 0.02),
                          blurRadius: 10,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: _buildSettingRow(
                      icon: Icons.logout_rounded,
                      title: 'Đăng xuất',
                      iconColor: AppColors.error,
                      titleColor: AppColors.error,
                      showChevron: false,
                      onTap: () => _showLogoutConfirmDialog(context),
                    ),
                  ),
                  SizedBox(height: 32.h),
                  Text(
                    'Phiên bản 1.0.0',
                    style: TextStyle(fontSize: 14.sp, color: Color(0xFF8E8E93)),
                  ),
                  SizedBox(height: 32.h),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSettingRow({
    required IconData icon,
    required String title,
    String? value,
    Color iconColor = const Color(0xFF8E8E93),
    Color titleColor = const Color(0xFF1C1C1E),
    bool showChevron = true,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16.r),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        child: Row(
          children: [
            Icon(icon, size: 24, color: iconColor),
            SizedBox(width: 16.w),
            Expanded(
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: titleColor,
                ),
              ),
            ),
            if (value != null) ...[
              Text(
                value,
                style: TextStyle(fontSize: 14.sp, color: Color(0xFF8E8E93)),
              ),
              SizedBox(width: 8.w),
            ],
            if (showChevron)
              Icon(
                Icons.chevron_right_rounded,
                color: Color(0xFFC7C7CC),
                size: 24,
              ),
          ],
        ),
      ),
    );
  }

  void _showPersonalInfoModal(BuildContext context, User? user) {
    if (user == null) return;

    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24.r)),
      ),
      builder: (context) {
        return Padding(
          padding: EdgeInsets.only(
            left: 24.0.w,
            right: 24.0.w,
            top: 24.0.h,
            bottom: MediaQuery.of(context).padding.bottom + 24.0,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Thông tin cá nhân',
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF1C1C1E),
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.close_rounded, color: Color(0xFF8E8E93)),
                    onPressed: () => Navigator.pop(context),
                  ),
                ],
              ),
              SizedBox(height: 16.h),
              _buildInfoDetailRow(
                Icons.person_outline_rounded,
                'Họ và tên',
                user.fullName,
              ),
              Divider(height: 32.h, color: Color(0xFFF2F2F7)),
              _buildInfoDetailRow(
                Icons.phone_outlined,
                'Số điện thoại',
                user.phone.isNotEmpty ? user.phone : 'Chưa cập nhật',
              ),
              Divider(height: 32.h, color: Color(0xFFF2F2F7)),
              _buildInfoDetailRow(
                Icons.email_outlined,
                'Email',
                user.email.isNotEmpty ? user.email : 'Chưa cập nhật',
              ),
              Divider(height: 32.h, color: Color(0xFFF2F2F7)),
              _buildInfoDetailRow(
                Icons.school_outlined,
                'Trường',
                user.center.name.isNotEmpty
                    ? user.center.name
                    : 'Chưa cập nhật',
              ),
              SizedBox(height: 8.h),
            ],
          ),
        );
      },
    );
  }

  Widget _buildInfoDetailRow(IconData icon, String title, String value) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.all(10.w),
          decoration: BoxDecoration(
            color: AppColors.primaryLight,
            shape: BoxShape.circle,
          ),
          child: Icon(icon, color: AppColors.primary, size: 22),
        ),
        SizedBox(width: 16.w),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 13.sp,
                  color: Color(0xFF8E8E93),
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 4.h),
              Text(
                value,
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF1C1C1E),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  void _showLogoutConfirmDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.r),
        ),
        title: Text('Đăng xuất', style: TextStyle(fontWeight: FontWeight.bold)),
        content: Text('Bạn có chắc chắn muốn đăng xuất không?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            style: TextButton.styleFrom(
              foregroundColor: const Color(0xFF8E8E93),
            ),
            child: Text('Hủy', style: TextStyle(fontWeight: FontWeight.w600)),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(ctx);
              context.read<AppBloc>().add(const AppEvent.loggedOut());
            },
            style: TextButton.styleFrom(foregroundColor: AppColors.error),
            child: Text(
              'Đăng xuất',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
