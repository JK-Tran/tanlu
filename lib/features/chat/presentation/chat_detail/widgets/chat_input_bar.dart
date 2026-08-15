import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mime/mime.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/features/chat/data/sources/chat_api_service.dart';
import 'package:tanlu_management/features/chat/domain/entity/chat_message.dart';
import 'package:tanlu_management/features/chat/presentation/bloc/chat_bloc.dart';
import 'package:tanlu_management/l10n/l10n.dart';

class ChatInputBar extends StatefulWidget {
  const ChatInputBar({
    super.key,
    required this.textController,
    required this.onSend,
    this.focusNode,
    this.onGalleryTap,
    this.replyingToMessage,
    this.onCancelReply,
  });

  final TextEditingController textController;
  final VoidCallback onSend;
  final FocusNode? focusNode;
  final VoidCallback? onGalleryTap;
  final ChatMessage? replyingToMessage;
  final VoidCallback? onCancelReply;

  @override
  State<ChatInputBar> createState() => _ChatInputBarState();
}

class _ChatInputBarState extends State<ChatInputBar> {
  bool _isUploading = false;

  Future<void> _pickAndSendImage(ImageSource source) async {
    final picker = ImagePicker();
    final file = await picker.pickImage(
      source: source,
      imageQuality: 80,
      maxWidth: 1920,
    );
    if (file == null || !mounted) return;

    setState(() => _isUploading = true);

    try {
      final mimeType = lookupMimeType(file.path);
      final apiService = context.read<ChatApiService>();
      final bloc = context.read<ChatBloc>();
      final conversationId = bloc.state.currentConversationId;
      if (conversationId == null) return;

      final fileUrl = await apiService.uploadFile(
        filePath: file.path,
        fileName: file.name,
        mimeType: mimeType,
      );

      if (fileUrl != null && mounted) {
        bloc.add(
          ChatEvent.sendMessage(
            conversationId: conversationId,
            type: 'image',
            fileUrl: fileUrl,
          ),
        );
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(context.l10n.chatInputSendImageError(e.toString()))),
        );
      }
    } finally {
      if (mounted) setState(() => _isUploading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
      decoration: const BoxDecoration(color: Colors.white),
      child: SafeArea(
        top: false,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (widget.replyingToMessage != null) ...[
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
                margin: EdgeInsets.only(bottom: 8.h),
                decoration: BoxDecoration(
                  color: AppColors.grayVeryLight,
                  border: Border(
                    left: BorderSide(color: AppColors.primary, width: 4.w),
                  ),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(8.r),
                    bottomRight: Radius.circular(8.r),
                  ),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            context.l10n.chatInputReplying,
                            style: TextStyle(
                              color: AppColors.primary,
                              fontWeight: FontWeight.bold,
                              fontSize: 12.sp,
                            ),
                          ),
                          SizedBox(height: 4.h),
                          Text(
                            widget.replyingToMessage?.content ??
                                (widget.replyingToMessage?.type == 'image'
                                ? context.l10n.chatMessageImage
                                    : context.l10n.chatInputDefaultMessage),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: AppColors.grayDark,
                              fontSize: 14.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.close, size: 20),
                      onPressed: widget.onCancelReply,
                      padding: EdgeInsets.zero,
                      constraints: const BoxConstraints(),
                    ),
                  ],
                ),
              ),
            ],
            Row(
              children: [
                if (_isUploading)
                  Container(
                    margin: EdgeInsets.only(right: 8.w),
                    width: 24.r,
                    height: 24.r,
                    child: const CircularProgressIndicator(strokeWidth: 2),
                  )
                else ...[
                  GestureDetector(
                    onTap: () => _pickAndSendImage(ImageSource.camera),
                    child: Icon(
                      Icons.camera_alt_outlined,
                      color: AppColors.grayMedium,
                      size: 24.r,
                    ),
                  ),
                  SizedBox(width: 8.w),
                  GestureDetector(
                    onTap:
                        widget.onGalleryTap ??
                        () => _pickAndSendImage(ImageSource.gallery),
                    child: Icon(
                      Icons.image_outlined,
                      color: AppColors.grayMedium,
                      size: 24.r,
                    ),
                  ),
                  SizedBox(width: 12.w),
                ],
                Expanded(
                  child: TextField(
                    focusNode: widget.focusNode,
                    controller: widget.textController,
                    decoration: InputDecoration(
                      hintText: 'Aa',
                      hintStyle: const TextStyle(color: AppColors.grayMedium),
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 16.w,
                        vertical: 10.h,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.r),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: AppColors.grayVeryLight,
                      suffixIcon: const Icon(
                        Icons.sentiment_satisfied_alt,
                        color: AppColors.primary,
                      ),
                    ),
                    maxLines: null,
                    textInputAction: TextInputAction.send,
                    onSubmitted: (_) => widget.onSend(),
                  ),
                ),
                SizedBox(width: 8.w),
                ValueListenableBuilder<TextEditingValue>(
                  valueListenable: widget.textController,
                  builder: (context, value, child) {
                    final isEmpty = value.text.trim().isEmpty;
                    return IconButton(
                      icon: Icon(
                        isEmpty
                            ? Icons.thumb_up_alt_rounded
                            : Icons.send_rounded,
                        color: AppColors.primary,
                      ),
                      onPressed: () {
                        if (isEmpty) {
                          final bloc = context.read<ChatBloc>();
                          final conversationId =
                              bloc.state.currentConversationId;
                          if (conversationId != null) {
                            bloc.add(
                              ChatEvent.sendMessage(
                                conversationId: conversationId,
                                content: '👍',
                              ),
                            );
                          }
                        } else {
                          widget.onSend();
                        }
                      },
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
