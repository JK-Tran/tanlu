import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/features/chat/domain/entity/chat_message.dart';
import 'package:tanlu_management/features/chat/domain/entity/enums/message_status.dart';
import 'package:tanlu_management/shared/utils/date_time_utils.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tanlu_management/features/chat/presentation/bloc/chat_bloc.dart';
import 'package:tanlu_management/features/chat/presentation/chat_detail/widgets/message_action_bottom_sheet.dart';
import 'package:tanlu_management/features/chat/presentation/chat_detail/widgets/message_bubbles/message_content_bubbles.dart';
import 'package:tanlu_management/features/chat/presentation/chat_detail/widgets/message_bubbles/message_reply_wrapper.dart';
import 'package:tanlu_management/features/chat/presentation/chat_detail/widgets/message_bubbles/message_reactions_bar.dart';
import 'package:flutter/services.dart';
import 'package:tanlu_management/core/widgets/app_toast.dart';
import 'package:tanlu_management/core/widgets/app_confirm_dialog.dart';
import 'package:tanlu_management/l10n/l10n.dart';

class MessageItem extends StatefulWidget {
  const MessageItem({
    super.key,
    required this.message,
    this.groupedMessages,
    required this.isMine,
    required this.currentUserId,
    this.avatarUrl,
    this.showReaction = false,
    this.showTime = false,
    this.isHighlighted = false,
    this.isNewerFromSameUser = false,
    this.showStatus = false,
    required this.onReply,
    required this.onJumpToMessage,
  });

  final ChatMessage message;
  final List<ChatMessage>? groupedMessages;
  final bool isMine;
  final int currentUserId;
  final String? avatarUrl;
  final bool showReaction;
  final bool showTime;
  final bool showStatus;
  final bool isHighlighted;
  final bool isNewerFromSameUser;
  final VoidCallback onReply;
  final Function(int) onJumpToMessage;

  @override
  State<MessageItem> createState() => _MessageItemState();
}

class _MessageItemState extends State<MessageItem> {
  bool _showTime = false;

  void _toggleDetails() {
    setState(() {
      _showTime = !_showTime;
    });
  }

