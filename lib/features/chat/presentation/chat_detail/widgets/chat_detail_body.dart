import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mime/mime.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/features/chat/data/sources/chat_api_service.dart';
import 'package:tanlu_management/features/chat/presentation/bloc/chat_bloc.dart';
import 'package:tanlu_management/features/chat/domain/entity/chat_message.dart';
import 'package:tanlu_management/features/chat/presentation/chat_detail/widgets/chat_input_bar.dart';
import 'package:tanlu_management/features/chat/presentation/chat_detail/controllers/chat_jump_controller.dart';
import 'package:tanlu_management/features/chat/presentation/chat_detail/widgets/message_list.dart';
import 'package:tanlu_management/features/chat/presentation/chat_detail/widgets/inline_media_picker.dart';
import 'package:tanlu_management/l10n/l10n.dart';

class ChatDetailBody extends StatefulWidget {
  const ChatDetailBody({
    super.key,
    required this.state,
    required this.currentUserId,
    required this.jumpController,
    required this.conversationName,
    required this.textController,
    required this.onSendMessage,
    this.replyingToMessage,
    required this.onCancelReply,
    required this.onReply,
  });

  final ChatState state;
  final int currentUserId;
  final ChatJumpController jumpController;
  final String conversationName;
  final TextEditingController textController;
  final VoidCallback onSendMessage;
  final ChatMessage? replyingToMessage;
  final VoidCallback onCancelReply;
  final Function(ChatMessage) onReply;

  @override
  State<ChatDetailBody> createState() => _ChatDetailBodyState();
}

class _ChatDetailBodyState extends State<ChatDetailBody> {
  bool _showMediaPicker = false;
  bool _showJumpToBottom = false;
  late final FocusNode _focusNode;

  void _onScrollChanged() {
    final positions = widget.jumpController.itemPositionsListener.itemPositions.value;
    if (positions.isEmpty) return;

    final minIndex = positions.map((e) => e.index).reduce((a, b) => a < b ? a : b);
    
    // In a reverse list, being not at 0 implies we scrolled up. So index > 3 means far enough
    final show = minIndex > 3 || widget.state.hasMoreAfter;
    if (show != _showJumpToBottom) {
      setState(() {
        _showJumpToBottom = show;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _focusNode.addListener(() {
      if (_focusNode.hasFocus && _showMediaPicker) {
        setState(() {
          _showMediaPicker = false;
        });
      }
    });
    widget.jumpController.itemPositionsListener.itemPositions.addListener(_onScrollChanged);
  }

  @override
  void didUpdateWidget(ChatDetailBody oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.jumpController != widget.jumpController) {
      oldWidget.jumpController.itemPositionsListener.itemPositions.removeListener(_onScrollChanged);
      widget.jumpController.itemPositionsListener.itemPositions.addListener(_onScrollChanged);
    }
    // Check if visibility should change due to new state (e.g. hasMoreAfter changed)
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) _onScrollChanged();
    });
  }

  @override
  void dispose() {
    widget.jumpController.itemPositionsListener.itemPositions.removeListener(_onScrollChanged);
    _focusNode.dispose();
    super.dispose();
  }

  void _jumpToBottom() {
    if (widget.state.hasMoreAfter && widget.state.currentConversationId != null) {
      if (widget.jumpController.itemScrollController.isAttached) {
        widget.jumpController.itemScrollController.jumpTo(index: 0);
      }
      // Reload fresh messages
      context.read<ChatBloc>().add(
        ChatEvent.loadMessages(conversationId: widget.state.currentConversationId!),
      );
    } else if (widget.jumpController.itemScrollController.isAttached) {
      widget.jumpController.itemScrollController.scrollTo(
        index: 0,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
    }
  }

  void _toggleMediaPicker() {
    if (_showMediaPicker) {
      _focusNode.requestFocus();
    } else {
      _focusNode.unfocus();
      setState(() {
        _showMediaPicker = true;
      });
    }
  }

  Future<void> _handleImagesSelected(List<File> files) async {
    setState(() => _showMediaPicker = false);
    for (var file in files) {
      try {
        final mimeType = lookupMimeType(file.path);
        final apiService = context.read<ChatApiService>();
        final bloc = context.read<ChatBloc>();
        final conversationId = bloc.state.currentConversationId;
        if (conversationId == null) return;

        final fileUrl = await apiService.uploadFile(
          filePath: file.path,
          fileName: file.path.split('/').last,
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
            SnackBar(
              content: Text(context.l10n.chatInputSendImageError(e.toString())),
            ),
          );
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Stack(
            children: [
              GestureDetector(
                onTap: () {
                  if (_focusNode.hasFocus) _focusNode.unfocus();
                  if (_showMediaPicker) {
                    setState(() => _showMediaPicker = false);
                  }
                },
                child:
                    widget.state.isLoadingMessages && widget.state.messages.isEmpty
                    ? const Center(child: CircularProgressIndicator(color: AppColors.primary))
                    : MessageList(
                        state: widget.state,
                        currentUserId: widget.currentUserId,
                        jumpController: widget.jumpController,
                        conversationName: widget.conversationName,
                        onReply: widget.onReply,
                      ),
              ),
              if (_showJumpToBottom)
                Positioned(
                  right: 16.w,
                  bottom: 16.h,
                  child: FloatingActionButton(
                    mini: true,
                    backgroundColor: Colors.white,
                    foregroundColor: AppColors.primary,
                    elevation: 3,
                    onPressed: _jumpToBottom,
                    child: const Icon(Icons.keyboard_arrow_down),
                  ),
                ),
            ],
          ),
        ),
        ChatInputBar(
          textController: widget.textController,
          onSend: widget.onSendMessage,
          focusNode: _focusNode,
          onGalleryTap: _toggleMediaPicker,
          replyingToMessage: widget.replyingToMessage,
          onCancelReply: widget.onCancelReply,
        ),
        if (_showMediaPicker)
          SizedBox(
            height: 300.h,
            child: InlineMediaPicker(onImagesSelected: _handleImagesSelected),
          ),
      ],
    );
  }
}
