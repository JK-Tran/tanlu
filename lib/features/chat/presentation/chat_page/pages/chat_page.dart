import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tanlu_management/core/base/base_page_state.dart';
import 'package:tanlu_management/core/widgets/app_snackbar.dart';
import 'package:tanlu_management/core/widgets/main_app_bar.dart';
import 'package:tanlu_management/features/chat/domain/entity/chat_contact.dart';
import 'package:tanlu_management/features/chat/domain/entity/chat_conversation.dart';
import 'package:tanlu_management/features/chat/presentation/bloc/chat_bloc.dart';
import 'package:tanlu_management/features/chat/presentation/chat_detail/pages/chat_detail_page.dart';
import 'package:tanlu_management/features/chat/presentation/chat_page/widgets/chat_body.dart';
import 'package:tanlu_management/l10n/l10n.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends BasePageState<ChatPage, ChatBloc> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
    // Only load if not already loading to prevent double calls
    if (!bloc.state.isLoadingConversations &&
        bloc.state.conversations.isEmpty) {
      bloc.add(const ChatEvent.loadConversations(isRefresh: true));
    }
    if (!bloc.state.isLoadingContacts && bloc.state.contacts.isEmpty) {
      bloc.add(const ChatEvent.loadContacts());
    }
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 200) {
      if (!bloc.state.isLoadingConversations &&
          !bloc.state.hasReachedMaxConversations) {
        bloc.add(const ChatEvent.loadConversations(isRefresh: false));
      }
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _navigateToDetail(BuildContext context, ChatConversation conversation) {
    bloc.add(ChatEvent.selectConversation(conversation.id));
    Navigator.of(context, rootNavigator: true).push(
      MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: bloc,
          child: ChatDetailPage(conversationName: conversation.name),
        ),
      ),
    );
  }

  void _onTapContact(BuildContext context, ChatContact contact) {
    bloc.add(
      ChatEvent.initConversation(contact.id, (conversationId) {
        if (context.mounted) {
          final conv = bloc.state.conversations.firstWhere(
            (c) => c.id == conversationId,
            orElse: () =>
                ChatConversation(id: conversationId, name: contact.fullName),
          );
          _navigateToDetail(context, conv);
        }
      }),
    );
  }

  @override
  Widget buildPage(BuildContext context) {
    return BlocConsumer<ChatBloc, ChatState>(
      listenWhen: (prev, curr) =>
          prev.onPageError != curr.onPageError && curr.onPageError.isNotEmpty,
      listener: (context, state) {
        AppSnackbar.show(
          context,
          message: state.onPageError,
          type: AppSnackbarType.error,
        );
      },
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: MainAppBar(title: context.l10n.navMessage),
          body: SafeArea(
            child: ChatBody(
              state: state,
              scrollController: _scrollController,
              onTapConversation: (conv) => _navigateToDetail(context, conv),
              onTapContact: (contact) => _onTapContact(context, contact),
            ),
          ),
        );
      },
    );
  }
}
