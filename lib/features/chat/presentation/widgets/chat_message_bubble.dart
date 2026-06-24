import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/features/attendance/presentation/widgets/attendance_avatar.dart';
import 'package:tanlu_management/features/chat/presentation/enums/chat_message_type.dart';
import 'package:tanlu_management/features/chat/presentation/models/chat_mock_data.dart';
import 'package:tanlu_management/features/chat/presentation/models/chat_ui_models.dart';
import 'package:tanlu_management/features/chat/presentation/widgets/chat_date_separator.dart';

class ChatMessageBubble extends StatelessWidget {
  const ChatMessageBubble({
    super.key,
    required this.message,
    this.showAvatar = false,
    this.onLongPress,
  });

  final ChatMessage message;
  final bool showAvatar;
  final VoidCallback? onLongPress;

  @override
  Widget build(BuildContext context) {
    if (message.dateSeparator != null) {
      return ChatDateSeparator(label: message.dateSeparator!);
    }

    return Padding(
      padding: EdgeInsets.only(bottom: 10.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment:
            message.isMine ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          if (!message.isMine && showAvatar) ...[
            AttendanceAvatar(nickname: message.senderName, size: 32),
            SizedBox(width: 8.w),
          ] else if (!message.isMine)
            SizedBox(width: 40.w),
          Flexible(
            child: Column(
              crossAxisAlignment: message.isMine
                  ? CrossAxisAlignment.end
                  : CrossAxisAlignment.start,
              children: [
                if (message.showSenderName && !message.isMine) ...[
                  Padding(
                    padding: EdgeInsets.only(left: 4.w, bottom: 4.h),
                    child: AppText.b2(
                      message.senderName,
                      color: AppColors.primary,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
                GestureDetector(
                  onLongPress: onLongPress,
                  child: _BubbleContent(message: message),
                ),
                SizedBox(height: 4.h),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    AppText.b2(
                      message.time,
                      color: AppColors.grayMedium,
                      fontSize: 11.sp,
                    ),
                    if (message.isMine) ...[
                      SizedBox(width: 4.w),
                      Icon(
                        message.isRead
                            ? Icons.done_all_rounded
                            : Icons.check_rounded,
                        size: 14.w,
                        color: message.isRead
                            ? AppColors.info
                            : AppColors.grayMedium,
                      ),
                    ],
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _BubbleContent extends StatelessWidget {
  const _BubbleContent({required this.message});

  final ChatMessage message;

  @override
  Widget build(BuildContext context) {
    return switch (message.type) {
      ChatMessageType.sticker => _StickerBubble(message: message),
      ChatMessageType.image => _ImageBubble(message: message),
      ChatMessageType.text => _TextBubble(message: message),
    };
  }
}

class _TextBubble extends StatelessWidget {
  const _TextBubble({required this.message});

  final ChatMessage message;

  @override
  Widget build(BuildContext context) {
    final bg = message.isMine ? AppColors.primaryLight : Colors.white;
    final border = message.isMine
        ? null
        : Border.all(color: AppColors.grayLight.withValues(alpha: 0.8));

    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          constraints: BoxConstraints(maxWidth: 260.w),
          padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 10.h),
          decoration: BoxDecoration(
            color: bg,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16.r),
              topRight: Radius.circular(16.r),
              bottomLeft: Radius.circular(message.isMine ? 16.r : 4.r),
              bottomRight: Radius.circular(message.isMine ? 4.r : 16.r),
            ),
            border: border,
            boxShadow: message.isMine
                ? null
                : [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.04),
                      blurRadius: 4,
                      offset: const Offset(0, 1),
                    ),
                  ],
          ),
          child: AppText.b1(
            message.content,
            color: AppColors.grayDark,
            fontSize: 14.sp,
          ),
        ),
        if (message.reactionCount > 0)
          Positioned(
            right: message.isMine ? null : -4.w,
            left: message.isMine ? -4.w : null,
            bottom: -8.h,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 2.h),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12.r),
                border: Border.all(color: AppColors.grayLight),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.favorite_rounded,
                    size: 12.w,
                    color: AppColors.primary,
                  ),
                  SizedBox(width: 2.w),
                  AppText.b2(
                    '${message.reactionCount}',
                    fontSize: 10.sp,
                    color: AppColors.grayMedium,
                  ),
                ],
              ),
            ),
          ),
      ],
    );
  }
}

class _ImageBubble extends StatelessWidget {
  const _ImageBubble({required this.message});

  final ChatMessage message;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12.r),
      child: SizedBox(
        width: 200.w,
        height: 140.h,
        child: ColoredBox(
          color: AppColors.infoLight,
          child: Icon(Icons.image_outlined, color: AppColors.info, size: 40.w),
        ),
      ),
    );
  }
}

class _StickerBubble extends StatelessWidget {
  const _StickerBubble({required this.message});

  final ChatMessage message;

  @override
  Widget build(BuildContext context) {
    final color = message.stickerColor != null
        ? ChatMockData.stickerColor(message.stickerColor!)
        : AppColors.warningLight;

    return SizedBox(
      width: 96.w,
      height: 96.w,
      child: DecoratedBox(
        decoration: BoxDecoration(color: color, shape: BoxShape.circle),
        child: Center(child: Text('⭐', style: TextStyle(fontSize: 40.sp))),
      ),
    );
  }
}
