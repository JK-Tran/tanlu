import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/features/chat/domain/entity/contact.dart';

class ContactList extends StatelessWidget {
  final List<Contact> contacts;
  final Set<int> onlineUserIds;
  final Function(Contact) onContactTap;

  const ContactList({
    super.key,
    required this.contacts,
    required this.onlineUserIds,
    required this.onContactTap,
  });

  @override
  Widget build(BuildContext context) {
    if (contacts.isEmpty) return const SizedBox.shrink();

    return SizedBox(
      height: 120.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        itemCount: contacts.length,
        itemBuilder: (context, index) {
          final contact = contacts[index];
          // Get first name for display
          final nameParts = contact.fullName.split(' ');
          final displayName = nameParts.length > 1
              ? '${nameParts[nameParts.length - 2]} ${nameParts.last}'
              : contact.fullName;

          final isOnline = onlineUserIds.contains(contact.id);

          return Padding(
            padding: EdgeInsetsGeometry.only(top: 16.h, right: 12.w),
            child: InkWell(
              onTap: () => onContactTap(contact),
              borderRadius: BorderRadius.circular(12.r),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        padding: EdgeInsets.all(2.r),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: isOnline ? AppColors.primary : Colors.white,
                            width: 1.5,
                          ),
                        ),
                        child: CircleAvatar(
                          radius: 28.r,
                          backgroundColor: AppColors.grayMedium,
                          backgroundImage: contact.avatarFileId != null
                              ? NetworkImage(
                                  contact.avatarFileId!,
                                ) // Giả sử avatarFileId là URL, hoặc bạn có thể thay bằng hàm build URL
                              : null,
                          child: contact.avatarFileId == null
                              ? Icon(
                                  Icons.person_rounded,
                                  color: AppColors.white,
                                  size: 32.sp,
                                )
                              : null,
                        ),
                      ),
                      if (isOnline)
                        Positioned(
                          right: 2,
                          bottom: 2,
                          child: Container(
                            width: 14.r,
                            height: 14.r,
                            decoration: BoxDecoration(
                              color: AppColors.success, // Messenger green
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: AppColors.white,
                                width: 2.5,
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                  SizedBox(height: 8.h),
                  SizedBox(
                    width: 56.r,
                    child: AppText.b2(
                      displayName,
                      fontSize: 13.sp,
                      color: AppColors.grayDark, // Pure black
                      fontWeight: FontWeight.w500,
                      textAlign: TextAlign.center,
                      maxLines: 1,
                      textOverflow: TextOverflow.ellipsis,
                    ),
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
