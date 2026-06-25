import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/features/person/presentation/widgets/person_menu_tile.dart';
import 'package:tanlu_management/features/person/presentation/widgets/person_sub_page_bar.dart';

class PersonAboutPage extends StatelessWidget {
  const PersonAboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.grayBg,
      appBar: const PersonSubPageBar(title: 'Giới thiệu ứng dụng'),
      body: ListView(
        padding: EdgeInsets.all(16.w),
        children: [
          SizedBox(height: 12.h),
          Center(
            child: Container(
              width: 80.w,
              height: 80.w,
              decoration: BoxDecoration(
                color: AppColors.primaryLight,
                borderRadius: BorderRadius.circular(20.r),
              ),
              child: Icon(
                Icons.star_rounded,
                color: AppColors.primary,
                size: 44.w,
              ),
            ),
          ),
          SizedBox(height: 12.h),
          Center(
            child: AppText.h1(
              'Tanlu Management',
              fontWeight: FontWeight.w800,
              fontSize: 18.sp,
              color: AppColors.grayDark,
            ),
          ),
          Center(
            child: AppText.b2(
              'Phiên bản 1.0.0',
              color: AppColors.grayMedium,
              fontSize: 13.sp,
            ),
          ),
          SizedBox(height: 24.h),
          PersonMenuGroup(
            children: [
              PersonMenuTile(
                icon: Icons.article_outlined,
                title: 'Điều khoản sử dụng',
                onTap: () {},
              ),
              PersonMenuTile(
                icon: Icons.privacy_tip_outlined,
                title: 'Chính sách bảo mật',
                onTap: () {},
              ),
              PersonMenuTile(
                icon: Icons.star_outline_rounded,
                title: 'Đánh giá ứng dụng',
                showDivider: false,
                onTap: () {},
              ),
            ],
          ),
          SizedBox(height: 32.h),
          Center(
            child: AppText.b2(
              '© 2026 Tanlu Education',
              color: AppColors.grayMedium,
              fontSize: 12.sp,
            ),
          ),
        ],
      ),
    );
  }
}
