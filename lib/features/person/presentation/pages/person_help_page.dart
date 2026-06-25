import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_snackbar.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/features/person/presentation/widgets/person_menu_tile.dart';
import 'package:tanlu_management/features/person/presentation/widgets/person_sub_page_bar.dart';

class PersonHelpPage extends StatelessWidget {
  const PersonHelpPage({super.key});

  void _comingSoon(BuildContext context) {
    AppSnackbar.show(
      context,
      message: 'Nội dung sẽ được cập nhật sớm',
      type: AppSnackbarType.info,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.grayBg,
      appBar: const PersonSubPageBar(title: 'Trung tâm trợ giúp'),
      body: ListView(
        padding: EdgeInsets.all(16.w),
        children: [
          AppText.b2(
            'Chúng tôi luôn sẵn sàng hỗ trợ bạn',
            color: AppColors.grayMedium,
            fontSize: 13.sp,
          ),
          SizedBox(height: 12.h),
          PersonMenuGroup(
            children: [
              PersonMenuTile(
                icon: Icons.quiz_outlined,
                title: 'Câu hỏi thường gặp',
                onTap: () => _comingSoon(context),
              ),
              PersonMenuTile(
                icon: Icons.mail_outline_rounded,
                title: 'Liên hệ hỗ trợ',
                value: 'support@tanlu.edu.vn',
                onTap: () => _comingSoon(context),
              ),
              PersonMenuTile(
                icon: Icons.menu_book_outlined,
                title: 'Hướng dẫn sử dụng',
                showDivider: false,
                onTap: () => _comingSoon(context),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
