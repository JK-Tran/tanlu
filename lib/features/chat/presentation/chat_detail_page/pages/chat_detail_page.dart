import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_snackbar.dart';
import 'package:tanlu_management/features/chat/domain/entity/conversation.dart';
import 'package:tanlu_management/features/chat/presentation/bloc/chat_bloc.dart';
import 'package:tanlu_management/features/chat/presentation/chat_detail_page/widgets/chat_detail_app_bar.dart';
import 'package:tanlu_management/features/chat/presentation/chat_detail_page/widgets/chat_input_bar.dart';
import 'package:tanlu_management/features/chat/presentation/chat_detail_page/widgets/chat_message_list.dart';
import 'package:tanlu_management/shared/services/firebase/push/chat_foreground_context.dart';

class ChatDetailBody extends StatelessWidget {
  const ChatDetailBody({super.key, required this.conversation});

  final Conversation conversation;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatBloc, ChatState>(
      buildWhen: (prev, curr) =>
          prev.currentMessages != curr.currentMessages ||
          prev.isLoadingMessages != curr.isLoadingMessages ||
          prev.isLoadingOlderMessages != curr.isLoadingOlderMessages ||
          prev.hasMoreOlderMessages != curr.hasMoreOlderMessages ||
          prev.currentUserId != curr.currentUserId,
      builder: (context, state) {
        return ChatMessageList(
          messages: state.currentMessages,
          currentUserId: state.currentUserId,
          isGroup: conversation.type == 'group',
          isLoading: state.isLoadingMessages,
          isLoadingOlder: state.isLoadingOlderMessages,
          hasMoreOlder: state.hasMoreOlderMessages,
          onLoadOlder: () =>
              context.read<ChatBloc>().add(const LoadOlderMessages()),
        );
      },
    );
  }
}

class ChatDetailPage extends StatefulWidget {
  const ChatDetailPage({super.key, required this.conversation});

  final Conversation conversation;

  @override
  State<ChatDetailPage> createState() => _ChatDetailPageState();
}

class _ChatDetailPageState extends State<ChatDetailPage> {
  final _inputController = TextEditingController();
  final _imagePicker = ImagePicker();
  late final ChatBloc _chatBloc;

  @override
  void initState() {
    super.initState();
    _chatBloc = context.read<ChatBloc>();
    ChatForegroundContext.setActiveConversation(widget.conversation.id);
    _chatBloc.add(SelectConversation(widget.conversation));
  }

  @override
  void dispose() {
    ChatForegroundContext.setActiveConversation(null);
    _inputController.dispose();
    _chatBloc.add(const ClearCurrentConversation());
    super.dispose();
  }

  String? get _receiverId {
    if (widget.conversation.type == 'group') return null;
    final otherId = widget.conversation.memberIds.firstWhere(
      (id) => id != _chatBloc.state.currentUserId,
      orElse: () => '',
    );
    return otherId.isEmpty ? null : otherId;
  }

  void _sendMessage() {
    final text = _inputController.text.trim();
    if (text.isEmpty) return;

    _chatBloc.add(
      SendChatMessage(
        conversationId: widget.conversation.id,
        text: text,
        receiverId: _receiverId,
      ),
    );
    _inputController.clear();
  }

  Future<void> _pickImage(ImageSource source) async {
    if (_chatBloc.state.isSubmitting) return;

    try {
      final picked = await _imagePicker.pickImage(
        source: source,
        imageQuality: 85,
        maxWidth: 1920,
      );
      if (picked == null || !mounted) return;

      _chatBloc.add(
        SendChatMessage(
          conversationId: widget.conversation.id,
          text: '',
          type: 'image',
          fileUrl: picked.path,
          receiverId: _receiverId,
        ),
      );
    } catch (e) {
      if (!mounted) return;
      AppSnackbar.show(
        context,
        message: 'Không thể mở ${source == ImageSource.camera ? 'camera' : 'thư viện ảnh'}',
        type: AppSnackbarType.error,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ChatBloc, ChatState>(
      listenWhen: (prev, curr) =>
          prev.submitError != curr.submitError && curr.submitError.isNotEmpty,
      listener: (context, state) {
        AppSnackbar.show(
          context,
          message: state.submitError,
          type: AppSnackbarType.error,
        );
      },
      child: Scaffold(
        backgroundColor: AppColors.grayBg,
        appBar: ChatDetailAppBar(conversation: widget.conversation),
        body: Column(
          children: [
            Expanded(
              child: ChatDetailBody(conversation: widget.conversation),
            ),
            BlocBuilder<ChatBloc, ChatState>(
              buildWhen: (prev, curr) => prev.isSubmitting != curr.isSubmitting,
              builder: (context, state) {
                return ChatInputBar(
                  controller: _inputController,
                  onSend: _sendMessage,
                  onPickGallery: () => _pickImage(ImageSource.gallery),
                  onPickCamera: () => _pickImage(ImageSource.camera),
                  isSubmitting: state.isSubmitting,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
