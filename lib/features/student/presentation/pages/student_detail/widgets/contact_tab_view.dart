import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/features/student/domain/entity/contact.dart';
import 'package:tanlu_management/features/student/presentation/pages/student_detail/widgets/contact_card.dart';

class ContactTabView extends StatelessWidget {
  final List<Contact> contacts;

  const ContactTabView({super.key, required this.contacts});

  @override
  Widget build(BuildContext context) {
    if (contacts.isEmpty) {
      return Center(
        child: AppText.b2(
          'Chưa có thông tin phụ huynh',
          color: AppColors.grayMedium,
        ),
      );
    }

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
            child: AppText.t2(
              'Thông tin phụ huynh',
              fontWeight: FontWeight.bold,
              color: AppColors.grayDark,
            ),
          ),
          ...contacts.map(
            (contact) => Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 4.h),
              child: ContactCard(contact: contact),
            ),
          ),
        ],
      ),
    );
  }
}
