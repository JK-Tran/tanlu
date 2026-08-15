import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tanlu_management/features/chat/domain/entity/chat_message.dart';
import 'package:tanlu_management/shared/di/di.dart';
import 'package:tanlu_management/core/widgets/app_snackbar.dart';
import 'package:tanlu_management/features/app/presentation/bloc/app_bloc.dart';
import 'package:tanlu_management/features/chat/data/sources/chat_api_service.dart';
import 'package:tanlu_management/features/chat/domain/entity/chat_conversation.dart';
import 'package:tanlu_management/features/chat/presentation/bloc/chat_bloc.dart';
import 'package:tanlu_management/features/chat/presentation/chat_detail/widgets/chat_detail_app_bar.dart';
import 'package:tanlu_management/features/chat/presentation/chat_detail/widgets/chat_detail_body.dart';
import 'package:tanlu_management/features/chat/presentation/chat_detail/controllers/chat_jump_controller.dart';

class ChatDetailPage extends StatefulWidget {
  const ChatDetailPage({super.key, required this.conversationName});

  final String conversationName;

  @override
  State<ChatDetailPage> createState() => _ChatDetailPageState();
}

class _ChatDetailPageState extends State<ChatDetailPage> {
  final TextEditingController _textController = TextEditingController();
  late final ChatJumpController _jumpController;

  ChatMessage? _replyingToMessage;
  late final ChatBloc _chatBloc;

  @override
  void initState() {
    super.initState();
    _chatBloc = context.read<ChatBloc>();
    _jumpController = ChatJumpController();
    _jumpController.itemPositionsListener.itemPositions.addListener(_onScroll);
  }

  @override
  void dispose() {
    _jumpController.itemPositionsListener.itemPositions.removeListener(
      _onScroll,
    );
    _jumpController.dispose();
    _textController.dispose();
    _chatBloc.add(const ChatEvent.clearCurrentConversation());
    super.dispose();
  }

  void _onScroll() {
    if (_jumpController.isJumping) return;

    final bloc = context.read<ChatBloc>();
    final positions = _jumpController.itemPositionsListener.itemPositions.value;
    if (positions.isEmpty) return;

    final minIndex = positions
        .map((e) => e.index)
        .reduce((a, b) => a < b ? a : b);
    final maxIndex = positions
        .map((e) => e.index)
        .reduce((a, b) => a > b ? a : b);

    // Scroll to top of list (older messages)
    if (maxIndex >= bloc.state.messages.length - 2) {
      if (!bloc.state.isLoadingBefore &&
          bloc.state.hasMoreBefore &&
          bloc.state.currentConversationId != null) {
        bloc.add(
          ChatEvent.loadBeforeMessages(
            conversationId: bloc.state.currentConversationId!,
          ),
        );
      }
    }

    // Scroll to bottom of list (newer messages)
    if (minIndex <= 1) {
      if (!bloc.state.isLoadingAfter &&
          bloc.state.hasMoreAfter &&
          bloc.state.currentConversationId != null) {
        bloc.add(
          ChatEvent.loadAfterMessages(
            conversationId: bloc.state.currentConversationId!,
          ),
        );
      }
    }
  }

  void _sendMessage() {
    final text = _textController.text.trim();
    if (text.isEmpty) return;

    final bloc = context.read<ChatBloc>();
    if (bloc.state.currentConversationId != null) {
      bloc.add(
        ChatEvent.sendMessage(
          conversationId: bloc.state.currentConversationId!,
          content: text,
          replyToId: _replyingToMessage?.id,
        ),
      );
      _textController.clear();
      setState(() {
        _replyingToMessage = null;
      });
      // Optionally scroll to bottom (which is index 0 now)
      if (_jumpController.itemScrollController.isAttached) {
        _jumpController.itemScrollController.scrollTo(
          index: 0,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final currentUserId = context.read<AppBloc>().state.maybeWhen(
      authenticated: (user) => user.id,
      orElse: () => 0,
    );
    final currentConversation = context
        .read<ChatBloc>()
        .state
        .conversations
        .firstWhere(
          (c) => c.id == context.read<ChatBloc>().state.currentConversationId,
          orElse: () => ChatConversation(id: 0, name: widget.conversationName),
        );
    final avatarUrl = currentConversation.participantDetails.isNotEmpty
        ? currentConversation.participantDetails.values.first.avatarUrl
        : null;

    return RepositoryProvider.value(
      value: sl<ChatApiService>(),
      child: Scaffold(
        backgroundColor: const Color(0xFFF8F9FA),
        appBar: ChatDetailAppBar(
          conversationName: widget.conversationName,
          avatarUrl: avatarUrl,
          targetUserId: currentConversation.participants.firstWhere(
            (id) => id != currentUserId,
            orElse: () => 0,
          ),
        ),
        body: SafeArea(
          child: BlocConsumer<ChatBloc, ChatState>(
            listenWhen: (prev, curr) =>
                prev.onPageError != curr.onPageError &&
                curr.onPageError.isNotEmpty,
            listener: (context, state) {
              AppSnackbar.show(
                context,
                message: state.onPageError,
                type: AppSnackbarType.error,
              );
            },
            builder: (context, state) {
              return ChatDetailBody(
                state: state,
                currentUserId: currentUserId,
                jumpController: _jumpController,
                conversationName: widget.conversationName,
                textController: _textController,
                onSendMessage: _sendMessage,
                replyingToMessage: _replyingToMessage,
                onCancelReply: () {
                  setState(() {
                    _replyingToMessage = null;
                  });
                },
                onReply: (message) {
                  setState(() {
                    _replyingToMessage = message;
                  });
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
