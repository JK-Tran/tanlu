import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/features/attendance/presentation/widgets/attendance_avatar.dart';

class CommentInputBar extends StatelessWidget {
  const CommentInputBar({
    super.key,
    required this.controller,
    required this.focusNode,
    required this.avatarName,
    this.avatarUrl,
    this.replyToName,
    this.replyToContent,
    this.editingLabel,
    this.enabled = true,
    this.isSubmitting = false,
    this.hintText = 'Viết bình luận...',
    this.onCancelReply,
    this.onCancelEdit,
    this.onSubmit,
  });

  final TextEditingController controller;
  final FocusNode focusNode;
  final String avatarName;
  final String? avatarUrl;
  final String? replyToName;
  final String? replyToContent;
  final String? editingLabel;
  final bool enabled;
  final bool isSubmitting;
  final String hintText;
  final VoidCallback? onCancelReply;
  final VoidCallback? onCancelEdit;
  final VoidCallback? onSubmit;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.white,
      elevation: 8,
      shadowColor: Colors.black.withValues(alpha: 0.08),
      child: SafeArea(
        top: false,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (editingLabel != null && editingLabel!.isNotEmpty)
              _Banner(label: editingLabel!, onClose: onCancelEdit)
            else if (replyToName != null && replyToName!.isNotEmpty)
              _ReplyBanner(
                authorName: replyToName!,
                content: replyToContent ?? '',
                onClose: onCancelReply,
              ),
            Padding(
              padding: EdgeInsets.fromLTRB(12.w, 8.h, 12.w, 12.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  AttendanceAvatar(
                    nickname: avatarName,
                    imageUrl: avatarUrl,
                    size: 36,
                  ),
                  SizedBox(width: 10.w),
                  Expanded(
                    child: Container(
                      constraints: BoxConstraints(maxHeight: 120.h),
                      padding: EdgeInsets.symmetric(horizontal: 14.w),
                      decoration: BoxDecoration(
                        color: AppColors.grayVeryLight,
                        borderRadius: BorderRadius.circular(22.r),
                        border: Border.all(
                          color: enabled
                              ? AppColors.grayLight.withValues(alpha: 0.6)
                              : Colors.transparent,
                        ),
                      ),
                      child: TextField(
                        controller: controller,
                        focusNode: focusNode,
                        enabled: enabled && !isSubmitting,
                        maxLines: 4,
                        minLines: 1,
                        textInputAction: TextInputAction.send,
                        onSubmitted: enabled && !isSubmitting
                            ? (_) => onSubmit?.call()
                            : null,
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: AppColors.grayDark,
                        ),
                        decoration: InputDecoration(
                          hintText: hintText,
                          hintStyle: TextStyle(
                            color: AppColors.grayMedium,
                            fontSize: 14.sp,
                          ),
                          border: InputBorder.none,
                          isDense: true,
                          contentPadding: EdgeInsets.symmetric(vertical: 10.h),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 8.w),
                  SizedBox(
                    width: 40.w,
                    height: 40.w,
                    child: isSubmitting
                        ? const Padding(
                            padding: EdgeInsets.all(10),
                            child: CircularProgressIndicator(strokeWidth: 2),
                          )
                        : IconButton(
                            onPressed: enabled ? onSubmit : null,
                            icon: Icon(
                              Icons.send_rounded,
                              color: enabled
                                  ? AppColors.primary
                                  : AppColors.grayMedium,
                              size: 22.w,
                            ),
                          ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ReplyBanner extends StatelessWidget {
  const _ReplyBanner({
    required this.authorName,
    required this.content,
    this.onClose,
  });

  final String authorName;
  final String content;
  final VoidCallback? onClose;

  static const int _maxPreviewLength = 80;

  String get _preview {
    final trimmed = content.trim();
    if (trimmed.isEmpty) return '';
    if (trimmed.length <= _maxPreviewLength) return trimmed;
    return '${trimmed.substring(0, _maxPreviewLength)}…';
  }

  @override
  Widget build(BuildContext context) {
    final preview = _preview;

    return Container(
      width: double.infinity,
      padding: EdgeInsets.fromLTRB(16.w, 10.h, 8.w, 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText.b2(
                  'Trả lời $authorName',
                  fontSize: 12.sp,
                  color: AppColors.grayMedium,
                  fontWeight: FontWeight.w600,
                ),
                if (preview.isNotEmpty) ...[
                  SizedBox(height: 2.h),
                  AppText.b2(
                    preview,
                    fontSize: 12.sp,
                    color: AppColors.grayDark,
                    maxLines: 2,
                    textOverflow: TextOverflow.ellipsis,
                  ),
                ],
              ],
            ),
          ),
          IconButton(
            onPressed: onClose,
            icon: Icon(Icons.close_rounded, size: 18.w),
            color: AppColors.grayMedium,
            padding: EdgeInsets.zero,
            constraints: BoxConstraints(minWidth: 32.w, minHeight: 32.w),
          ),
        ],
      ),
    );
  }
}

class _Banner extends StatelessWidget {
  const _Banner({required this.label, this.onClose});

  final String label;
  final VoidCallback? onClose;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.fromLTRB(16.w, 10.h, 8.w, 0),
      child: Row(
        children: [
          Expanded(
            child: AppText.b2(
              label,
              fontSize: 12.sp,
              color: AppColors.grayMedium,
              fontWeight: FontWeight.w600,
            ),
          ),
          IconButton(
            onPressed: onClose,
            icon: Icon(Icons.close_rounded, size: 18.w),
            color: AppColors.grayMedium,
            padding: EdgeInsets.zero,
            constraints: BoxConstraints(minWidth: 32.w, minHeight: 32.w),
          ),
        ],
      ),
    );
  }
}
