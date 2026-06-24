import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/features/attendance/presentation/widgets/attendance_avatar.dart';
import 'package:tanlu_management/features/chat/presentation/enums/chat_conversation_type.dart';
import 'package:tanlu_management/features/chat/presentation/models/chat_ui_models.dart';

class ChatConversationTile extends StatelessWidget {
  const ChatConversationTile({
    super.key,
    required this.conversation,
    required this.onTap,
  });

  final ChatConversation conversation;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final hasUnread = conversation.unreadCount > 0;

    return Material(
      color: hasUnread
          ? AppColors.primaryLight.withValues(alpha: 0.35)
          : Colors.white,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
          child: Row(
            children: [
              _Avatar(conversation: conversation),
              SizedBox(width: 12.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: AppText.b1(
                            conversation.name,
                            fontWeight: FontWeight.w700,
                            fontSize: 15.sp,
                            color: AppColors.grayDark,
                            maxLines: 1,
                            textOverflow: TextOverflow.ellipsis,
                          ),
                        ),
                        AppText.b2(
                          conversation.timeLabel,
                          color: hasUnread
                              ? AppColors.primary
                              : AppColors.grayMedium,
                          fontSize: 12.sp,
                          fontWeight:
                              hasUnread ? FontWeight.w600 : FontWeight.w400,
                        ),
                      ],
                    ),
                    SizedBox(height: 4.h),
                    Row(
                      children: [
                        Expanded(
                          child: AppText.b2(
                            conversation.lastMessage,
                            color: hasUnread
                                ? AppColors.grayDark
                                : AppColors.grayMedium,
                            fontSize: 13.sp,
                            fontWeight:
                                hasUnread ? FontWeight.w500 : FontWeight.w400,
                            maxLines: 1,
                            textOverflow: TextOverflow.ellipsis,
                          ),
                        ),
                        if (hasUnread) ...[
                          SizedBox(width: 8.w),
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 7.w,
                              vertical: 2.h,
                            ),
                            decoration: const BoxDecoration(
                              color: AppColors.primary,
                              shape: BoxShape.circle,
                            ),
                            constraints: BoxConstraints(minWidth: 20.w),
                            alignment: Alignment.center,
                            child: AppText.b2(
                              '${conversation.unreadCount}',
                              color: Colors.white,
                              fontSize: 11.sp,
                              fontWeight: FontWeight.w700,
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

class _Avatar extends StatelessWidget {
  const _Avatar({required this.conversation});

  final ChatConversation conversation;

  @override
  Widget build(BuildContext context) {
    if (conversation.type == ChatConversationType.group) {
      return Container(
        width: 52.w,
        height: 52.w,
        decoration: BoxDecoration(
          color: AppColors.primaryLight,
          borderRadius: BorderRadius.circular(14.r),
        ),
        child: Icon(
          Icons.groups_rounded,
          color: AppColors.primary,
          size: 28.w,
        ),
      );
    }

    return AttendanceAvatar(nickname: conversation.name, size: 52);
  }
}
