import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/constants/storage_keys.dart';
import 'package:tanlu_management/core/di/injection_container.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/utils/shared_prefs_helper.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/features/person/presentation/widgets/person_menu_tile.dart';
import 'package:tanlu_management/features/person/presentation/widgets/person_sub_page_bar.dart';

class PersonLanguagePage extends StatefulWidget {
  const PersonLanguagePage({super.key});

  @override
  State<PersonLanguagePage> createState() => _PersonLanguagePageState();
}

class _PersonLanguagePageState extends State<PersonLanguagePage> {
  late String _language;

  @override
  void initState() {
    super.initState();
    _language = sl<SharedPrefsHelper>().getString(StorageKeys.locale) ?? 'vi';
  }

  Future<void> _select(String code) async {
    await sl<SharedPrefsHelper>().setString(StorageKeys.locale, code);
    if (!mounted) return;
    setState(() => _language = code);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.grayBg,
      appBar: const PersonSubPageBar(title: 'Ngôn ngữ'),
      body: ListView(
        padding: EdgeInsets.all(16.w),
        children: [
          AppText.b2(
            'Chọn ngôn ngữ hiển thị trong ứng dụng',
            color: AppColors.grayMedium,
            fontSize: 13.sp,
          ),
          SizedBox(height: 12.h),
          PersonMenuGroup(
            children: [
              _LanguageTile(
                title: 'Tiếng Việt',
                selected: _language == 'vi',
                onTap: () => _select('vi'),
              ),
              _LanguageTile(
                title: 'English',
                selected: _language == 'en',
                showDivider: false,
                onTap: () => _select('en'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _LanguageTile extends StatelessWidget {
  const _LanguageTile({
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
