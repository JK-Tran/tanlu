import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/core/widgets/app_avatar.dart';
import 'package:tanlu_management/features/chat/presentation/bloc/chat_bloc.dart';
import 'package:tanlu_management/l10n/l10n.dart';

class ChatDetailAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ChatDetailAppBar({
    super.key,
    required this.conversationName,
    this.avatarUrl,
    required this.targetUserId,
  });

  final String conversationName;
  final String? avatarUrl;
  final int targetUserId;

  @override
  Size get preferredSize => Size.fromHeight(70.h);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 70.h,
      backgroundColor: Colors.white,
      elevation: 2,
      leading: const BackButton(color: AppColors.grayDark),
      titleSpacing: 0,
      title: Row(
        children: [
          Stack(
            children: [
              AppAvatar(name: conversationName, imageUrl: avatarUrl, size: 40),
              BlocSelector<ChatBloc, ChatState, bool>(
                selector: (state) => state.onlineUserIds.contains(targetUserId),
                builder: (context, isOnline) {
                  if (!isOnline) return const SizedBox.shrink();
                  return Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      width: 12.r,
                      height: 12.r,
                      decoration: BoxDecoration(
                        color: AppColors.success,
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: 2),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
          SizedBox(width: 10.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText.b2(
                conversationName,
                fontWeight: FontWeight.w700,
                color: AppColors.grayDark,
              ),
              BlocSelector<ChatBloc, ChatState, bool>(
                selector: (state) => state.onlineUserIds.contains(targetUserId),
                builder: (context, isOnline) {
                  return AppText.t1(
                    isOnline
                        ? context.l10n.chatStatusActive
                        : context.l10n.chatStatusOffline,
                    color: AppColors.grayMedium,
                    fontSize: 10.sp,
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
