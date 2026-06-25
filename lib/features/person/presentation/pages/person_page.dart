import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/constants/storage_keys.dart';
import 'package:tanlu_management/core/di/injection_container.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/utils/shared_prefs_helper.dart';
import 'package:tanlu_management/core/widgets/app_confirm_dialog.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/core/widgets/buttons/app_primary_button.dart';
import 'package:tanlu_management/features/app/presentation/bloc/app_bloc.dart';
import 'package:tanlu_management/features/person/domain/usecases/get_class_name_use_case.dart';
import 'package:tanlu_management/features/person/presentation/pages/person_language_page.dart';
import 'package:tanlu_management/features/person/presentation/pages/person_profile_page.dart';
import 'package:tanlu_management/features/person/presentation/pages/person_security_page.dart';
import 'package:tanlu_management/features/person/presentation/widgets/person_menu_tile.dart';
import 'package:tanlu_management/features/person/presentation/widgets/person_profile_header.dart';

class PersonPage extends StatefulWidget {
  const PersonPage({super.key});

  @override
  State<PersonPage> createState() => _PersonPageState();
}

class _PersonPageState extends State<PersonPage> {
  String? _className;
  bool _notificationsEnabled = true;
  String _languageLabel = 'Tiếng Việt';

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _load());
  }

  Future<void> _load() async {
    final prefs = sl<SharedPrefsHelper>();
    final locale = prefs.getString(StorageKeys.locale) ?? 'vi';
    final notifications =
        prefs.getBool(StorageKeys.notificationsEnabled) ?? true;

    final user = context.read<AppBloc>().currentUser;
    var className = '';
    final classId = user?.classId;
    if (classId != null && classId.isNotEmpty) {
      final output = await sl<GetClassNameUseCase>().execute(
        GetClassNameInput(classId: classId),
      );
      className = output.className;
    }

    if (!mounted) return;
    setState(() {
      _className = className.isEmpty ? null : className;
      _notificationsEnabled = notifications;
      _languageLabel = locale == 'en' ? 'English' : 'Tiếng Việt';
    });
  }

  void _open(Widget page) {
    Navigator.of(context, rootNavigator: true).push(
      MaterialPageRoute(builder: (_) => page),
    );
  }

  Future<void> _openLanguage() async {
    await Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => const PersonLanguagePage()),
    );
    _load();
  }

  Future<void> _onNotificationsChanged(bool enabled) async {
    context.read<AppBloc>().add(
      AppEvent.notificationsEnabledChanged(enabled),
    );
    if (!mounted) return;
    setState(() => _notificationsEnabled = enabled);
  }

  Future<void> _logout() async {
    final confirmed = await AppConfirmDialog.show(
      context,
      title: 'Đăng xuất',
      content: 'Bạn có chắc chắn muốn đăng xuất không?',
      cancelLabel: 'Hủy',
      confirmLabel: 'Đăng xuất',
      type: AppConfirmDialogType.warning,
    );
    if (confirmed == true && mounted) {
      context.read<AppBloc>().add(const AppEvent.loggedOut());
    }
  }

  @override
  Widget build(BuildContext context) {
    final user = context.read<AppBloc>().currentUser;

    return Scaffold(
      backgroundColor: AppColors.grayBg,
      body: Column(
        children: [
          PersonProfileHeader(
            user: user,
            className: _className,
            onEditTap: () => _open(
              PersonProfilePage(user: user, className: _className),
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.fromLTRB(16.w, 4.h, 16.w, 16.h),
              children: [
                PersonMenuGroup(
                  children: [
                    PersonMenuTile(
                      icon: Icons.person_outline_rounded,
                      title: 'Thông tin cá nhân',
                      onTap: () => _open(
                        PersonProfilePage(user: user, className: _className),
                      ),
                    ),
                    PersonMenuTile(
                      icon: Icons.shield_outlined,
                      title: 'Tài khoản và bảo mật',
                      onTap: () => _open(const PersonSecurityPage()),
                    ),
                    PersonMenuSwitchTile(
                      icon: Icons.notifications_none_rounded,
                      title: 'Thông báo',
                      value: _notificationsEnabled,
                      onChanged: _onNotificationsChanged,
                    ),
                    PersonMenuTile(
                      icon: Icons.language_rounded,
                      title: 'Ngôn ngữ',
                      value: _languageLabel,
                      showDivider: false,
                      onTap: _openLanguage,
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
          Padding(
            padding: EdgeInsets.fromLTRB(16.w, 0, 16.w, 24.h),
            child: AppPrimaryButton(
              label: 'Đăng xuất',
              onPressed: _logout,
            ),
          ),
        ],
      ),
    );
  }
}
