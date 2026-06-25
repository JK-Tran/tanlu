import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:tanlu_management/core/di/injection_container.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/features/app/presentation/bloc/app_bloc.dart';
import 'package:tanlu_management/features/chat/presentation/bloc/chat_bloc.dart';
import 'package:tanlu_management/features/chat/presentation/chat_detail_page/pages/chat_detail_page.dart';
import 'package:tanlu_management/shared/services/firebase/push/chat_push_opener.dart';

class HomePage extends StatefulWidget {
  final StatefulNavigationShell navigationShell;

  const HomePage({super.key, required this.navigationShell});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      _ensureChatStarted();
      _registerChatPushHandler();
    });
  }

  @override
  void dispose() {
    sl<ChatPushOpener>().unregisterHandler();
    super.dispose();
  }

  void _ensureChatStarted() {
    final user = context.read<AppBloc>().currentUser;
    if (user == null) return;

    final bloc = context.read<ChatBloc>();
    if (bloc.state.currentUserId.isNotEmpty) return;

    bloc.add(
      ChatStarted(
        userId: user.id,
        classId: user.classId ?? '',
        centerId: user.centerId ?? '',
        fullName: user.fullName,
        avatar: user.avatar ?? '',
        role: user.role,
      ),
    );
  }

  void _registerChatPushHandler() {
    sl<ChatPushOpener>().registerHandler((conversationId) {
      if (!mounted) return;
      context.read<ChatBloc>().add(
        OpenConversationFromPush(conversationId: conversationId),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ChatBloc, ChatState>(
      listenWhen: (prev, curr) =>
          prev.presentConversation != curr.presentConversation &&
          curr.presentConversation &&
          curr.currentConversation != null,
      listener: (context, state) {
        final bloc = context.read<ChatBloc>();
        final conversation = state.currentConversation;
        if (conversation == null) return;

        bloc.add(const ClearPresentConversationFlag());
        Navigator.of(context, rootNavigator: true).push(
          MaterialPageRoute<void>(
            builder: (_) => BlocProvider.value(
              value: bloc,
              child: ChatDetailPage(conversation: conversation),
            ),
          ),
        );
      },
      child: Scaffold(
        body: widget.navigationShell,
        bottomNavigationBar: BlocBuilder<AppBloc, AppState>(
          builder: (context, state) {
            final isParent = state.maybeWhen(
              authenticated: (user) => user.role == 'parent',
              orElse: () => false,
            );

            final visibleBranches = isParent ? [1, 1, 2, 3] : [4, 0, 5, 2, 3];

            final selectedIndex = visibleBranches.indexOf(
              widget.navigationShell.currentIndex,
            );
            final safeSelectedIndex = selectedIndex >= 0 ? selectedIndex : 0;

            void onItemTapped(int index) {
              final targetBranch = visibleBranches[index];
              widget.navigationShell.goBranch(
                targetBranch,
                initialLocation:
                    targetBranch == widget.navigationShell.currentIndex,
              );
            }

            return SafeArea(
              child: Container(
                margin: EdgeInsets.only(left: 16.w, right: 16.w, bottom: 16.h),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12.r),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.08),
                      blurRadius: 24,
                      offset: const Offset(0, 8),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: isParent
                      ? [
                          _buildNavItem(
                            icon: Icon(
                              safeSelectedIndex == 0
                                  ? Icons.trending_up_rounded
                                  : Icons.trending_up_outlined,
                              color: safeSelectedIndex == 0
                                  ? AppColors.primary
                                  : const Color(0xFF999999),
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
                              color: safeSelectedIndex == 1
                                  ? AppColors.primary
                                  : const Color(0xFF999999),
                              size: 24.w,
                            ),
                            label: 'Hoạt động',
                            isSelected: safeSelectedIndex == 1,
                            onTap: () => onItemTapped(1),
                          ),
                          _buildNavItem(
                            icon: Icon(
                              safeSelectedIndex == 2
                                  ? Icons.chat_bubble_rounded
                                  : Icons.chat_bubble_outline_rounded,
                              color: safeSelectedIndex == 2
                                  ? AppColors.primary
                                  : const Color(0xFF999999),
                              size: 24.w,
                            ),
                            label: 'Tin nhắn',
                            isSelected: safeSelectedIndex == 2,
                            onTap: () => onItemTapped(2),
                          ),
                          _buildNavItem(
                            icon: Icon(
                              safeSelectedIndex == 3
                                  ? Icons.person_rounded
                                  : Icons.person_outline_rounded,
                              color: safeSelectedIndex == 3
                                  ? AppColors.primary
                                  : const Color(0xFF999999),
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
                              color: safeSelectedIndex == 0
                                  ? AppColors.primary
                                  : const Color(0xFF999999),
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
                              color: safeSelectedIndex == 1
                                  ? AppColors.primary
                                  : const Color(0xFF999999),
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
                              color: safeSelectedIndex == 2
                                  ? AppColors.primary
                                  : const Color(0xFF999999),
                              size: 24.w,
                            ),
                            label: 'Bảng tin',
                            isSelected: safeSelectedIndex == 2,
                            onTap: () => onItemTapped(2),
                          ),
                          _buildNavItem(
                            icon: Icon(
                              safeSelectedIndex == 3
                                  ? Icons.chat_bubble_rounded
                                  : Icons.chat_bubble_outline_rounded,
                              color: safeSelectedIndex == 3
                                  ? AppColors.primary
                                  : const Color(0xFF999999),
                              size: 24.w,
                            ),
                            label: 'Tin nhắn',
                            isSelected: safeSelectedIndex == 3,
                            onTap: () => onItemTapped(3),
                          ),
                          _buildNavItem(
                            icon: Icon(
                              safeSelectedIndex == 4
                                  ? Icons.person_rounded
                                  : Icons.person_outline_rounded,
                              color: safeSelectedIndex == 4
                                  ? AppColors.primary
                                  : const Color(0xFF999999),
                              size: 24.w,
                            ),
                            label: 'Cá nhân',
                            isSelected: safeSelectedIndex == 4,
                            onTap: () => onItemTapped(4),
                          ),
                        ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildNavItem({
    required Widget icon,
    required String label,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        behavior: HitTestBehavior.opaque,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: 4.w, vertical: 6.h),
          padding: EdgeInsets.symmetric(vertical: 4.h),
          decoration: BoxDecoration(
            color: isSelected
                ? AppColors.primary.withValues(alpha: 0.1)
                : Colors.transparent,
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              icon,
              SizedBox(height: 4.h),
              Text(
                label,
                style: TextStyle(
                  color: isSelected ? AppColors.primary : AppColors.grayMedium,
                  fontSize: 11.sp,
                  fontWeight: isSelected ? FontWeight.w700 : FontWeight.w500,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
