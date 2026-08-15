import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_confirm_dialog.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/features/app/presentation/bloc/app_bloc.dart';
import 'package:tanlu_management/features/auth/domain/entity/user.dart';
import 'package:tanlu_management/features/person/presentation/pages/person_language_page.dart';
import 'package:tanlu_management/features/person/presentation/pages/person_profile_page.dart';
import 'package:tanlu_management/features/person/presentation/pages/person_security_page.dart';
import 'package:tanlu_management/features/person/presentation/widgets/person_menu_tile.dart';
import 'package:tanlu_management/features/person/presentation/widgets/person_profile_header.dart';
import 'package:tanlu_management/core/base/base_page_state.dart';
import 'package:tanlu_management/core/base/default_bloc.dart';
import 'package:tanlu_management/l10n/l10n.dart';

class PersonPage extends StatefulWidget {
  const PersonPage({super.key});

  @override
  State<PersonPage> createState() => _PersonPageState();
}

class _PersonPageState extends BasePageState<PersonPage, DefaultBloc> {
  bool _notificationsEnabled = true;
  String _version = '';

  User? get _user => context.read<AppBloc>().currentUser;

  @override
  void initState() {
    super.initState();
    _loadVersion();
  }

  Future<void> _loadVersion() async {
    final info = await PackageInfo.fromPlatform();
    if (mounted) setState(() => _version = info.version);
  }

  void _open(Widget page) {
    Navigator.of(
      context,
      rootNavigator: true,
    ).push(MaterialPageRoute(builder: (_) => page));
  }

  Future<void> _openLanguage() async {
    await Navigator.of(
      context,
    ).push(MaterialPageRoute(builder: (_) => const PersonLanguagePage()));
    if (!mounted) return;
    setState(() {});
  }

  Future<void> _onLogout() async {
    final confirmed = await AppConfirmDialog.show(
      context,
      title: context.l10n.logout,
      content: context.l10n.logoutConfirmMsg,
      cancelLabel: context.l10n.cancel,
      confirmLabel: context.l10n.logout,
      type: AppConfirmDialogType.warning,
    );
    if (confirmed == true && mounted) {
      context.read<AppBloc>().add(const AppEvent.loggedOut());
    }
  }

  @override
  Widget buildPage(BuildContext context) {
    final user = _user;
    final localeName = context.l10n.localeName;

    return Scaffold(
      backgroundColor: AppColors.grayBg,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.only(bottom: 10.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    // ── Header ──────────────────────────────────────
                    PersonProfileHeader(
                      user: user,
                      onEditTap: () => _open(PersonProfilePage(user: user)),
                    ),

                    SizedBox(height: 20.h),

                    // ── Section: Tài khoản ──────────────────────────
                    _SectionLabel(label: context.l10n.accountAndSecurity),
                    SizedBox(height: 8.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      child: PersonMenuGroup(
                        children: [
                          PersonMenuTile(
                            icon: Icons.person_outline_rounded,
                            title: context.l10n.personalInfo,
                            iconColor: const Color(0xFF5C6BC0),
                            onTap: () => _open(PersonProfilePage(user: user)),
                          ),
                          PersonMenuTile(
                            icon: Icons.lock_outline_rounded,
                            title: context.l10n.accountAndSecurity,
                            iconColor: const Color(0xFF26A69A),
                            showDivider: false,
                            onTap: () => _open(const PersonSecurityPage()),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 20.h),

                    // ── Section: Cài đặt ─────────────────────────────
                    _SectionLabel(label: context.l10n.language),
                    SizedBox(height: 8.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      child: PersonMenuGroup(
                        children: [
                          PersonMenuTile(
                            icon: Icons.language_rounded,
                            title: context.l10n.language,
                            iconColor: const Color(0xFFEF5350),
                            value: localeName == 'en'
                                ? context.l10n.english
                                : context.l10n.vietnamese,
                            onTap: _openLanguage,
                          ),
                          PersonMenuSwitchTile(
                            icon: Icons.notifications_outlined,
                            title: context.l10n.notifications,
                            value: _notificationsEnabled,
                            showDivider: false,
                            onChanged: (v) =>
                                setState(() => _notificationsEnabled = v),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // ── Bottom Fixed Area ────────────────────────────
            Padding(
              padding: EdgeInsets.fromLTRB(16.w, 8.h, 16.w, 32.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  _LogoutButton(onTap: _onLogout),
                  if (_version.isNotEmpty) ...[
                    SizedBox(height: 16.h),
                    AppText.b2(
                      context.l10n.version(_version),
                      color: AppColors.grayMedium,
                      fontSize: 10.sp,
                    ),
                  ],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ── Private widgets ──────────────────────────────────────────────────────────

class _SectionLabel extends StatelessWidget {
  const _SectionLabel({required this.label});
  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Text(
        label.toUpperCase(),
        style: TextStyle(
          fontSize: 10.sp,
          fontWeight: FontWeight.w700,
          color: AppColors.grayMedium,
          letterSpacing: 0.8,
        ),
      ),
    );
  }
}

class _LogoutButton extends StatelessWidget {
  const _LogoutButton({required this.onTap});
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.primary,
      borderRadius: BorderRadius.circular(14.r),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(14.r),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
          child: Row(
            children: [
              Container(
                width: 36.w,
                height: 36.w,
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Icon(
                  Icons.logout_rounded,
                  size: 24.w,
                  color: AppColors.primary,
                ),
              ),
              SizedBox(width: 12.w),
              Expanded(
                child: AppText.b1(
                  context.l10n.logout,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
