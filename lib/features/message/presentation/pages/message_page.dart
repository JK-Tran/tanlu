import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Tin nhắn',
          style: TextStyle(
            color: Color(0xFF1C1C1E),
            fontSize: 22.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: false,
        elevation: 0,
        surfaceTintColor: Colors.transparent,
      ),
      floatingActionButton: FloatingActionButton(
        heroTag: 'message_edit_fab',
        onPressed: () {},
        backgroundColor: AppColors.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24.r),
        ),
        child: Icon(Icons.edit_outlined, color: Colors.white, size: 28),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0.w),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 48.h,
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      decoration: BoxDecoration(
                        color: const Color(0xFFF2F2F7),
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.search_rounded, color: Color(0xFF8E8E93)),
                          SizedBox(width: 8.w),
                          Text(
                            'Tìm kiếm tin nhắn...',
                            style: TextStyle(
                              color: Color(0xFF8E8E93),
                              fontSize: 16.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 12.w),
                  Container(
                    width: 48.w,
                    height: 48.h,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF2F2F7),
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    child: Icon(
                      Icons.filter_list_rounded,
                      color: Color(0xFF8E8E93),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.h),
            Expanded(
              child: ListView.separated(
                itemCount: _mockMessages.length,
                separatorBuilder: (context, index) => Divider(
                  height: 1.h,
                  indent: 80,
                  color: const Color(0xFFF2F2F7),
                ),
                itemBuilder: (context, index) {
                  final msg = _mockMessages[index];
                  return _buildMessageItem(msg);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMessageItem(Map<String, dynamic> msg) {
    final unreadCount = msg['unreadCount'] as int;
    final isUnread = unreadCount > 0;

    return InkWell(
      onTap: () {},
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
        child: Row(
          children: [
            // Avatar Placeholder
            Container(
              width: 52.w,
              height: 52.h,
              decoration: BoxDecoration(
                color: AppColors.primaryLight,
                shape: BoxShape.circle,
              ),
              alignment: Alignment.center,
              child: Text(
                msg['name'][0].toUpperCase(),
                style: TextStyle(
                  color: AppColors.primary,
                  fontSize: 22.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(width: 16.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    msg['name'],
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: isUnread ? FontWeight.bold : FontWeight.w600,
                      color: const Color(0xFF1C1C1E),
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    msg['snippet'],
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: isUnread
                          ? const Color(0xFF1C1C1E)
                          : const Color(0xFF8E8E93),
                      fontWeight: isUnread
                          ? FontWeight.w500
                          : FontWeight.normal,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            SizedBox(width: 12.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  msg['time'],
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: isUnread
                        ? AppColors.primary
                        : const Color(0xFF8E8E93),
                    fontWeight: isUnread ? FontWeight.bold : FontWeight.normal,
                  ),
                ),
                if (isUnread) ...[
                  SizedBox(height: 6.h),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 6.w,
                      vertical: 2.h,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Text(
                      unreadCount.toString(),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 11.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ] else
                  SizedBox(height: 24.h), // For alignment balance
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// Mock Data
final _mockMessages = [
  {
    'name': 'Chị Mai (Mẹ bé Minh Khang)',
    'snippet': 'Cám ơn cô, hôm nay Khang về kể nhiều lắm ạ',
    'time': '09:30',
    'unreadCount': 2,
  },
  {
    'name': 'Anh Nam (Bố bé Khánh Vy)',
    'snippet': 'Vậy cuối tuần mình có bài tập gì không cô?',
    'time': '08:45',
    'unreadCount': 1,
  },
  {
    'name': 'Chị Hoa (Mẹ bé Gia Hân)',
    'snippet': 'Bé Hân dạo này tiến bộ hơn nhiều ạ ❤️',
    'time': 'Hôm qua',
    'unreadCount': 0,
  },
  {
    'name': 'Anh Tuấn (Bố bé Đức An)',
    'snippet': 'Cô gửi giúp mình video hôm nay nhé',
    'time': 'Hôm qua',
    'unreadCount': 0,
  },
  {
    'name': 'Chị Linh (Mẹ bé Bảo Nam)',
    'snippet': 'Cảm ơn cô. Chúc cô ngày mới tốt lành!',
    'time': '12/05',
    'unreadCount': 0,
  },
];