  @override
  Widget build(BuildContext context) {
    final isError = widget.message.status == MessageStatus.error;
    final isSending = widget.message.status == MessageStatus.sending;

    final effectivelyShowTime =
        widget.showTime || _showTime || isError || isSending;
    final effectivelyShowStatus =
        widget.showStatus || _showTime || isError || isSending;

    return Padding(
      padding: EdgeInsets.only(
        bottom:
            (effectivelyShowTime ||
                (effectivelyShowStatus && widget.isMine) ||
                !widget.isNewerFromSameUser)
            ? 16.h
            : 6.h,
      ),
      child: Row(
        mainAxisAlignment: widget.isMine
            ? MainAxisAlignment.end
            : MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Flexible(
            child: Dismissible(
              key: ValueKey('msg_${widget.message.id}'),
              direction: widget.isMine
                  ? DismissDirection.endToStart
                  : DismissDirection.startToEnd,
              confirmDismiss: (direction) async {
                widget.onReply();
                return false; // Luôn nảy về vị trí cũ (không xóa)
              },
              dismissThresholds: const {
                DismissDirection.endToStart: 0.2,
                DismissDirection.startToEnd: 0.2,
              },
              background: Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 16.w),
                child: const Icon(
                  Icons.reply_rounded,
                  color: AppColors.grayMedium,
                ),
              ),
              secondaryBackground: Container(
                alignment: Alignment.centerRight,
                padding: EdgeInsets.only(right: 16.w),
                child: const Icon(
                  Icons.reply_rounded,
                  color: AppColors.grayMedium,
                ),
              ),
              child: GestureDetector(
                onTap: _toggleDetails,
                onLongPress: _showActionBottomSheet,
                child: Column(
                  crossAxisAlignment: widget.isMine
                      ? CrossAxisAlignment.end
                      : CrossAxisAlignment.start,
                  children: [
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        AnimatedContainer(
                          duration: const Duration(milliseconds: 500),
                          constraints: BoxConstraints(
                            maxWidth: MediaQuery.of(context).size.width * 0.75,
                          ),
                          padding: widget.message.type == 'image'
                              ? EdgeInsets.zero
                              : EdgeInsets.symmetric(
                                  horizontal: 16.w,
                                  vertical: 12.h,
                                ),
                          decoration: BoxDecoration(
                            color: widget.isHighlighted
                                ? AppColors.primary.withValues(alpha: 0.3)
                                : (widget.message.type == 'image'
                                      ? Colors.transparent
                                      : (widget.isMine
                                            ? AppColors.primaryLight
                                            : Colors.white)),
                            borderRadius: BorderRadius.circular(20.r),
                            boxShadow:
                                (widget.isMine ||
                                    widget.message.type == 'image')
                                ? []
                                : [
                                    BoxShadow(
                                      color: Colors.black.withValues(
                                        alpha: 0.05,
                                      ),
                                      blurRadius: 8,
                                      offset: const Offset(0, 2),
                                    ),
                                  ],
                          ),
                          child: _buildMessageContent(),
                        ),
                        if (widget.message.reactions.isNotEmpty)
                          Positioned(
                            bottom: -10.h,
                            right: widget.isMine ? null : 12.w,
                            left: widget.isMine ? 12.w : null,
                            child: MessageReactionsBar(
                              reactions: widget.message.reactions,
                            ),
                          ),
                      ],
                    ),
                    if (effectivelyShowTime ||
                        (effectivelyShowStatus && widget.isMine)) ...[
                      SizedBox(
                        height: widget.message.reactions.isNotEmpty
                            ? 14.h
                            : 6.h,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          if (effectivelyShowTime)
                            AppText.t1(
                              DateTimeUtils.formatHourMinute(
                                    widget.message.createdAt,
                                  ) ??
                                  '',
                              color: AppColors.grayMedium,
                              fontSize: 9.sp,
                            ),
                          if (effectivelyShowTime &&
                              effectivelyShowStatus &&
                              widget.isMine)
                            SizedBox(width: 4.w),
                          if (effectivelyShowStatus && widget.isMine)
                            _buildStatusIcon(),
                        ],
                      ),
                    ],
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _showActionBottomSheet() {
    if (widget.message.isRevoked) return;

    final chatBloc = context.read<ChatBloc>();

    int? currentReactionId;
    try {
      final myReaction = widget.message.reactions.firstWhere(
        (r) => r.userId == widget.currentUserId,
      );
      currentReactionId = myReaction.reactionType;
    } catch (_) {}

    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (sheetContext) {
        return MessageActionBottomSheet(
          isMine: widget.isMine,
          currentReactionId: currentReactionId,
          onReactionSelected: (reactionId) {
            chatBloc.add(
              ChatEvent.reactMessage(
                widget.message.conversationId,
                widget.message.id,
                reactionId,
              ),
            );
          },
          onReply: widget.onReply,
          onCopy: widget.message.type == 'text'
              ? () {
                  Clipboard.setData(
                    ClipboardData(text: widget.message.content),
                  );
                  if (context.mounted) {
                    AppToast.show(context, message: context.l10n.chatMsgCopied);
                  }
                }
              : null,
          onRevoke: () async {
            final confirm = await AppConfirmDialog.show(
              context,
              title: context.l10n.chatRevokeTitle,
              content: context.l10n.chatRevokeConfirmMsg,
              confirmLabel: context.l10n.chatActionRevoke,
              type: AppConfirmDialogType.warning,
            );

            if (confirm == true) {
              if (!mounted) return;

              chatBloc.add(
                ChatEvent.revokeMessage(
                  widget.message.conversationId,
                  widget.message.id,
                ),
              );
              AppToast.show(
                context,
                message: context.l10n.chatMsgRevokedSuccess,
              );
            }
          },
        );
      },
    );
  }

  Widget _buildStatusIcon() {
    switch (widget.message.status) {
      case MessageStatus.sending:
        return SizedBox(
          width: 12.r,
          height: 12.r,
          child: CircularProgressIndicator(
            strokeWidth: 2,
            color: AppColors.grayMedium,
          ),
        );
      case MessageStatus.error:
        return Icon(Icons.error_outline, color: Colors.red, size: 14.r);
      case MessageStatus.read:
        return Icon(Icons.done_all, color: AppColors.primary, size: 14.r);
      case MessageStatus.sent:
        return Icon(
          Icons.check_circle_outline,
          color: AppColors.grayMedium,
          size: 14.r,
        );
    }
  }

  /// Render nội dung tin nhắn theo loại (text / image / file).
  Widget _buildMessageContent() {
    if (widget.message.isRevoked) {
      return const RevokedMessageBubble();
    }

    Widget content;
    if (widget.groupedMessages != null && widget.groupedMessages!.isNotEmpty) {
      content = GroupedImageBubble(groupedMessages: widget.groupedMessages!);
    } else if (widget.message.type == 'image' &&
        widget.message.fileUrl.isNotEmpty) {
      content = SingleImageBubble(fileUrl: widget.message.fileUrl);
    } else if (widget.message.type == 'file') {
      content = FileMessageBubble(content: widget.message.content);
    } else {
      content = TextMessageBubble(content: widget.message.content);
    }

    if (widget.message.replyToMessage != null) {
      return MessageReplyWrapper(
        replyToMessage: widget.message.replyToMessage!,
        isMine: widget.isMine,
        onJumpToMessage: widget.onJumpToMessage,
        child: content,
      );
    }

    return content;
  }
}
