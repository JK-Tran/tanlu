import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/features/chat/domain/entity/message.dart';
import 'package:tanlu_management/features/chat/presentation/widgets/chat_avatar.dart';
import 'package:tanlu_management/features/chat/presentation/widgets/chat_format.dart';

class ChatMessageRow {
  const ChatMessageRow.message(this.message, {required this.isMine})
    : dateSeparator = null,
      separatorKey = null;

  const ChatMessageRow.separator(
    this.dateSeparator, {
    required this.separatorKey,
  }) : message = null,
       isMine = false;

  final Message? message;
  final String? dateSeparator;
  final String? separatorKey;
  final bool isMine;

  bool get isSeparator => dateSeparator != null;
}

class ChatMessageItem extends StatelessWidget {
  const ChatMessageItem({
    super.key,
    required this.message,
    required this.isMine,
    this.showAvatar = true,
    this.showSenderName = false,
  });

  final Message message;
  final bool isMine;
  final bool showAvatar;
  final bool showSenderName;

  @override
  Widget build(BuildContext context) {
    final senderName = message.sender?.fullName ?? '';
    final senderAvatar = message.sender?.avatar ?? '';

    return Padding(
      padding: EdgeInsets.only(bottom: 10.h),
      child: Row(
        mainAxisAlignment: isMine
            ? MainAxisAlignment.end
            : MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          if (!isMine && showAvatar) ...[
            ChatAvatar(name: senderName, imageUrl: senderAvatar, size: 32),
            SizedBox(width: 8.w),
          ],
          Flexible(
            child: Column(
              crossAxisAlignment: isMine
                  ? CrossAxisAlignment.end
                  : CrossAxisAlignment.start,
              children: [
                if (showSenderName && !isMine)
                  Padding(
                    padding: EdgeInsets.only(left: 4.w, bottom: 4.h),
                    child: AppText.b2(
                      senderName.isEmpty ? 'Người dùng' : senderName,
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.grayMedium,
                    ),
                  ),
                _MessageBubble(message: message, isMine: isMine),
                SizedBox(height: 4.h),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    AppText.b2(
                      ChatFormat.messageTimeLabel(message.createdAt),
                      fontSize: 10.sp,
                      color: AppColors.grayMedium,
                    ),
                    if (isMine && message.isRead) ...[
                      SizedBox(width: 4.w),
                      Icon(
                        Icons.done_all_rounded,
                        size: 14.w,
                        color: AppColors.primary,
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

class _MessageBubble extends StatelessWidget {
  const _MessageBubble({required this.message, required this.isMine});

  final Message message;
  final bool isMine;

  bool get _isImage =>
      message.type == 'image' &&
      message.fileUrl != null &&
      message.fileUrl!.isNotEmpty;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 220.w),
      padding: _isImage
          ? EdgeInsets.all(4.w)
          : EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
      decoration: BoxDecoration(
        color: isMine ? AppColors.primaryLight : AppColors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(8.r),
          topRight: Radius.circular(8.r),
          bottomLeft: Radius.circular(isMine ? 8.r : 2.r),
          bottomRight: Radius.circular(isMine ? 2.r : 8.r),
        ),
        border: isMine
            ? null
            : Border.all(color: AppColors.grayLight.withValues(alpha: 0.6)),
      ),
      child: _isImage ? _buildImage() : _buildText(),
    );
  }

  Widget _buildText() {
    return AppText.b1(message.text, fontSize: 12.sp, color: AppColors.grayDark);
  }

  Widget _buildImage() {
    final url = message.fileUrl!;
    final borderRadius = BorderRadius.circular(6.r);

    Widget image;
    if (url.startsWith('http')) {
      image = Image.network(
        url,
        fit: BoxFit.cover,
        width: 200.w,
        height: 200.w,
        loadingBuilder: (context, child, progress) {
          if (progress == null) return child;
          return SizedBox(
            width: 200.w,
            height: 200.w,
            child: const Center(
              child: CircularProgressIndicator(strokeWidth: 2),
            ),
          );
        },
        errorBuilder: (_, _, _) => _imageError(),
      );
    } else {
      image = Image.file(
        File(url),
        fit: BoxFit.cover,
        width: 200.w,
        height: 200.w,
        errorBuilder: (_, _, _) => _imageError(),
      );
    }

    return ClipRRect(borderRadius: borderRadius, child: image);
  }

  Widget _imageError() {
    return SizedBox(
      width: 200.w,
      height: 120.h,
      child: Center(
        child: Icon(Icons.broken_image_outlined, color: AppColors.grayMedium),
      ),
    );
  }
}

class ChatMessageDateSeparator extends StatelessWidget {
  const ChatMessageDateSeparator({super.key, required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 12.h),
        child: Center(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 4.h),
            decoration: BoxDecoration(
              color: AppColors.grayVeryLight,
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: AppText.b2(
              label,
              fontSize: 10.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.grayMedium,
            ),
          ),
        ),
      ),
    );
  }
}
