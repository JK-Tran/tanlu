import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/features/app/presentation/bloc/app_bloc.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.grayBg,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Cài đặt',
          style: TextStyle(
            color: Color(0xFF1C1C1E),
            fontSize: 20.sp,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        surfaceTintColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_rounded, color: Color(0xFF1C1C1E)),
          onPressed: () => context.pop(),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(height: 16.h),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16.w),
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
                    icon: Icons.notifications_none_rounded,
                    title: 'Thông báo',
                    onTap: () {},
                  ),
                  Divider(
                    height: 1.h,
                    indent: 48,
                    endIndent: 16,
                    color: Color(0xFFF2F2F7),
                  ),
                  _buildSettingRow(
                    icon: Icons.lock_outline_rounded,
                    title: 'Đổi mật khẩu',
                    onTap: () {},
                  ),
                  Divider(
                    height: 1.h,
                    indent: 48,
                    endIndent: 16,
                    color: Color(0xFFF2F2F7),
                  ),
                  _buildSettingRow(
                    icon: Icons.language_rounded,
                    title: 'Ngôn ngữ',
                    value: 'Tiếng Việt',
                    onTap: () {},
                  ),
                  Divider(
                    height: 1.h,
                    indent: 48,
                    endIndent: 16,
                    color: Color(0xFFF2F2F7),
                  ),
                  _buildSettingRow(
                    icon: Icons.wb_sunny_outlined,
                    title: 'Giao diện',
                    value: 'Sáng',
                    onTap: () {},
                  ),
                  Divider(
                    height: 1.h,
                    indent: 48,
                    endIndent: 16,
                    color: Color(0xFFF2F2F7),
                  ),
                  _buildSettingRow(
                    icon: Icons.help_outline_rounded,
                    title: 'Trợ giúp & Hỗ trợ',
                    onTap: () {},
                  ),
                  Divider(
                    height: 1.h,
                    indent: 48,
                    endIndent: 16,
                    color: Color(0xFFF2F2F7),
                  ),
                  _buildSettingRow(
                    icon: Icons.article_outlined,
                    title: 'Điều khoản sử dụng',
                    onTap: () {},
                  ),
                  Divider(
                    height: 1.h,
                    indent: 48,
                    endIndent: 16,
                    color: Color(0xFFF2F2F7),
                  ),
                  _buildSettingRow(
                    icon: Icons.logout_rounded,
                    title: 'Đăng xuất',
                    iconColor: AppColors.error,
                    titleColor: AppColors.error,
                    showChevron: false,
                    onTap: () => _showLogoutConfirmDialog(context),
                  ),
                ],
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
