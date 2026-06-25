import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/features/chat/domain/entity/contact.dart';
import 'package:tanlu_management/features/chat/presentation/widgets/chat_avatar.dart';
import 'package:tanlu_management/features/chat/presentation/widgets/chat_peer.dart';

class ChatContactStrip extends StatelessWidget {
  const ChatContactStrip({
    super.key,
    required this.contacts,
    required this.onContactTap,
  });

  final List<Contact> contacts;
  final void Function(Contact contact) onContactTap;

  @override
  Widget build(BuildContext context) {
    if (contacts.isEmpty) {
      return Padding(
        padding: EdgeInsets.fromLTRB(16.w, 4.h, 16.w, 12.h),
        child: AppText.b2(
          'Chưa có ai trong danh bạ',
          fontSize: 12.sp,
          color: AppColors.grayMedium,
        ),
      );
    }

    return SizedBox(
      height: 92.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.fromLTRB(16.w, 4.h, 16.w, 8.h),
        itemCount: contacts.length,
        separatorBuilder: (_, _) => SizedBox(width: 12.w),
        itemBuilder: (context, index) {
          final contact = contacts[index];
          final peer = ChatPeer.fromContact(contact);
          final label = peer.name.split(' ').last;
          return SizedBox(
            width: 60.w,
            child: InkWell(
              onTap: () => onContactTap(contact),
              borderRadius: BorderRadius.circular(8.r),
              child: Column(
                children: [
                  ChatAvatar(name: peer.name, imageUrl: peer.avatar, size: 52),
                  SizedBox(height: 4.h),
                  AppText.b2(
                    label,
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.grayDark,
                    maxLines: 1,
                    textOverflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
