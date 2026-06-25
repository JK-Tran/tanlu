import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/features/chat/domain/entity/contact.dart';
import 'package:tanlu_management/features/chat/domain/entity/conversation.dart';
import 'package:tanlu_management/features/chat/domain/entity/friend_request.dart';
import 'package:tanlu_management/features/chat/presentation/bloc/chat_bloc.dart';
import 'package:tanlu_management/features/chat/presentation/widgets/chat_avatar.dart';
import 'package:tanlu_management/features/chat/presentation/widgets/chat_format.dart';
import 'package:tanlu_management/features/chat/presentation/widgets/chat_peer.dart';

class ChatFriendRequestList extends StatelessWidget {
  const ChatFriendRequestList({
    super.key,
    required this.requests,
    required this.contacts,
  });

  final List<FriendRequest> requests;
  final List<Contact> contacts;

  String _nameFor(String userId) {
    for (final contact in contacts) {
      if (contact.id == userId) return contact.fullName;
    }
    return 'Người dùng';
  }

  @override
  Widget build(BuildContext context) {
    if (requests.isEmpty) {
      return Padding(
        padding: EdgeInsets.all(32.w),
        child: AppText.b1(
          'Không có lời mời kết bạn',
          textAlign: TextAlign.center,
          fontSize: 12.sp,
          color: AppColors.grayMedium,
        ),
      );
    }

    final bloc = context.read<ChatBloc>();

    return Column(
      children: [
        for (var i = 0; i < requests.length; i++) ...[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
            child: Row(
              children: [
                ChatAvatar(name: _nameFor(requests[i].fromUserId), size: 44),
                SizedBox(width: 12.w),
                Expanded(
                  child: AppText.b1(
                    _nameFor(requests[i].fromUserId),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColors.grayDark,
                    maxLines: 1,
                    textOverflow: TextOverflow.ellipsis,
                  ),
                ),
                TextButton(
                  onPressed: () => bloc.add(
                    SubmitFriendDecision(
                      requestId: requests[i].id,
                      accept: true,
                    ),
                  ),
                  child: AppText.b2(
                    'Chấp nhận',
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColors.primary,
                  ),
                ),
                TextButton(
                  onPressed: () => bloc.add(
                    SubmitFriendDecision(
                      requestId: requests[i].id,
                      accept: false,
                    ),
                  ),
                  child: AppText.b2(
                    'Từ chối',
                    fontSize: 12.sp,
                    color: AppColors.grayMedium,
                  ),
                ),
              ],
            ),
          ),
          if (i < requests.length - 1)
            Divider(height: 1, indent: 72.w, color: AppColors.grayLight),
        ],
      ],
    );
  }
}

class ChatConversationItem extends StatelessWidget {
  const ChatConversationItem({
    super.key,
    required this.conversation,
    required this.currentUserId,
    required this.contacts,
    required this.onTap,
  });

  final Conversation conversation;
  final String currentUserId;
  final List<Contact> contacts;
  final VoidCallback onTap;

  bool get _isGroup => conversation.type == 'group';
  bool get _hasUnread => conversation.unreadCount > 0;

  @override
  Widget build(BuildContext context) {
    final peer = ChatPeer.fromConversation(
      conversation,
      currentUserId,
      contacts: contacts,
    );

    return Material(
      color: AppColors.white,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
          child: Row(
            children: [
              ChatAvatar(
                name: peer.name,
                imageUrl: peer.avatar,
                size: 52,
                isGroup: _isGroup,
              ),
              SizedBox(width: 12.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: AppText.b1(
                            peer.name,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                            color: AppColors.grayDark,
                            maxLines: 1,
                            textOverflow: TextOverflow.ellipsis,
                          ),
                        ),
                        AppText.b2(
                          ChatFormat.conversationTimeLabel(
                            conversation.lastMessageAt ??
                                conversation.updatedAt,
                          ),
                          fontSize: 10.sp,
                          fontWeight: _hasUnread
                              ? FontWeight.w600
                              : FontWeight.w400,
                          color: _hasUnread
                              ? AppColors.primary
                              : AppColors.grayMedium,
                        ),
                      ],
                    ),
                    SizedBox(height: 2.h),
                    Row(
                      children: [
                        Expanded(
                          child: AppText.b2(
                            conversation.lastMessageText.isEmpty
                                ? 'Chưa có tin nhắn'
                                : conversation.lastMessageText,
                            fontSize: 12.sp,
                            fontWeight: _hasUnread
                                ? FontWeight.w700
                                : FontWeight.w400,
                            color: _hasUnread
                                ? AppColors.grayDark
                                : AppColors.grayMedium,
                            maxLines: 1,
                            textOverflow: TextOverflow.ellipsis,
                          ),
                        ),
                        if (_hasUnread) ...[
                          SizedBox(width: 8.w),
                          Container(
                            width: 8.w,
                            height: 8.w,
                            decoration: const BoxDecoration(
                              color: AppColors.primary,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ],
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ChatConversationList extends StatelessWidget {
  const ChatConversationList({
    super.key,
    required this.conversations,
    required this.currentUserId,
    required this.contacts,
    required this.onConversationTap,
  });

  final List<Conversation> conversations;
  final String currentUserId;
  final List<Contact> contacts;
  final void Function(Conversation conversation) onConversationTap;

  @override
  Widget build(BuildContext context) {
    if (conversations.isEmpty) {
      return Padding(
        padding: EdgeInsets.all(32.w),
        child: AppText.b1(
          'Chưa có hội thoại.\nChọn người ở danh bạ phía trên để bắt đầu.',
          textAlign: TextAlign.center,
          fontSize: 12.sp,
          color: AppColors.grayMedium,
        ),
      );
    }

    return Column(
      children: [
        for (var i = 0; i < conversations.length; i++) ...[
          ChatConversationItem(
            conversation: conversations[i],
            currentUserId: currentUserId,
            contacts: contacts,
            onTap: () => onConversationTap(conversations[i]),
          ),
          if (i < conversations.length - 1)
            Divider(height: 1, indent: 80.w, color: AppColors.grayLight),
        ],
      ],
    );
  }
}
