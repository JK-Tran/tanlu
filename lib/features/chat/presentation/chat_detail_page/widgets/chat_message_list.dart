import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/core/widgets/shimmer_list.dart';
import 'package:tanlu_management/features/chat/domain/entity/message.dart';
import 'package:tanlu_management/features/chat/presentation/chat_detail_page/widgets/chat_message_item.dart';
import 'package:tanlu_management/features/chat/presentation/widgets/chat_message_rows_builder.dart';

/// Chat message list using [ListView.reverse] so new messages appear at the
/// bottom without programmatic scrolling.
class ChatMessageList extends StatefulWidget {
  const ChatMessageList({
    super.key,
    required this.messages,
    required this.currentUserId,
    required this.isGroup,
    this.isLoading = false,
    this.isLoadingOlder = false,
    this.hasMoreOlder = true,
    this.onLoadOlder,
  });

  final List<Message> messages;
  final String currentUserId;
  final bool isGroup;
  final bool isLoading;
  final bool isLoadingOlder;
  final bool hasMoreOlder;
  final VoidCallback? onLoadOlder;

  @override
  State<ChatMessageList> createState() => _ChatMessageListState();
}

class _ChatMessageListState extends State<ChatMessageList> {
  final _scrollController = ScrollController();
  bool _loadRequested = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void didUpdateWidget(ChatMessageList oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (!widget.isLoadingOlder) {
      _loadRequested = false;
    }
  }

  @override
  void dispose() {
    _scrollController
      ..removeListener(_onScroll)
      ..dispose();
    super.dispose();
  }

  void _onScroll() {
    if (!widget.hasMoreOlder ||
        widget.isLoadingOlder ||
        widget.onLoadOlder == null ||
        _loadRequested) {
      return;
    }

    if (!_scrollController.hasClients) return;

    final position = _scrollController.position;
    if (position.pixels < position.maxScrollExtent - 120) return;

    _loadRequested = true;
    widget.onLoadOlder!();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.isLoading && widget.messages.isEmpty) {
      return const ShimmerList(itemCount: 5, itemHeight: 64);
    }

    if (widget.messages.isEmpty) {
      return Center(
        child: AppText.b1(
          'Hãy gửi tin nhắn đầu tiên',
          fontSize: 12.sp,
          color: AppColors.grayMedium,
        ),
      );
    }

    final rows = ChatMessageRowsBuilder.build(
      messages: widget.messages,
      currentUserId: widget.currentUserId,
    );
    final showHeader =
        widget.isLoadingOlder || (widget.hasMoreOlder && rows.isNotEmpty);

    return ListView.builder(
      controller: _scrollController,
      reverse: true,
      padding: EdgeInsets.fromLTRB(16.w, 8.h, 16.w, 8.h),
      itemCount: rows.length + (showHeader ? 1 : 0),
      itemBuilder: (context, index) {
        if (index == rows.length) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 12.h),
            child: Center(
              child: widget.isLoadingOlder
                  ? SizedBox(
                      width: 22.w,
                      height: 22.w,
                      child: const CircularProgressIndicator(strokeWidth: 2),
                    )
                  : AppText.b2(
                      'Kéo lên để xem tin cũ hơn',
                      color: AppColors.grayMedium,
                      fontSize: 11.sp,
                    ),
            ),
          );
        }

        final row = rows[rows.length - 1 - index];
        if (row.isSeparator) {
          return ChatMessageDateSeparator(
            key: ValueKey(row.separatorKey ?? row.dateSeparator),
            label: row.dateSeparator!,
          );
        }

        final message = row.message!;
        return ChatMessageItem(
          key: ValueKey(message.id),
          message: message,
          isMine: row.isMine,
          showAvatar: !row.isMine,
          showSenderName: widget.isGroup && !row.isMine,
        );
      },
    );
  }
}
