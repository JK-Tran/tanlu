import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:collection/collection.dart';
import 'package:go_router/go_router.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/features/chat/domain/entity/conversation.dart';
import 'package:tanlu_management/features/chat/presentation/bloc/chat_bloc.dart';
import 'package:tanlu_management/features/app/presentation/bloc/app_bloc.dart';
import 'package:intl/intl.dart';

class ConversationList extends StatelessWidget {
  final List<Conversation> conversations;
  final ChatBloc chatBloc;
  final Set<int> onlineUserIds;

  const ConversationList({
    super.key,
    required this.conversations,
    required this.chatBloc,
    required this.onlineUserIds,
  });

  String _formatDate(DateTime date) {
    final now = DateTime.now();
    if (date.year == now.year &&
        date.month == now.month &&
        date.day == now.day) {
      return DateFormat('HH:mm').format(date);
    }
    return DateFormat('dd/MM').format(date);
  }

  @override
  Widget build(BuildContext context) {
    final visibleConversations = conversations.where((c) {
      if ((c.type == 'DIRECT' || c.type == 'PRIVATE') && c.messages.isEmpty) {
        return false;
      }
      return true;
    }).toList();

    if (visibleConversations.isEmpty) {
      return SliverToBoxAdapter(
        child: Padding(
          padding: EdgeInsets.all(24.w),
          child: Center(
            child: AppText.b1(
              'Chưa có cuộc trò chuyện nào',
              color: Colors.grey,
            ),
          ),
        ),
      );
    }

    return SliverList(
      delegate: SliverChildBuilderDelegate((context, index) {
        final conversation = visibleConversations[index];
        final currentUser = context.read<AppBloc>().currentUser;

        final latestMessage = conversation.messages.isNotEmpty
            ? conversation.messages.last.text
            : 'Gửi một tin nhắn...';

        final timeStr = conversation.messages.isNotEmpty
            ? _formatDate(
                conversation.messages.last.createdAt ?? DateTime.now(),
              )
            : _formatDate(conversation.updatedAt ?? DateTime.now());

        final otherParticipant = conversation.participants.firstWhereOrNull(
          (p) => p.userId.toString() != currentUser?.id.toString(),
        );
        String name = conversation.name;
        if (name.isEmpty) {
          name = otherParticipant?.user?.fullName ?? 'Khách';
        }

        // Calculate real unread count
        final unreadCount = conversation.messages
            .where((m) => m.senderId.toString() != currentUser?.id.toString() && !m.isRead)
            .length;
        final isUnread = unreadCount > 0;

        return Column(
          children: [
            Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () {
                  chatBloc.add(SelectConversation(conversation));
                  context.push('/chat-detail/${conversation.id}');
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.w,
                    vertical: 12.h,
                  ),
                  child: Row(
                    children: [
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          CircleAvatar(
                            radius: 28.r,
                            backgroundColor: conversation.type == 'GROUP'
                                ? AppColors.successLight
                                : AppColors.grayLight,
                            child: Icon(
                              conversation.type == 'GROUP'
                                  ? Icons.groups_rounded
                                  : Icons.person_rounded,
                              color: conversation.type == 'GROUP'
                                  ? AppColors.success
                                  : AppColors.grayMedium,
                              size: 32.sp,
                            ),
                          ),
                          if (conversation.type != 'GROUP' &&
                              otherParticipant != null &&
                              onlineUserIds.contains(otherParticipant.userId))
                            Positioned(
                              right: 0,
                              bottom: 0,
                              child: Container(
                                width: 16.r,
                                height: 16.r,
                                decoration: BoxDecoration(
                                  color: AppColors.success, // Messenger green
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: AppColors.white,
                                    width: 2.5,
                                  ),
                                ),
                              ),
                            ),
                        ],
                      ),
                      SizedBox(width: 12.w),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: AppText.h2(
                                    name,
                                    fontWeight: isUnread
                                        ? FontWeight.w700
                                        : FontWeight.w500,
                                    fontSize: 16.sp,
                                    color: AppColors.grayDark, // Pure black
                                    maxLines: 1,
                                    textOverflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                SizedBox(width: 8.w),
                                AppText.b2(
                                  timeStr,
                                  color: isUnread
                                      ? AppColors.grayDark
                                      : AppColors.grayMedium, // iOS gray
                                  fontSize: 13.sp,
                                  fontWeight: isUnread
                                      ? FontWeight.w600
                                      : FontWeight.normal,
                                ),
                              ],
                            ),
                            SizedBox(height: 4.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: AppText.b2(
                                    latestMessage,
                                    color: isUnread
                                        ? AppColors.grayDark
                                        : AppColors.grayMedium,
                                    fontWeight: isUnread
                                        ? FontWeight.w600
                                        : FontWeight.normal,
                                    fontSize: 14.sp,
                                    maxLines: 1,
                                    textOverflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                if (unreadCount > 0)
                                  Container(
                                    margin: EdgeInsets.only(left: 12.w),
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 6.w,
                                      vertical: 2.h,
                                    ),
                                    decoration: BoxDecoration(
                                      color: AppColors.error, // iOS red badge
                                      borderRadius: BorderRadius.circular(12.r),
                                    ),
                                    child: AppText.b2(
                                      unreadCount > 99
                                          ? '99+'
                                          : unreadCount.toString(),
                                      color: AppColors.white,
                                      fontSize: 11.sp,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  )
                                else if (conversation.messages.isNotEmpty &&
                                    conversation.messages.last.senderId.toString() ==
                                        currentUser?.id.toString())
                                  Padding(
                                    padding: EdgeInsets.only(left: 8.w),
                                    child: Icon(
                                      conversation.messages.last.isRead
                                          ? Icons.done_all
                                          : Icons.check,
                                      color: conversation.messages.last.isRead
                                          ? AppColors.info // iOS blue
                                          : AppColors.grayMedium,
                                      size: 16.sp,
                                    ),
                                  )
                                else
                                  const SizedBox.shrink(),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            if (index < visibleConversations.length - 1)
              Divider(
                height: 1,
                thickness: 1,
                color: AppColors.grayLight.withValues(alpha: 0.5),
                indent: 76.w,
                endIndent: 16.w,
              ),
          ],
        );
      }, childCount: visibleConversations.length),
    );
  }
}
