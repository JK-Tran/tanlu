import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tanlu_management/features/app/presentation/bloc/app_bloc.dart';
import 'package:tanlu_management/features/chat/domain/entity/chat_conversation.dart';
import 'package:tanlu_management/features/chat/domain/entity/chat_contact.dart';
import 'package:tanlu_management/features/chat/presentation/bloc/chat_bloc.dart';
import 'package:tanlu_management/features/chat/presentation/chat_page/widgets/chat_list.dart';
import 'package:tanlu_management/features/chat/presentation/chat_page/widgets/chat_search_bar.dart';
import 'package:tanlu_management/features/chat/presentation/chat_page/widgets/contact_list.dart';

class ChatBody extends StatelessWidget {
  const ChatBody({
    super.key,
    required this.state,
    required this.scrollController,
    required this.onTapConversation,
    required this.onTapContact,
  });

  final ChatState state;
  final ScrollController scrollController;
  final void Function(ChatConversation) onTapConversation;
  final void Function(ChatContact) onTapContact;

  @override
  Widget build(BuildContext context) {
    // Lấy currentUserId để loại trừ chính mình khi check online ở danh sách hội thoại
    final currentUserId = context.read<AppBloc>().currentUser?.id ?? 0;

    // Hiển thị tất cả contacts, chấm xanh được xử lý bên trong ContactList theo onlineUserIds
    final filteredContacts = state.searchQuery.isEmpty
        ? state.contacts
        : state.contacts
              .where(
                (c) => c.fullName.toLowerCase().contains(
                  state.searchQuery.toLowerCase(),
                ),
              )
              .toList();

    return RefreshIndicator(
      onRefresh: () async {
        // Bloc provider is not accessible directly here without context,
        // we can pass onRefresh callback if needed, but keeping it simple for UI.
        // If needed, context.read<ChatBloc>().add(RefreshConversationsEvent());
      },
      child: CustomScrollView(
        controller: scrollController,
        slivers: [
          const SliverToBoxAdapter(child: ChatSearchBar()),
          SliverToBoxAdapter(
            child: ContactList(
              contacts: filteredContacts,
              onlineUserIds: state.onlineUserIds,
              onTap: onTapContact,
            ),
          ),
          ChatList(
            state: state,
            currentUserId: currentUserId,
            onTapConversation: onTapConversation,
            scrollController: scrollController,
          ),
          if (state.isLoadingConversations && state.conversations.isNotEmpty)
            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: Center(child: CircularProgressIndicator()),
              ),
            ),
        ],
      ),
    );
  }
}
