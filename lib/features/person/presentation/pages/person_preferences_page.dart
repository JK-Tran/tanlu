import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/features/person/presentation/widgets/person_menu_tile.dart';
import 'package:tanlu_management/features/person/presentation/widgets/person_sub_page_bar.dart';

class PersonPreferencesPage extends StatefulWidget {
  const PersonPreferencesPage({super.key});

  @override
  State<PersonPreferencesPage> createState() => _PersonPreferencesPageState();
}

class _PersonPreferencesPageState extends State<PersonPreferencesPage> {
  String _language = 'vi';
  String _theme = 'light';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.grayBg,
      appBar: const PersonSubPageBar(title: 'Ngôn ngữ & giao diện'),
      body: ListView(
        padding: EdgeInsets.all(16.w),
        children: [
          AppText.b1(
            'Ngôn ngữ',
            fontWeight: FontWeight.w700,
            fontSize: 14.sp,
            color: AppColors.grayDark,
          ),
          SizedBox(height: 8.h),
          PersonMenuGroup(
            children: [
              _RadioTile(
                title: 'Tiếng Việt',
                selected: _language == 'vi',
                onTap: () => setState(() => _language = 'vi'),
              ),
              _RadioTile(
                title: 'English',
                selected: _language == 'en',
                showDivider: false,
                onTap: () => setState(() => _language = 'en'),
              ),
            ],
          ),
          SizedBox(height: 20.h),
          AppText.b1(
            'Giao diện',
            fontWeight: FontWeight.w700,
            fontSize: 14.sp,
            color: AppColors.grayDark,
          ),
          SizedBox(height: 8.h),
          PersonMenuGroup(
            children: [
              _RadioTile(
                title: 'Sáng',
                selected: _theme == 'light',
                onTap: () => setState(() => _theme = 'light'),
              ),
              _RadioTile(
                title: 'Tối',
                selected: _theme == 'dark',
                showDivider: false,
                onTap: () => setState(() => _theme = 'dark'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _RadioTile extends StatelessWidget {
  const _RadioTile({
    required this.title,
    required this.selected,
    required this.onTap,
    this.showDivider = true,
  });

  final String title;
  final bool selected;
  final bool showDivider;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 16.w),
          title: AppText.b1(
            title,
            fontSize: 14.sp,
            fontWeight: FontWeight.w600,
            color: AppColors.grayDark,
          ),
          trailing: Icon(
            selected ? Icons.radio_button_checked : Icons.radio_button_off,
            color: selected ? AppColors.primary : AppColors.grayLight,
          ),
          onTap: onTap,
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
