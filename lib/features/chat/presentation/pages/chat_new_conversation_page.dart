import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_search_bar.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/features/attendance/presentation/widgets/attendance_avatar.dart';
import 'package:tanlu_management/features/chat/presentation/enums/chat_conversation_type.dart';
import 'package:tanlu_management/features/chat/presentation/models/chat_mock_data.dart';
import 'package:tanlu_management/features/chat/presentation/models/chat_ui_models.dart';
import 'package:tanlu_management/features/chat/presentation/pages/chat_detail_page.dart';
import 'package:tanlu_management/features/chat/presentation/widgets/chat_list_app_bar.dart';

class ChatNewConversationPage extends StatefulWidget {
  const ChatNewConversationPage({super.key});

  @override
  State<ChatNewConversationPage> createState() =>
      _ChatNewConversationPageState();
}

class _ChatNewConversationPageState extends State<ChatNewConversationPage> {
  final _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  List<ChatContact> get _filteredContacts {
    final query = _searchController.text.trim().toLowerCase();
    if (query.isEmpty) return ChatMockData.contacts;
    return ChatMockData.contacts
        .where((c) => c.name.toLowerCase().contains(query))
        .toList();
  }

  void _openDirectChat(ChatContact contact) {
    final conversation = ChatConversation(
      id: 'direct-${contact.id}',
      name: contact.name,
      lastMessage: '',
      timeLabel: '',
      type: ChatConversationType.direct,
      subtitle: contact.role,
    );
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (_) => ChatDetailPage(conversation: conversation),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.grayBg,
      appBar: const ChatListAppBar(
        showBack: true,
        title: 'Tin nhắn mới',
        hideActions: true,
      ),
      body: ListView(
        padding: EdgeInsets.only(bottom: 24.h),
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(16.w, 8.h, 16.w, 16.h),
            child: AppSearchBar(
              controller: _searchController,
              hintText: 'Tìm tên, số điện thoại...',
              onChanged: (_) => setState(() {}),
            ),
          ),
          _QuickAction(
            icon: Icons.group_add_rounded,
            color: AppColors.info,
            label: 'Tạo nhóm mới',
            onTap: () {},
          ),
          _QuickAction(
            icon: Icons.school_rounded,
            color: AppColors.warning,
            label: 'Tạo nhóm lớp',
            onTap: () {},
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(16.w, 20.h, 16.w, 8.h),
            child: AppText.b1(
              'Gợi ý',
              fontWeight: FontWeight.w700,
              fontSize: 14.sp,
              color: AppColors.grayDark,
            ),
          ),
          for (final contact in _filteredContacts)
            _ContactTile(
              contact: contact,
              onTap: () => _openDirectChat(contact),
            ),
        ],
      ),
    );
  }
}

class _QuickAction extends StatelessWidget {
  const _QuickAction({
    required this.icon,
    required this.color,
    required this.label,
    required this.onTap,
  });

  final IconData icon;
  final Color color;
  final String label;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
          child: Row(
            children: [
              Container(
                width: 44.w,
                height: 44.w,
                decoration: BoxDecoration(
                  color: color.withValues(alpha: 0.12),
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Icon(icon, color: color),
              ),
              SizedBox(width: 12.w),
              AppText.b1(
                label,
                fontWeight: FontWeight.w600,
                fontSize: 15.sp,
                color: AppColors.grayDark,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ContactTile extends StatelessWidget {
  const _ContactTile({required this.contact, required this.onTap});

  final ChatContact contact;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
          child: Row(
            children: [
              AttendanceAvatar(nickname: contact.name, size: 44),
              SizedBox(width: 12.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText.b1(
                      contact.name,
                      fontWeight: FontWeight.w700,
                      fontSize: 15.sp,
                      color: AppColors.grayDark,
                    ),
                    AppText.b2(
                      contact.role,
                      color: AppColors.grayMedium,
                      fontSize: 12.sp,
                    ),
                  ],
                ),
              ),
              if (contact.isOnline)
                Container(
                  width: 8.r,
                  height: 8.r,
                  decoration: const BoxDecoration(
                    color: AppColors.success,
                    shape: BoxShape.circle,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
