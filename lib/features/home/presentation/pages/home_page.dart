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

          final visibleBranches = isParent ? [1, 1, 2, 3] : [4, 0, 5, 2, 3];

          final selectedIndex = visibleBranches.indexOf(
            navigationShell.currentIndex,
          );
          final safeSelectedIndex = selectedIndex >= 0 ? selectedIndex : 0;

          return SafeArea(
            child: Container(
              margin: EdgeInsets.only(left: 16.w, right: 16.w, bottom: 16.h),
              padding: EdgeInsets.symmetric(vertical: 8.h),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(36.r),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.08),
                    blurRadius: 24,
                    offset: const Offset(0, 8),
                  ),
                ],
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
                      color: selected ? AppColors.primary : const Color(0xFF999999),
                      size: 24.w,
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

                  void onItemTapped(int index) {
                    final targetBranch = visibleBranches[index];
                    navigationShell.goBranch(
                      targetBranch,
                      initialLocation: targetBranch == navigationShell.currentIndex,
                    );
                  }

                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: isParent
                        ? [
                            _buildNavItem(
                              icon: Icon(
                                safeSelectedIndex == 0
                                    ? Icons.trending_up_rounded
                                    : Icons.trending_up_outlined,
                                color: safeSelectedIndex == 0 ? AppColors.primary : const Color(0xFF999999),
                                size: 24.w,
                              ),
                              label: 'Tiến trình',
                              isSelected: safeSelectedIndex == 0,
                              onTap: () => onItemTapped(0),
                            ),
                            _buildNavItem(
                              icon: Icon(
                                safeSelectedIndex == 1
                                    ? Icons.local_activity_rounded
                                    : Icons.local_activity_outlined,
                                color: safeSelectedIndex == 1 ? AppColors.primary : const Color(0xFF999999),
                                size: 24.w,
                              ),
                              label: 'Hoạt động',
                              isSelected: safeSelectedIndex == 1,
                              onTap: () => onItemTapped(1),
                            ),
                            _buildNavItem(
                              icon: buildChatIcon(selected: safeSelectedIndex == 2),
                              label: 'Tin nhắn',
                              isSelected: safeSelectedIndex == 2,
                              onTap: () => onItemTapped(2),
                            ),
                            _buildNavItem(
                              icon: Icon(
                                safeSelectedIndex == 3
                                    ? Icons.person_rounded
                                    : Icons.person_outline_rounded,
                                color: safeSelectedIndex == 3 ? AppColors.primary : const Color(0xFF999999),
                                size: 24.w,
                              ),
                              label: 'Tài khoản',
                              isSelected: safeSelectedIndex == 3,
                              onTap: () => onItemTapped(3),
                            ),
                          ]
                        : [
                            _buildNavItem(
                              icon: Icon(
                                safeSelectedIndex == 0
                                    ? Icons.dashboard_rounded
                                    : Icons.dashboard_outlined,
                                color: safeSelectedIndex == 0 ? AppColors.primary : const Color(0xFF999999),
                                size: 24.w,
                              ),
                              label: 'Tổng quan',
                              isSelected: safeSelectedIndex == 0,
                              onTap: () => onItemTapped(0),
                            ),
                            _buildNavItem(
                              icon: Icon(
                                safeSelectedIndex == 1
                                    ? Icons.child_care_rounded
                                    : Icons.child_care_outlined,
                                color: safeSelectedIndex == 1 ? AppColors.primary : const Color(0xFF999999),
                                size: 24.w,
                              ),
                              label: 'Học sinh',
                              isSelected: safeSelectedIndex == 1,
                              onTap: () => onItemTapped(1),
                            ),
                            _buildNavItem(
                              icon: Icon(
                                safeSelectedIndex == 2
                                    ? Icons.feed_rounded
                                    : Icons.feed_outlined,
                                color: safeSelectedIndex == 2 ? AppColors.primary : const Color(0xFF999999),
                                size: 24.w,
                              ),
                              label: 'Bảng tin',
                              isSelected: safeSelectedIndex == 2,
                              onTap: () => onItemTapped(2),
                            ),
                            _buildNavItem(
                              icon: buildChatIcon(selected: safeSelectedIndex == 3),
                              label: 'Tin nhắn',
                              isSelected: safeSelectedIndex == 3,
                              onTap: () => onItemTapped(3),
                            ),
                            _buildNavItem(
                              icon: Icon(
                                safeSelectedIndex == 4
                                    ? Icons.person_rounded
                                    : Icons.person_outline_rounded,
                                color: safeSelectedIndex == 4 ? AppColors.primary : const Color(0xFF999999),
                                size: 24.w,
                              ),
                              label: 'Cá nhân',
                              isSelected: safeSelectedIndex == 4,
                              onTap: () => onItemTapped(4),
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

  Widget _buildNavItem({
    required Widget icon,
    required String label,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
        decoration: BoxDecoration(
          color: isSelected
              ? AppColors.primary.withValues(alpha: 0.1)
              : Colors.transparent,
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            icon,
            SizedBox(height: 4.h),
            Text(
              label,
              style: TextStyle(
                color: isSelected ? AppColors.primary : const Color(0xFF999999),
                fontSize: 10.sp,
                fontWeight: isSelected ? FontWeight.w700 : FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
