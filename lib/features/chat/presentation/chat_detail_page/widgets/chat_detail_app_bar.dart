import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_icon_button.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/features/chat/domain/entity/conversation.dart';
import 'package:tanlu_management/features/chat/presentation/bloc/chat_bloc.dart';
import 'package:tanlu_management/features/chat/presentation/widgets/chat_avatar.dart';
import 'package:tanlu_management/features/chat/presentation/widgets/chat_peer.dart';

class ChatDetailAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ChatDetailAppBar({super.key, required this.conversation});

  final Conversation conversation;

  @override
  Size get preferredSize => Size.fromHeight(64.h);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatBloc, ChatState>(
      buildWhen: (prev, curr) =>
          prev.currentConversation != curr.currentConversation ||
          prev.currentUserId != curr.currentUserId,
      builder: (context, state) {
        final liveConversation =
            state.currentConversation?.id == conversation.id
            ? state.currentConversation!
            : conversation;
        final peer = ChatPeer.fromConversation(
          liveConversation,
          state.currentUserId,
        );

        return SafeArea(
          bottom: false,
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.grayBg,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.1),
                  blurRadius: 5,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w),
              child: Row(
                children: [
                  AppIconButton(
                    icon: Icons.arrow_back_ios_new_rounded,
                    iconColor: AppColors.black,
                    backgroundColor: Colors.transparent,
                    size: 30,
                    onPressed: () => context.pop(),
                  ),
                  SizedBox(width: 10.w),
                  ChatAvatar(
                    name: peer.name,
                    imageUrl: peer.avatar,
                    size: 40,
                    isGroup: liveConversation.type == 'group',
                  ),
                  SizedBox(width: 10.w),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AppText.b1(
                          peer.name,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700,
                          color: AppColors.grayDark,
                          maxLines: 1,
                          textOverflow: TextOverflow.ellipsis,
                        ),
                        if (peer.subtitle.isNotEmpty)
                          AppText.b2(
                            peer.subtitle,
                            fontSize: 10.sp,
                            color: AppColors.grayMedium,
                            maxLines: 1,
                            textOverflow: TextOverflow.ellipsis,
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
