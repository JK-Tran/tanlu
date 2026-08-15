import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/features/chat/domain/entity/chat_conversation.dart';
import 'package:tanlu_management/features/chat/presentation/bloc/chat_bloc.dart';
import 'package:tanlu_management/features/chat/presentation/chat_page/widgets/chat_item.dart';
import 'package:tanlu_management/l10n/l10n.dart';

class ChatList extends StatelessWidget {
  const ChatList({
    super.key,
    required this.state,
    required this.currentUserId,
    required this.onTapConversation,
    required this.scrollController,
  });

  final ChatState state;
  final int currentUserId;
  final void Function(ChatConversation) onTapConversation;
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    final conversations = state.conversations;

    if (state.isLoadingConversations && state.conversations.isEmpty) {
      return const SliverToBoxAdapter(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 32.0),
          child: Center(child: CircularProgressIndicator()),
        ),
      );
    }

    if (conversations.isEmpty) {
      return SliverToBoxAdapter(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: AppText.b1(
              context.l10n.chatNoConversationsYet,
              color: AppColors.grayMedium,
            ),
          ),
        ),
      );
    }

    return SliverPadding(
      padding: EdgeInsets.symmetric(vertical: 0.h),
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate((context, index) {
          final conversation = conversations[index];
          // Loại trừ chính mình (currentUserId) khi kiểm tra online
          final isOnline = conversation.participantDetails.keys.any((idStr) {
            final id = int.tryParse(idStr) ?? 0;
            return id != currentUserId && state.onlineUserIds.contains(id);
          });

          return ChatItem(
            conversation: conversation,
            isOnline: isOnline,
            onTap: () => onTapConversation(conversation),
          );
        }, childCount: conversations.length),
      ),
    );
  }
}
