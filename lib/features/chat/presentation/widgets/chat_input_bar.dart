import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_icon_button.dart';
import 'package:tanlu_management/features/chat/presentation/widgets/chat_attachment_panel.dart';

class ChatInputBar extends StatelessWidget {
  const ChatInputBar({
    super.key,
    required this.controller,
    this.showAttachments = false,
    this.onToggleAttachments,
    this.onSend,
  });

  final TextEditingController controller;
  final bool showAttachments;
  final VoidCallback? onToggleAttachments;
  final VoidCallback? onSend;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (showAttachments) const ChatAttachmentPanel(),
        Container(
          padding: EdgeInsets.fromLTRB(12.w, 8.h, 12.w, 12.h),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border(
              top: BorderSide(color: AppColors.grayLight.withValues(alpha: 0.8)),
            ),
          ),
          child: SafeArea(
            top: false,
            child: Row(
              children: [
                AppIconButton(
                  icon: showAttachments
                      ? Icons.keyboard_arrow_down_rounded
                      : Icons.add_circle_outline_rounded,
                  iconColor: AppColors.primary,
                  size: 36,
                  onPressed: onToggleAttachments,
                ),
                AppIconButton(
                  icon: Icons.photo_camera_outlined,
                  iconColor: AppColors.grayMedium,
                  size: 36,
                  onPressed: () {},
                ),
                AppIconButton(
                  icon: Icons.image_outlined,
                  iconColor: AppColors.grayMedium,
                  size: 36,
                  onPressed: () {},
                ),
                SizedBox(width: 4.w),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 14.w),
                    decoration: BoxDecoration(
                      color: AppColors.grayVeryLight,
                      borderRadius: BorderRadius.circular(24.r),
                    ),
                    child: TextField(
                      controller: controller,
                      decoration: InputDecoration(
                        hintText: 'Nhập tin nhắn...',
                        hintStyle: TextStyle(
                          color: AppColors.grayMedium,
                          fontSize: 14.sp,
                        ),
                        border: InputBorder.none,
                        isDense: true,
                        contentPadding: EdgeInsets.symmetric(vertical: 10.h),
                      ),
                      textInputAction: TextInputAction.send,
                      onSubmitted: (_) => onSend?.call(),
                    ),
                  ),
                ),
                SizedBox(width: 4.w),
                AppIconButton(
                  icon: Icons.mic_none_rounded,
                  iconColor: AppColors.primary,
                  size: 36,
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
