import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/features/chat/domain/entity/message.dart';
import 'package:tanlu_management/features/chat/presentation/widgets/chat_detail/message_bubble.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tanlu_management/features/app/presentation/bloc/app_bloc.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';

class MessageList extends StatelessWidget {
  final List<Message> messages;
  final bool isLoading;

  const MessageList({
    super.key,
    required this.messages,
    required this.isLoading,
  });

  @override
  Widget build(BuildContext context) {
    if (isLoading && messages.isEmpty) {
      return const Center(child: CircularProgressIndicator());
    }

    return ListView.builder(
      reverse: true, // List is bottom to top
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
      itemCount: messages.length,
      itemBuilder: (context, index) {
        final message = messages[index];
        final currentUser = context.read<AppBloc>().currentUser;
        final isMe = message.senderId == currentUser?.id;

        // Show date separator "Hôm nay" logic (simplified)
        final isLast = index == messages.length - 1;
        bool showDate = isLast;
        if (!isLast) {
          final previousMessage = messages[index + 1];
          final prevDate = previousMessage.createdAt ?? DateTime.now();
          final currDate = message.createdAt ?? DateTime.now();
          final diff = prevDate.difference(currDate).inDays;
          if (diff.abs() > 0) {
            showDate = true;
          }
        }

        return Column(
          children: [
            if (showDate)
              Container(
                margin: EdgeInsets.symmetric(vertical: 16.h),
                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 4.h),
                decoration: BoxDecoration(
                  color: AppColors.grayLight,
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: AppText.b2(
                  'Hôm nay', // Ideally formatted dynamically based on message.createdAt
                  color: AppColors.grayMedium,
                  fontSize: 12.sp,
                ),
              ),
            MessageBubble(message: message, isMe: isMe),
          ],
        );
      },
    );
  }
}
