import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/features/chat/domain/entity/message.dart';
import 'package:intl/intl.dart';

class MessageBubble extends StatelessWidget {
  final Message message;
  final bool isMe;

  const MessageBubble({super.key, required this.message, required this.isMe});

  @override
  Widget build(BuildContext context) {
    final timeStr = DateFormat(
      'HH:mm',
    ).format(message.createdAt ?? DateTime.now());

    return Align(
      alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (!isMe) ...[
            CircleAvatar(
              radius: 16.r,
              backgroundColor: AppColors.grayLight,
              child: const Icon(
                Icons.person_rounded,
                color: AppColors.grayMedium,
                size: 16,
              ),
            ),
            SizedBox(width: 8.w),
          ],
          Flexible(
            child: Container(
              margin: EdgeInsets.only(
                bottom: 16.h,
                left: isMe ? 48.w : 0,
                right: isMe ? 0 : 48.w,
              ),
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
              decoration: BoxDecoration(
                color: isMe ? AppColors.primary : AppColors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16.r),
                  topRight: Radius.circular(16.r),
                  bottomLeft: Radius.circular(isMe ? 16.r : 4.r),
                  bottomRight: Radius.circular(isMe ? 4.r : 16.r),
                ),
                boxShadow: isMe
                    ? []
                    : [
                        BoxShadow(
                          color: AppColors.black.withValues(alpha: 0.05),
                          blurRadius: 4,
                          offset: const Offset(0, 2),
                        ),
                      ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (message.fileUrl != null && message.fileUrl!.isNotEmpty)
                    Padding(
                      padding: EdgeInsets.only(bottom: 8.h),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.r),
                        child: Image.network(
                          message.fileUrl!,
                          width: 200.w,
                          height: 150.h,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) =>
                              const Icon(Icons.broken_image),
                        ),
                      ),
                    ),
                  if (message.text.isNotEmpty)
                    AppText.b1(
                      message.text,
                      color: isMe ? AppColors.white : AppColors.grayDark,
                      fontSize: 14.sp,
                    ),
                  SizedBox(height: 4.h),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      AppText.b2(
                        timeStr,
                        color: isMe
                            ? AppColors.white.withValues(alpha: 0.7)
                            : AppColors.grayMedium,
                        fontSize: 11.sp,
                      ),
                      if (isMe) ...[
                        SizedBox(width: 4.w),
                        Icon(
                          message.isRead ? Icons.done_all : Icons.check,
                          color: message.isRead
                              ? AppColors.white
                              : AppColors.white.withValues(alpha: 0.7),
                          size: 14.sp,
                        ),
                      ],
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
