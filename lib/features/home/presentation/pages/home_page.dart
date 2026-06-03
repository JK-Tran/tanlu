import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/features/app/presentation/bloc/app_bloc.dart';

class HomePage extends StatelessWidget {
  final StatefulNavigationShell navigationShell;

  const HomePage({super.key, required this.navigationShell});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: BlocBuilder<AppBloc, AppState>(
        builder: (context, state) {
          final isParent = state.maybeWhen(
            authenticated: (user) => user.role.code.toUpperCase() == 'PARENT',
            orElse: () => false,
          );

          final visibleBranches = isParent
              ? [2, 3, 5]
              : [0, 1, 6, 5];

          final selectedIndex = visibleBranches.indexOf(
            navigationShell.currentIndex,
          );
          final safeSelectedIndex = selectedIndex >= 0 ? selectedIndex : 0;

          return Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.04),
                  blurRadius: 20,
                  offset: const Offset(0, -4),
                ),
              ],
            ),
            child: NavigationBarTheme(
              data: NavigationBarThemeData(
                elevation: 0,
                height: 72.h,
                backgroundColor: Colors.white,
                indicatorColor: AppColors.primary.withValues(alpha: 0.15),
                labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
                iconTheme: WidgetStateProperty.resolveWith((states) {
                  if (states.contains(WidgetState.selected)) {
                    return IconThemeData(
                      color: AppColors.primary,
                      size: 26,
                    );
                  }
                  return IconThemeData(
                    color: Color(0xFF999999),
                    size: 24,
                  );
                }),
                labelTextStyle: WidgetStateProperty.resolveWith((states) {
                  final isSelected = states.contains(WidgetState.selected);
                  return AppText.styleOf(context, StyleEnum.l1)!.copyWith(
                    fontWeight: isSelected ? FontWeight.w700 : FontWeight.w500,
                    color: isSelected
                        ? AppColors.primary
                        : const Color(0xFF999999),
                  );
                }),
              ),
              child: NavigationBar(
                selectedIndex: safeSelectedIndex,
                onDestinationSelected: (index) {
                  final targetBranch = visibleBranches[index];
                  navigationShell.goBranch(
                    targetBranch,
                    initialLocation:
                        targetBranch == navigationShell.currentIndex,
                  );
                },
                destinations: isParent
                    ? [
                        NavigationDestination(
                          icon: Icon(Icons.trending_up_outlined),
                          selectedIcon: Icon(Icons.trending_up_rounded),
                          label: 'Tiến trình',
                        ),
                        NavigationDestination(
                          icon: Icon(Icons.local_activity_outlined),
                          selectedIcon: Icon(Icons.local_activity_rounded),
                          label: 'Hoạt động',
                        ),
                        // NavigationDestination(
                        //   icon: Icon(Icons.chat_bubble_outline_rounded),
                        //   selectedIcon: Icon(Icons.chat_bubble_rounded),
                        //   label: 'Tin nhắn',
                        // ),
                        NavigationDestination(
                          icon: Icon(Icons.person_outline_rounded),
                          selectedIcon: Icon(Icons.person_rounded),
                          label: 'Tài khoản',
                        ),
                      ]
                    : [
                        NavigationDestination(
                          icon: Icon(Icons.child_care_outlined),
                          selectedIcon: Icon(Icons.child_care_rounded),
                          label: 'Học sinh',
                        ),
                        NavigationDestination(
                          icon: Icon(Icons.menu_book_outlined),
                          selectedIcon: Icon(Icons.menu_book_rounded),
                          label: 'Báo cáo',
                        ),
                        NavigationDestination(
                          icon: Icon(Icons.library_books_outlined),
                          selectedIcon: Icon(Icons.library_books_rounded),
                          label: 'Giáo trình',
                        ),
                        // NavigationDestination(
                        //   icon: Icon(Icons.chat_bubble_outline_rounded),
                        //   selectedIcon: Icon(Icons.chat_bubble_rounded),
                        //   label: 'Tin nhắn',
                        // ),
                        NavigationDestination(
                          icon: Icon(Icons.person_outline_rounded),
                          selectedIcon: Icon(Icons.person_rounded),
                          label: 'Tài khoản',
                        ),
                      ],
              ),
            ),
          );
        },
      ),
    );
  }
}
