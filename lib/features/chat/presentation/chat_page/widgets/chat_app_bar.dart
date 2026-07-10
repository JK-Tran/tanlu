import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/features/attendance/presentation/widgets/attendance_avatar.dart';
import 'package:tanlu_management/features/feed/presentation/feed_page/widgets/feed_app_bar.dart';

class ChatAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ChatAppBar({super.key});

  @override
  Size get preferredSize => Size.fromHeight(56.h);

  @override
  Widget build(BuildContext context) {
    return const FeedAppBar(title: 'Tin nhắn');
  }
}

class ChatAvatar extends StatelessWidget {
  const ChatAvatar({
    super.key,
    required this.name,
    this.imageUrl,
    this.size = 44,
  });

  final String name;
  final String? imageUrl;
  final double size;

  @override
  Widget build(BuildContext context) {
    return AttendanceAvatar(nickname: name, imageUrl: imageUrl, size: size);
  }
}
