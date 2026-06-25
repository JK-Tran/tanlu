import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_search_bar.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/core/widgets/shimmer_list.dart';
import 'package:tanlu_management/features/chat/domain/entity/contact.dart';
import 'package:tanlu_management/features/chat/domain/entity/conversation.dart';
import 'package:tanlu_management/features/chat/presentation/bloc/chat_bloc.dart';
import 'package:tanlu_management/features/chat/presentation/chat_page/widgets/chat_contact_strip.dart';
import 'package:tanlu_management/features/chat/presentation/chat_page/widgets/chat_conversation_list.dart';

class ChatBody extends StatefulWidget {
  const ChatBody({
    super.key,
    required this.onConversationTap,
    required this.onContactTap,
  });

  final void Function(Conversation conversation) onConversationTap;
  final void Function(Contact contact) onContactTap;

  @override
  State<ChatBody> createState() => _ChatBodyState();
}

class _ChatBodyState extends State<ChatBody> {
  final _searchController = TextEditingController();
  bool _showRequests = false;

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  List<Conversation> _searchConversations(List<Conversation> list) {
    final query = _searchController.text.trim().toLowerCase();
    if (query.isEmpty) return list;
    return list
        .where(
          (c) =>
              c.name.toLowerCase().contains(query) ||
              c.lastMessageText.toLowerCase().contains(query),
        )
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatBloc, ChatState>(
      buildWhen: (prev, curr) =>
          prev.contacts != curr.contacts ||
          prev.conversations != curr.conversations ||
          prev.incomingFriendRequests != curr.incomingFriendRequests ||
          prev.isLoading != curr.isLoading ||
          prev.currentUserId != curr.currentUserId,
      builder: (context, state) {
        if (state.isLoading &&
            state.conversations.isEmpty &&
            state.contacts.isEmpty) {
          return const ShimmerList(itemCount: 6, itemHeight: 72);
        }

        final hasRequests = state.incomingFriendRequests.isNotEmpty;
        if (!hasRequests && _showRequests) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            if (mounted) setState(() => _showRequests = false);
          });
        }

        final conversations = _searchConversations(state.conversations);

        return RefreshIndicator(
          onRefresh: () async {
            context.read<ChatBloc>().add(const FetchContacts());
            await Future.delayed(const Duration(milliseconds: 400));
          },
          child: ListView(
            padding: EdgeInsets.only(bottom: 24.h),
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(16.w, 8.h, 16.w, 8.h),
                child: AppSearchBar(
                  controller: _searchController,
                  hintText: 'Tìm kiếm',
                  onChanged: (_) => setState(() {}),
                ),
              ),
              if (hasRequests) ...[
                _SegmentTabs(
                  showRequests: _showRequests,
                  requestCount: state.incomingFriendRequests.length,
                  onChanged: (v) => setState(() => _showRequests = v),
                ),
                SizedBox(height: 8.h),
              ],
              if (!_showRequests) ...[
                Padding(
                  padding: EdgeInsets.fromLTRB(16.w, 0, 16.w, 4.h),
                  child: AppText.b1(
                    'Danh bạ',
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                    color: AppColors.grayDark,
                  ),
                ),
                ChatContactStrip(
                  contacts: state.contacts,
                  onContactTap: widget.onContactTap,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(16.w, 8.h, 16.w, 4.h),
                  child: AppText.b1(
                    'Hội thoại',
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                    color: AppColors.grayDark,
                  ),
                ),
                ChatConversationList(
                  conversations: conversations,
                  currentUserId: state.currentUserId,
                  contacts: state.contacts,
                  onConversationTap: widget.onConversationTap,
                ),
              ] else
                ChatFriendRequestList(
                  requests: state.incomingFriendRequests,
                  contacts: state.contacts,
                ),
            ],
          ),
        );
      },
    );
  }
}

class _SegmentTabs extends StatelessWidget {
  const _SegmentTabs({
    required this.showRequests,
    required this.requestCount,
    required this.onChanged,
  });

  final bool showRequests;
  final int requestCount;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(16.w, 0, 16.w, 0),
      child: Row(
        children: [
          _Tab(
            label: 'Tất cả',
            selected: !showRequests,
            onTap: () => onChanged(false),
          ),
          SizedBox(width: 8.w),
          _Tab(
            label: 'Lời mời ($requestCount)',
            selected: showRequests,
            onTap: () => onChanged(true),
          ),
        ],
      ),
    );
  }
}

class _Tab extends StatelessWidget {
  const _Tab({
    required this.label,
    required this.selected,
    required this.onTap,
  });

  final String label;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: selected ? AppColors.primary : AppColors.white,
      borderRadius: BorderRadius.circular(8.r),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(8.r),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 8.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            border: Border.all(
              color: selected ? AppColors.primary : AppColors.grayLight,
            ),
          ),
          child: AppText.b2(
            label,
            fontSize: 12.sp,
            fontWeight: selected ? FontWeight.w600 : FontWeight.w500,
            color: selected ? AppColors.white : AppColors.grayDark,
          ),
        ),
      ),
    );
  }
}
