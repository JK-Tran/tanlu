import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/features/person/presentation/widgets/person_menu_tile.dart';
import 'package:tanlu_management/features/person/presentation/widgets/person_sub_page_bar.dart';

class PersonNotificationsPage extends StatefulWidget {
  const PersonNotificationsPage({super.key});

  @override
  State<PersonNotificationsPage> createState() =>
      _PersonNotificationsPageState();
}

class _PersonNotificationsPageState extends State<PersonNotificationsPage> {
  bool _allowAll = true;
  bool _classNoti = true;
  bool _feedNoti = true;
  bool _chatNoti = true;
  bool _systemNoti = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.grayBg,
      appBar: const PersonSubPageBar(title: 'Thông báo'),
      body: ListView(
        padding: EdgeInsets.all(16.w),
        children: [
          PersonMenuGroup(
            children: [
              _ToggleTile(
                title: 'Cho phép thông báo',
                subtitle: 'Bật/tắt toàn bộ thông báo',
                value: _allowAll,
                onChanged: (v) => setState(() => _allowAll = v),
                showDivider: true,
              ),
              _ToggleTile(
                title: 'Thông báo lớp học',
                value: _classNoti && _allowAll,
                onChanged: (v) => setState(() => _classNoti = v),
                enabled: _allowAll,
                showDivider: true,
              ),
              _ToggleTile(
                title: 'Bài viết & bình luận',
                value: _feedNoti && _allowAll,
                onChanged: (v) => setState(() => _feedNoti = v),
                enabled: _allowAll,
                showDivider: true,
              ),
              _ToggleTile(
                title: 'Tin nhắn',
                value: _chatNoti && _allowAll,
                onChanged: (v) => setState(() => _chatNoti = v),
                enabled: _allowAll,
                showDivider: true,
              ),
              _ToggleTile(
                title: 'Thông báo hệ thống',
                value: _systemNoti && _allowAll,
                onChanged: (v) => setState(() => _systemNoti = v),
                enabled: _allowAll,
                showDivider: false,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _ToggleTile extends StatelessWidget {
  const _ToggleTile({
    required this.title,
    required this.value,
    required this.onChanged,
    this.subtitle,
    this.enabled = true,
    this.showDivider = true,
  });

  final String title;
  final String? subtitle;
  final bool value;
  final bool enabled;
  final bool showDivider;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SwitchListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 16.w),
          title: AppText.b1(
            title,
            fontSize: 14.sp,
            fontWeight: FontWeight.w600,
            color: enabled ? AppColors.grayDark : AppColors.grayMedium,
          ),
          subtitle: subtitle == null
              ? null
              : AppText.b2(
                  subtitle!,
                  fontSize: 12.sp,
                  color: AppColors.grayMedium,
                ),
          value: value,
          activeThumbColor: Colors.white,
          activeTrackColor: AppColors.primary,
          onChanged: enabled ? onChanged : null,
        ),
        if (showDivider)
          Divider(
            height: 1,
            indent: 16.w,
            endIndent: 16.w,
            color: AppColors.grayVeryLight,
          ),
      ],
    );
  }
}
