import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/features/chat/domain/entity/chat_conversation.dart';
import 'package:tanlu_management/features/chat/domain/entity/chat_message.dart';
import 'package:tanlu_management/features/chat/presentation/bloc/chat_bloc.dart';
import 'package:tanlu_management/features/chat/presentation/chat_detail/controllers/chat_jump_controller.dart';
import 'package:tanlu_management/features/chat/presentation/chat_detail/widgets/message_item.dart';
import 'package:tanlu_management/features/chat/presentation/chat_detail/widgets/message_bubbles/message_date_divider.dart';
import 'package:tanlu_management/l10n/l10n.dart';

class MessageList extends StatefulWidget {
  const MessageList({
    super.key,
    required this.state,
    required this.currentUserId,
    required this.jumpController,
    required this.conversationName,
    required this.onReply,
  });

  final ChatState state;
  final int currentUserId;
  final ChatJumpController jumpController;
  final String conversationName;
  final Function(ChatMessage) onReply;

  @override
  State<MessageList> createState() => _MessageListState();
}

class _MessageListState extends State<MessageList> {
  void _jumpToMessage(int targetId) {
    final groupIndex = _cachedGroups.indexWhere(
      (g) => g.messages.any((m) => m.id == targetId),
    );

    if (groupIndex != -1) {
      final actualIndex = widget.state.hasMoreAfter
          ? groupIndex + 1
          : groupIndex;
      widget.jumpController.jumpToLoadedMessage(actualIndex, targetId);
    } else {
      widget.jumpController.startJump(targetId);
      context.read<ChatBloc>().add(
        ChatEvent.jumpToMessage(
          conversationId: widget.state.currentConversationId!,
          targetMessageId: targetId,
        ),
      );
    }
  }

  // ─── Avatar ─────────────────────────────────────────────────────────────────

  String? get _avatarUrl {
    final conversation = widget.state.conversations.firstWhere(
      (c) => c.id == widget.state.currentConversationId,
      orElse: () => ChatConversation(id: 0, name: widget.conversationName),
    );
    return conversation.participantDetails.isNotEmpty
        ? conversation.participantDetails.values.first.avatarUrl
        : null;
  }

  // ─── Date Divider Logic ───────────────────────────────────────────────────────

  /// Hiển thị divider ngày ở đầu mỗi nhóm ngày (list reverse nên index + 1
  /// tương ứng với tin nhắn cũ hơn về mặt thời gian).
  bool _shouldShowDateDivider(int index) {
    final messages = widget.state.messages;

    // Tin nhắn cũ nhất (cuối list đảo ngược) → luôn hiển thị
    if (index == messages.length - 1) return true;

    final current = messages[index].createdAt;
    final previous = messages[index + 1].createdAt;
    if (current == null || previous == null) return false;

    return !_isSameDay(current.toLocal(), previous.toLocal());
  }

  /// Xác định xem tin nhắn kế tiếp (index - 1 trong list reverse)
  /// có thuộc ngày khác không → dùng để buộc hiển thị time & status.
  bool _isNextMessageDifferentDay(int index) {
    final messages = widget.state.messages;
    if (index <= 0) return false;

    final current = messages[index].createdAt;
    final next = messages[index - 1].createdAt;
    if (current == null || next == null) return false;

    return !_isSameDay(current.toLocal(), next.toLocal());
  }

  bool _isSameDay(DateTime a, DateTime b) =>
      a.year == b.year && a.month == b.month && a.day == b.day;

  /// Hiển thị time (giờ:phút) ở tin nhắn cuối cùng của mỗi người
  /// trong một chuỗi tin nhắn liên tiếp, hoặc khi qua ngày mới.
  bool _shouldShowTime(int index, ChatMessage message) {
    if (index == 0) return true;
    final nextMsgInTime =
        widget.state.messages[index - 1]; // Tin nhắn mới hơn liền kề
    return nextMsgInTime.senderId != message.senderId ||
        _isNextMessageDifferentDay(index);
  }

  /// Hiển thị status (sent/delivered/read) cho tin nhắn mới nhất
  /// mà người dùng hiện tại đã gửi.
  bool _shouldShowStatus(int index, ChatMessage message) {
    if (message.senderId != widget.currentUserId) return false;

    // Tìm xem có tin nhắn nào mới hơn từ người dùng hiện tại không
    // List messages đang bị reverse, index càng nhỏ là tin nhắn càng mới
    for (int i = 0; i < index; i++) {
      if (widget.state.messages[i].senderId == widget.currentUserId) {
        return false;
      }
    }
    return true;
  }

  List<_MessageGroup> _cachedGroups = [];

  // ─── Lifecycle ───────────────────────────────────────────────────────────────

  @override
  void initState() {
    super.initState();
    _calculateGroupedItems();
    widget.jumpController.addListener(_onJumpStateChanged);
  }

