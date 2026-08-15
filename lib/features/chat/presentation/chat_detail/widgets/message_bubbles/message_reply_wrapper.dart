import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/features/chat/domain/entity/chat_message.dart';
import 'package:tanlu_management/l10n/l10n.dart';

class MessageReplyWrapper extends StatelessWidget {
  const MessageReplyWrapper({
    super.key,
    required this.replyToMessage,
    required this.isMine,
    required this.onJumpToMessage,
    required this.child,
  });

  final ChatMessage replyToMessage;
  final bool isMine;
  final Function(int) onJumpToMessage;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        GestureDetector(
          onTap: () => onJumpToMessage(replyToMessage.id),
          child: Padding(
            padding: EdgeInsets.only(bottom: 6.h),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.h),
              decoration: BoxDecoration(
                color: isMine
                    ? Colors.black.withValues(alpha: 0.05)
                    : AppColors.grayVeryLight.withValues(alpha: 0.8),
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText.t2(
                    context.l10n.chatReplied,
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w600,
                    color: isMine ? AppColors.primary : AppColors.grayDark,
                  ),
                  SizedBox(height: 2.h),
                  AppText.t2(
                    replyToMessage.content,
                    maxLines: 1,
                    textOverflow: TextOverflow.ellipsis,
                    fontSize: 10.sp,

                    color: AppColors.grayDark80,
                  ),
                ],
              ),
            ),
          ),
        ),
        child,
      ],
    );
  }
}
