import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/base/base_page_state.dart';
import 'package:tanlu_management/core/base/default_bloc.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/features/app/presentation/bloc/app_locale_cubit.dart';
import 'package:tanlu_management/features/person/presentation/widgets/person_sub_page_bar.dart';
import 'package:tanlu_management/l10n/l10n.dart';

class PersonLanguagePage extends StatefulWidget {
  const PersonLanguagePage({super.key});

  @override
  State<PersonLanguagePage> createState() => _PersonLanguagePageState();
}

class _PersonLanguagePageState
    extends BasePageState<PersonLanguagePage, DefaultBloc> {
  @override
  Widget buildPage(BuildContext context) {
    final currentLanguage = context.watch<AppLocaleCubit>().state.languageCode;

    return Scaffold(
      backgroundColor: AppColors.grayBg,
      appBar: PersonSubPageBar(title: context.l10n.language),
      body: ListView(
        padding: EdgeInsets.fromLTRB(16.w, 20.h, 16.w, 32.h),
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(14.r),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.05),
                  blurRadius: 10,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Column(
              children: [
                _LanguageTile(
                  emoji: '🇻🇳',
                  label: 'Tiếng Việt',
                  sublabel: 'Vietnamese',
                  value: 'vi',
                  groupValue: currentLanguage,
                  showDivider: true,
                  onTap: () =>
                      context.read<AppLocaleCubit>().changeLanguage('vi'),
                ),
                _LanguageTile(
                  emoji: '🇬🇧',
                  label: 'Tiếng Anh',
                  sublabel: 'English',
                  value: 'en',
                  groupValue: currentLanguage,
                  showDivider: false,
                  onTap: () =>
                      context.read<AppLocaleCubit>().changeLanguage('en'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _LanguageTile extends StatelessWidget {
  const _LanguageTile({
    required this.emoji,
    required this.label,
    required this.sublabel,
    required this.value,
    required this.groupValue,
    required this.onTap,
    this.showDivider = true,
  });

  final String emoji;
  final String label;
  final String sublabel;
  final String value;
  final String groupValue;
  final VoidCallback onTap;
  final bool showDivider;

  bool get _isSelected => value == groupValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: onTap,
            borderRadius: BorderRadius.circular(14.r),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
              child: Row(
                children: [
                  // Flag emoji in a box
                  Container(
                    width: 40.w,
                    height: 40.w,
                    decoration: BoxDecoration(
                      color: _isSelected
                          ? AppColors.primary.withValues(alpha: 0.08)
                          : AppColors.grayVeryLight,
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    alignment: Alignment.center,
                    child: Text(emoji, style: TextStyle(fontSize: 22.sp)),
                  ),
                  SizedBox(width: 12.w),
                  // Labels
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppText.b1(
                          label,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w700,
                          color: _isSelected
                              ? AppColors.primary
                              : AppColors.grayDark,
                        ),
                        SizedBox(height: 2.h),
                        AppText.b2(
                          sublabel,
                          fontSize: 10.sp,
                          color: AppColors.grayMedium,
                        ),
                      ],
                    ),
                  ),
                  // Check indicator
                  AnimatedSwitcher(
                    duration: const Duration(milliseconds: 200),
                    child: _isSelected
                        ? Container(
                            key: const ValueKey('check'),
                            width: 24.w,
                            height: 24.w,
                            decoration: BoxDecoration(
                              color: AppColors.primary,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.check_rounded,
                              size: 14.w,
                              color: Colors.white,
                            ),
                          )
                        : SizedBox(
                            key: const ValueKey('empty'),
                            width: 24.w,
                            height: 24.w,
                          ),
                  ),
                ],
              ),
            ),
          ),
        ),
        if (showDivider)
          Divider(
            height: 1,
            indent: 68.w,
            endIndent: 16.w,
            color: AppColors.grayVeryLight,
          ),
      ],
    );
  }
}
