import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/features/chat/domain/entity/chat_contact.dart';
import 'package:tanlu_management/core/widgets/app_avatar.dart';
import 'package:tanlu_management/shared/utils/string_utils.dart';
import 'package:tanlu_management/l10n/l10n.dart';

class ContactList extends StatelessWidget {
  const ContactList({
    super.key,
    required this.contacts,
    required this.onlineUserIds,
    required this.onTap,
  });

  final List<ChatContact> contacts;
  final List<int> onlineUserIds;
  final void Function(ChatContact) onTap;

  @override
  Widget build(BuildContext context) {
    if (contacts.isEmpty) return const SizedBox.shrink();

    return Container(
      color: Colors.white,

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: AppText.h2(
              fontSize: 14,
              context.l10n.chatStatusOnline,
              fontWeight: FontWeight.w700,
              color: AppColors.grayDark,
            ),
          ),
          SizedBox(height: 12.h),
          SizedBox(
            height: 105.h,
            child: ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              scrollDirection: Axis.horizontal,
              itemCount: contacts.length,
              itemBuilder: (context, index) {
                final contact = contacts[index];
                return _ContactItem(
                  contact: contact,
                  isOnline: onlineUserIds.contains(contact.id),
                  onTap: () => onTap(contact),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _ContactItem extends StatelessWidget {
  const _ContactItem({
    required this.contact,
    required this.isOnline,
    required this.onTap,
  });

  final ChatContact contact;
  final bool isOnline;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 66.w,
        margin: EdgeInsets.only(right: 12.w),
        child: Column(
          children: [
            Stack(
              children: [
                AppAvatar(
                  name: contact.fullName,
                  imageUrl: contact.avatarUrl,
                  size: 48,
                ),
                if (isOnline)
                  Positioned(
                    bottom: 0,
                    right: 4,
                    child: Container(
                      width: 14.r,
                      height: 14.r,
                      decoration: BoxDecoration(
                        color: const Color(0xFF4CAF50),
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: 2.5),
                      ),
                    ),
                  ),
              ],
            ),
            SizedBox(height: 8.h),
            AppText.t1(
              StringUtils.getLastName(contact.fullName),
              maxLines: 1,
              textAlign: TextAlign.center,
              fontSize: 10.sp,
              textOverflow: TextOverflow.ellipsis,
              fontWeight: FontWeight.w600,
              color: AppColors.grayDark,
            ),
          ],
        ),
      ),
    );
  }
}