  @override
  void didUpdateWidget(MessageList oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.state.messages != widget.state.messages) {
      _calculateGroupedItems();
    }
    if (oldWidget.jumpController != widget.jumpController) {
      oldWidget.jumpController.removeListener(_onJumpStateChanged);
      widget.jumpController.addListener(_onJumpStateChanged);
    }
    _handlePendingJumpAfterLoad(oldWidget);
  }

  @override
  void dispose() {
    widget.jumpController.removeListener(_onJumpStateChanged);
    super.dispose();
  }

  void _onJumpStateChanged() {
    setState(() {});
  }

  /// Khi danh sách tin nhắn được load thêm và có message đang chờ jump → thực hiện scroll.
  void _handlePendingJumpAfterLoad(MessageList oldWidget) {
    final messagesLoaded =
        widget.state.messages.length != oldWidget.state.messages.length;
    final pendingId = widget.jumpController.pendingMessageId;
    if (!messagesLoaded || pendingId == null) return;

    final groupIndex = _cachedGroups.indexWhere(
      (g) => g.messages.any((m) => m.id == pendingId),
    );
    if (groupIndex == -1) return;

    final actualIndex = widget.state.hasMoreAfter ? groupIndex + 1 : groupIndex;
    widget.jumpController.onMessagesLoaded(actualIndex, pendingId);
  }

  // ─── Build ───────────────────────────────────────────────────────────────────

  void _calculateGroupedItems() {
    final messages = widget.state.messages;
    if (messages.isEmpty) {
      _cachedGroups = [];
      return;
    }

    final List<_MessageGroup> groups = [];
    List<ChatMessage> currentGroupMsgs = [messages.first];
    int firstIndex = 0;
    int lastIndex = 0;

    for (int i = 1; i < messages.length; i++) {
      final msg = messages[i]; // Tin nhắn cũ hơn (do mảng bị đảo ngược)
      final prevMsg = currentGroupMsgs.last; // Tin nhắn mới hơn liền trước đó

      bool canGroup =
          msg.type == 'image' &&
          msg.fileUrl.isNotEmpty &&
          prevMsg.type == 'image' &&
          prevMsg.fileUrl.isNotEmpty &&
          msg.senderId == prevMsg.senderId &&
          msg.replyToMessage == null &&
          prevMsg.replyToMessage == null;

      if (canGroup && msg.createdAt != null && prevMsg.createdAt != null) {
        final diff = prevMsg.createdAt!.difference(msg.createdAt!).abs();
        canGroup = diff.inMinutes <= 1;
      } else {
        canGroup = false;
      }

      if (canGroup) {
        currentGroupMsgs.add(msg);
        lastIndex = i;
      } else {
        // Đóng group hiện tại, đẩy vào danh sách
        groups.add(_MessageGroup(currentGroupMsgs, firstIndex, lastIndex));

        // Mở group mới
        currentGroupMsgs = [msg];
        firstIndex = i;
        lastIndex = i;
      }
    }

    // Đẩy group cuối cùng vào danh sách
    groups.add(_MessageGroup(currentGroupMsgs, firstIndex, lastIndex));

    _cachedGroups = groups;
  }

  @override
  Widget build(BuildContext context) {
    if (widget.state.messages.isEmpty) {
      return Center(
        child: AppText.b1(
          context.l10n.chatNoMessagesYet,
          color: AppColors.grayMedium,
        ),
      );
    }

    return ScrollablePositionedList.builder(
      itemScrollController: widget.jumpController.itemScrollController,
      itemPositionsListener: widget.jumpController.itemPositionsListener,
      reverse: true,
      physics: const AlwaysScrollableScrollPhysics(),
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      itemCount:
          _cachedGroups.length +
          (widget.state.hasMoreBefore ? 1 : 0) +
          (widget.state.hasMoreAfter ? 1 : 0),
      itemBuilder: (context, index) {
        // If index is the last element and hasMoreBefore is true, show top loading (Older)
        if (index ==
                _cachedGroups.length + (widget.state.hasMoreAfter ? 1 : 0) &&
            widget.state.hasMoreBefore) {
          return _buildLoadingIndicator(widget.state.isLoadingBefore);
        }

        // If index is 0 and hasMoreAfter is true, show bottom loading (Newer)
        if (index == 0 && widget.state.hasMoreAfter) {
          return _buildLoadingIndicator(widget.state.isLoadingAfter);
        }

        // Adjust index for groups
        final actualIndex = widget.state.hasMoreAfter ? index - 1 : index;
        return _buildGroupItem(context, _cachedGroups[actualIndex]);
      },
    );
  }

  Widget _buildGroupItem(BuildContext context, _MessageGroup group) {
    final message = group.messages.first;
    final isHighlighted = group.messages.any(
      (m) => m.id == widget.jumpController.highlightedMessageId,
    );

    bool isNewerFromSameUser = false;
    final actualIndex = _cachedGroups.indexOf(group);
    if (actualIndex > 0) {
      final newerGroup = _cachedGroups[actualIndex - 1];
      isNewerFromSameUser =
          newerGroup.messages.first.senderId == message.senderId;
    }

    final messageItem = MessageItem(
      message: message,
      groupedMessages: group.messages.length > 1 ? group.messages : null,
      isMine: message.senderId == widget.currentUserId,
      currentUserId: widget.currentUserId,
      avatarUrl: _avatarUrl,
      showStatus: _shouldShowStatus(group.firstIndex, message),
      showTime: _shouldShowTime(group.firstIndex, message),
      isHighlighted: isHighlighted,
      isNewerFromSameUser: isNewerFromSameUser,
      onReply: () => widget.onReply(message),
      onJumpToMessage: _jumpToMessage,
    );

    if (_shouldShowDateDivider(group.lastIndex) &&
        group.messages.last.createdAt != null) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          MessageDateDivider(date: group.messages.last.createdAt!),
          messageItem,
        ],
      );
    }

    return messageItem;
  }

  Widget _buildLoadingIndicator(bool isLoading) {
    if (!isLoading) return const SizedBox.shrink();
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Center(child: CircularProgressIndicator(color: AppColors.primary)),
    );
  }
}

class _MessageGroup {
  final List<ChatMessage> messages;
  final int firstIndex;
  final int lastIndex;

  _MessageGroup(this.messages, this.firstIndex, this.lastIndex);
}
