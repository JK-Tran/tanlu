import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tanlu_management/core/constants/chat_constants.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_snackbar.dart';
import 'package:tanlu_management/features/chat/domain/entity/conversation.dart';
import 'package:tanlu_management/features/chat/presentation/bloc/chat_bloc.dart';
import 'package:tanlu_management/features/chat/presentation/chat_detail_page/widgets/chat_detail_app_bar.dart';
import 'package:tanlu_management/features/chat/presentation/chat_detail_page/widgets/chat_input_bar.dart';
import 'package:tanlu_management/features/chat/presentation/chat_detail_page/widgets/chat_media_picker_panel.dart';
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
  final _mediaPickerKey = GlobalKey<ChatMediaPickerPanelState>();
  late final ChatBloc _chatBloc;
  bool _isMediaPanelOpen = false;

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

  void _toggleMediaPanel() {
    if (_chatBloc.state.isSubmitting) return;

    FocusManager.instance.primaryFocus?.unfocus();
    setState(() => _isMediaPanelOpen = !_isMediaPanelOpen);
  }

  void _closeMediaPanel() {
    if (!_isMediaPanelOpen) return;
    setState(() => _isMediaPanelOpen = false);
  }

  void _sendImages(List<String> paths) {
    if (paths.isEmpty) return;

    final limited = paths.take(ChatConstants.maxImagesPerSend);
    for (final path in limited) {
      _chatBloc.add(
        SendChatMessage(
          conversationId: widget.conversation.id,
          text: '',
          type: 'image',
          fileUrl: path,
          receiverId: _receiverId,
        ),
      );
    }
    _closeMediaPanel();
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
            Visibility(
              visible: _isMediaPanelOpen,
              maintainState: true,
              child: ChatMediaPickerPanel(
                key: _mediaPickerKey,
                onSend: _sendImages,
                onClose: _closeMediaPanel,
                onOpenCamera: () => _pickImage(ImageSource.camera),
              ),
            ),
            BlocBuilder<ChatBloc, ChatState>(
              buildWhen: (prev, curr) => prev.isSubmitting != curr.isSubmitting,
              builder: (context, state) {
                return ChatInputBar(
                  controller: _inputController,
                  onSend: _sendMessage,
                  onPickGallery: _toggleMediaPanel,
                  onPickCamera: () => _pickImage(ImageSource.camera),
                  isSubmitting: state.isSubmitting,
                  isMediaPanelOpen: _isMediaPanelOpen,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
