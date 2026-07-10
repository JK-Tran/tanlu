import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/base/base_page_state.dart';
import 'package:tanlu_management/core/base/default_bloc.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/features/chat/presentation/chat_page/widgets/chat_app_bar.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends BasePageState<ChatPage, DefaultBloc> {
  @override
  Widget buildPage(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const ChatAppBar(),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 8.h),
        children: [
          _ConversationTile(
            name: 'Phụ huynh bé An',
            lastMessage: 'Con nhà mình hôm nay ăn uống thế nào ạ?',
            timeLabel: '10:30',
            unreadCount: 2,
            onTap: () => Navigator.of(context, rootNavigator: true).push(
              MaterialPageRoute(
                builder: (_) => const ChatDetailPlaceholderPage(
                  title: 'Phụ huynh bé An',
                ),
              ),
            ),
          ),
          _ConversationTile(
            name: 'Nhóm Lớp Mầm 1',
            lastMessage: 'Cô nhắc đóng học phí tháng 6 nhé.',
            timeLabel: 'Hôm qua',
            unreadCount: 0,
            onTap: () => Navigator.of(context, rootNavigator: true).push(
              MaterialPageRoute(
                builder: (_) => const ChatDetailPlaceholderPage(
                  title: 'Nhóm Lớp Mầm 1',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ConversationTile extends StatelessWidget {
  const _ConversationTile({
    required this.name,
    required this.lastMessage,
    required this.timeLabel,
    required this.unreadCount,
    required this.onTap,
  });

  final String name;
  final String lastMessage;
  final String timeLabel;
  final int unreadCount;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: ChatAvatar(name: name, size: 48),
      title: AppText.b2(name, fontWeight: FontWeight.w600),
      subtitle: AppText.t1(lastMessage, maxLines: 1),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          AppText.t1(timeLabel, color: AppColors.grayMedium),
          if (unreadCount > 0) ...[
            SizedBox(height: 4.h),
            CircleAvatar(
              radius: 10.r,
              backgroundColor: AppColors.primary,
              child: AppText.t1(
                '$unreadCount',
                color: Colors.white,
                fontSize: 10.sp,
              ),
            ),
          ],
        ],
      ),
    );
  }
}

class ChatDetailPlaceholderPage extends StatelessWidget {
  const ChatDetailPlaceholderPage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: ListView(
        padding: EdgeInsets.all(16.w),
        children: const [
          _MessageBubble(text: 'Xin chào cô!', isMine: false),
          _MessageBubble(text: 'Chào phụ huynh, con hôm nay ổn ạ.', isMine: true),
          _MessageBubble(
            text: 'Con nhà mình hôm nay ăn uống thế nào ạ?',
            isMine: false,
          ),
        ],
      ),
    );
  }
}

class _MessageBubble extends StatelessWidget {
  const _MessageBubble({required this.text, required this.isMine});

  final String text;
  final bool isMine;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isMine ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: EdgeInsets.only(bottom: 8.h),
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
        decoration: BoxDecoration(
          color: isMine ? AppColors.primaryLight : AppColors.grayBg,
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: AppText.b2(text),
      ),
    );
  }
}
