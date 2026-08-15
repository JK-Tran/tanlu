import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/features/chat/domain/entity/chat_conversation.dart';
import 'package:tanlu_management/core/widgets/app_avatar.dart';
import 'package:tanlu_management/l10n/l10n.dart';
import 'package:tanlu_management/shared/utils/date_time_utils.dart';

class ChatItem extends StatelessWidget {
  const ChatItem({
    super.key,
    required this.conversation,
    required this.isOnline,
    required this.onTap,
  });

  final ChatConversation conversation;
  final bool isOnline;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final hasUnread = conversation.unreadCount > 0;
    final avatarUrl = conversation.participantDetails.isNotEmpty
        ? conversation.participantDetails.values.first.avatarUrl
        : null;

    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
          child: Row(
            children: [
              Stack(
                children: [
                  AppAvatar(
                    name: conversation.name,
                    imageUrl: avatarUrl,
                    size: 50,
                  ),
                  if (isOnline)
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        width: 14.r,
                        height: 14.r,
                        decoration: BoxDecoration(
                          color: const Color(0xFF4CAF50),
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white, width: 2.5),
                        ),
                      ),
                    ),
                ],
              ),
              SizedBox(width: 14.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText.h2(
                      fontSize: 14,
                      conversation.name,
                      fontWeight: hasUnread ? FontWeight.w700 : FontWeight.w600,
                      maxLines: 1,
                      color: AppColors.grayDark,
                    ),
                    SizedBox(height: 4.h),
                    AppText.b1(
                      fontSize: 14,
                      conversation.isLastMessageRevoked
                          ? context.l10n.chatMessageRevoked
                          : conversation.lastMessageType == 'image'
                          ? context.l10n.chatMessageImage
                          : conversation.lastMessageType == 'file'
                          ? context.l10n.chatMessageFile
                          : conversation.lastMessage,
                      maxLines: 1,
                      color: hasUnread
                          ? AppColors.grayDark
                          : AppColors.grayMedium,
                      fontWeight: hasUnread
                          ? FontWeight.w600
                          : FontWeight.normal,
                    ),
                  ],
                ),
              ),
              SizedBox(width: 8.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppText.t1(
                    DateTimeUtils.formatChatTime(
                      conversation.lastMessageTimestamp,
                    ),
                    color: hasUnread ? AppColors.primary : AppColors.grayMedium,
                    fontSize: 8.sp,
                    fontWeight: FontWeight.w600,
                  ),
                  SizedBox(height: 8.h),
                  if (hasUnread)
                    Container(
                      width: 10.r,
                      height: 10.r,
                      decoration: const BoxDecoration(
                        color: AppColors.primary,
                        shape: BoxShape.circle,
                      ),
                    )
                  else
                    SizedBox(height: 24.h),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
