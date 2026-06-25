import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_snackbar.dart';
import 'package:tanlu_management/features/app/presentation/bloc/app_bloc.dart';
import 'package:tanlu_management/features/chat/domain/entity/contact.dart';
import 'package:tanlu_management/features/chat/domain/entity/conversation.dart';
import 'package:tanlu_management/features/chat/presentation/bloc/chat_bloc.dart';
import 'package:tanlu_management/features/chat/presentation/chat_detail_page/pages/chat_detail_page.dart';
import 'package:tanlu_management/features/chat/presentation/chat_page/widgets/chat_app_bar.dart';
import 'package:tanlu_management/features/chat/presentation/chat_page/widgets/chat_body.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  String? _pendingOpenContactId;
  late final ChatBloc _chatBloc;

  @override
  void initState() {
    super.initState();
    _chatBloc = context.read<ChatBloc>();
    final user = context.read<AppBloc>().currentUser;
    final bloc = _chatBloc;
    if (bloc.state.currentUserId.isEmpty && user != null) {
      bloc.add(
        ChatStarted(
          userId: user.id,
          classId: user.classId ?? '',
          centerId: user.centerId ?? '',
          fullName: user.fullName,
          avatar: user.avatar ?? '',
          role: user.role,
        ),
      );
    }
  }

  void _openConversation(Conversation conversation) {
    Navigator.of(context, rootNavigator: true).push(
      MaterialPageRoute<void>(
        builder: (_) => BlocProvider.value(
          value: _chatBloc,
          child: ChatDetailPage(conversation: conversation),
        ),
      ),
    );
  }

  void _onContactTap(Contact contact) {
    final bloc = context.read<ChatBloc>();

    if (contact.canChat) {
      setState(() => _pendingOpenContactId = contact.id);
      bloc.add(OpenDirectChat(contact: contact));
      return;
    }

    if (contact.pendingRequest == 'pendingReceived') {
      AppSnackbar.show(
        context,
        message: 'Vui lòng chấp nhận lời mời ở tab Lời mời',
        type: AppSnackbarType.info,
      );
      return;
    }

    if (contact.pendingRequest == 'pendingSent') return;

    bloc.add(SubmitFriendRequest(toUserId: contact.id));
    AppSnackbar.show(
      context,
      message: 'Đã gửi lời mời kết bạn',
      type: AppSnackbarType.success,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ChatBloc, ChatState>(
      listenWhen: (prev, curr) =>
          (prev.onPageError != curr.onPageError &&
              curr.onPageError.isNotEmpty) ||
          (prev.submitError != curr.submitError &&
              curr.submitError.isNotEmpty) ||
          (prev.currentConversation?.id != curr.currentConversation?.id &&
              _pendingOpenContactId != null),
      listener: (context, state) {
        if (state.submitError.isNotEmpty) {
          AppSnackbar.show(
            context,
            message: state.submitError,
            type: AppSnackbarType.error,
          );
          setState(() => _pendingOpenContactId = null);
          return;
        }

        if (state.onPageError.isNotEmpty) {
          AppSnackbar.show(
            context,
            message: state.onPageError,
            type: AppSnackbarType.error,
          );
          return;
        }

        final pendingId = _pendingOpenContactId;
        final conversation = state.currentConversation;
        if (pendingId == null || conversation == null) return;
        if (!conversation.memberIds.contains(pendingId)) return;

        setState(() => _pendingOpenContactId = null);
        _openConversation(conversation);
      },
      builder: (context, state) {
        return Scaffold(
          backgroundColor: AppColors.grayBg,
          appBar: const ChatAppBar(),
          body: ChatBody(
            onConversationTap: _openConversation,
            onContactTap: _onContactTap,
          ),
        );
      },
    );
  }
}
