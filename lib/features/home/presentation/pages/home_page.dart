import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/features/app/presentation/bloc/app_bloc.dart';
import 'package:tanlu_management/features/chat/presentation/bloc/chat_bloc.dart';

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

          final visibleBranches = isParent ? [2, 3, 4, 5] : [7, 0, 1, 6, 4, 5];

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
                    return IconThemeData(color: AppColors.primary, size: 20);
                  }
                  return IconThemeData(color: Color(0xFF999999), size: 20);
                }),
                labelTextStyle: WidgetStateProperty.resolveWith((states) {
                  final isSelected = states.contains(WidgetState.selected);
                  return AppText.styleOf(context, StyleEnum.l1)!.copyWith(
                    fontWeight: isSelected ? FontWeight.w700 : FontWeight.w500,
                    color: isSelected
                        ? AppColors.primary
                        : const Color(0xFF999999),
                    fontSize: 10.sp,
                  );
                }),
              ),
              child: BlocBuilder<ChatBloc, ChatState>(
                builder: (context, chatState) {
                  final currentUser = context.read<AppBloc>().currentUser;
                  final unreadCount = chatState.conversations.fold<int>(
                    0,
                    (sum, conv) =>
                        sum +
                        conv.messages
                            .where(
                              (m) => !m.isRead && m.senderId != currentUser?.id,
                            )
                            .length,
                  );

                  Widget buildChatIcon({required bool selected}) {
                    final icon = Icon(
                      selected
                          ? Icons.chat_bubble_rounded
                          : Icons.chat_bubble_outline_rounded,
                    );
                    if (unreadCount == 0) return icon;
                    return Badge(
                      label: Text(
                        unreadCount > 99 ? '99+' : unreadCount.toString(),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                        ),
                      ),
                      backgroundColor: AppColors.error,
                      child: icon,
                    );
                  }

                  return NavigationBar(
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
                            NavigationDestination(
                              icon: buildChatIcon(selected: false),
                              selectedIcon: buildChatIcon(selected: true),
                              label: 'Tin nhắn',
                            ),
                            NavigationDestination(
                              icon: Icon(Icons.person_outline_rounded),
                              selectedIcon: Icon(Icons.person_rounded),
                              label: 'Tài khoản',
                            ),
                          ]
                        : [
                            NavigationDestination(
                              icon: Icon(Icons.dashboard_outlined),
                              selectedIcon: Icon(Icons.dashboard_rounded),
                              label: 'Tổng quan',
                            ),
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
                            NavigationDestination(
                              icon: buildChatIcon(selected: false),
                              selectedIcon: buildChatIcon(selected: true),
                              label: 'Tin nhắn',
                            ),
                            NavigationDestination(
                              icon: Icon(Icons.person_outline_rounded),
                              selectedIcon: Icon(Icons.person_rounded),
                              label: 'Cá nhân',
                            ),
                          ],
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
