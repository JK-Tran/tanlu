import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_search_bar.dart';
import 'package:tanlu_management/features/chat/presentation/models/chat_mock_data.dart';
import 'package:tanlu_management/features/chat/presentation/models/chat_ui_models.dart';
import 'package:tanlu_management/features/chat/presentation/pages/chat_detail_page.dart';
import 'package:tanlu_management/features/chat/presentation/pages/chat_new_conversation_page.dart';
import 'package:tanlu_management/features/chat/presentation/widgets/chat_conversation_tile.dart';
import 'package:tanlu_management/features/chat/presentation/widgets/chat_list_app_bar.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  bool _showSearch = false;
  final _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  List<ChatConversation> get _filteredConversations {
    final query = _searchController.text.trim().toLowerCase();
    if (query.isEmpty) return ChatMockData.conversations;
    return ChatMockData.conversations
        .where(
          (c) =>
              c.name.toLowerCase().contains(query) ||
              c.lastMessage.toLowerCase().contains(query),
        )
        .toList();
  }

  void _openConversation(ChatConversation conversation) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => ChatDetailPage(conversation: conversation),
      ),
    );
  }

  void _openNewChat() {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => const ChatNewConversationPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.grayBg,
      appBar: ChatListAppBar(
        showSearch: _showSearch,
        onSearchTap: () => setState(() => _showSearch = !_showSearch),
        onNewChatTap: _openNewChat,
      ),
      body: Column(
        children: [
          if (_showSearch)
            Padding(
              padding: EdgeInsets.fromLTRB(16.w, 0, 16.w, 12.h),
              child: AppSearchBar(
                controller: _searchController,
                hintText: 'Tìm tin nhắn, tên...',
                onChanged: (_) => setState(() {}),
              ),
            ),
          Expanded(
            child: ListView.separated(
              itemCount: _filteredConversations.length,
              separatorBuilder: (_, _) => Divider(
                height: 1,
                color: AppColors.grayLight.withValues(alpha: 0.6),
              ),
              itemBuilder: (_, index) {
                final conversation = _filteredConversations[index];
                return ChatConversationTile(
                  conversation: conversation,
                  onTap: () => _openConversation(conversation),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
