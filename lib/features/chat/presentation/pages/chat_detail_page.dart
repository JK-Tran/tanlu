import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/features/chat/presentation/models/chat_mock_data.dart';
import 'package:tanlu_management/features/chat/presentation/models/chat_ui_models.dart';
import 'package:tanlu_management/features/chat/presentation/pages/chat_group_info_page.dart';
import 'package:tanlu_management/features/chat/presentation/widgets/chat_detail_app_bar.dart';
import 'package:tanlu_management/features/chat/presentation/widgets/chat_input_bar.dart';
import 'package:tanlu_management/features/chat/presentation/widgets/chat_message_actions_sheet.dart';
import 'package:tanlu_management/features/chat/presentation/widgets/chat_message_bubble.dart';
import 'package:tanlu_management/features/chat/presentation/widgets/chat_pinned_banner.dart';

class ChatDetailPage extends StatefulWidget {
  const ChatDetailPage({super.key, required this.conversation});

  final ChatConversation conversation;

  @override
  State<ChatDetailPage> createState() => _ChatDetailPageState();
}

class _ChatDetailPageState extends State<ChatDetailPage> {
  final _inputController = TextEditingController();
  bool _showAttachments = false;

  late final List<ChatMessage> _messages =
      ChatMockData.messagesFor(widget.conversation.id);

  @override
  void dispose() {
    _inputController.dispose();
    super.dispose();
  }

  void _openGroupInfo() {
    if (!widget.conversation.type.isGroup) return;
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => ChatGroupInfoPage(conversation: widget.conversation),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final pinned = widget.conversation.pinnedMessage;

    return Scaffold(
      backgroundColor: AppColors.grayBg,
      appBar: ChatDetailAppBar(
        conversation: widget.conversation,
        onMoreTap: widget.conversation.type.isGroup ? _openGroupInfo : null,
      ),
      body: Column(
        children: [
          if (pinned != null) ChatPinnedBanner(message: pinned),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
              itemCount: _messages.length,
              itemBuilder: (_, index) {
                final message = _messages[index];
                return ChatMessageBubble(
                  message: message,
                  showAvatar: widget.conversation.type.isGroup,
                  onLongPress: message.dateSeparator == null
                      ? () => ChatMessageActionsSheet.show(context)
                      : null,
                );
              },
            ),
          ),
          ChatInputBar(
            controller: _inputController,
            showAttachments: _showAttachments,
            onToggleAttachments: () {
              setState(() => _showAttachments = !_showAttachments);
            },
            onSend: () {},
          ),
        ],
      ),
    );
  }
}
