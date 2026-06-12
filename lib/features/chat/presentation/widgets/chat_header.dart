import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';

class ChatHeader extends StatelessWidget {
  const ChatHeader({super.key});

  @override
  Widget build(BuildContext context) {
    //final currentUser = context.read<AppBloc>().currentUser;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Row(
        children: [
          CircleAvatar(
            radius: 26.r,
            backgroundColor: Colors.white,
            child: Icon(Icons.person_rounded, color: AppColors.grayMedium, size: 30.sp),
          ),
          SizedBox(width: 12.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppText.h2(
                  'Tin nhắn',
                  fontWeight: FontWeight.w800,
                  fontSize: 24.sp,
                  color: const Color(0xFF14193F), // Dark blue/indigo
                ),
                Row(
                  children: [
                    Container(
                      width: 8.r,
                      height: 8.r,
                      decoration: BoxDecoration(
                        color: AppColors.success,
                        shape: BoxShape.circle,
                      ),
                    ),
                    SizedBox(width: 6.w),
                    AppText.b2(
                      'Đang hoạt động',
                      color:
                          AppColors.grayMedium, // Purple text like screenshot
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.italic,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Transform.scale(
            scale: 1.7,
            child: Image.asset(
              'assets/images/img-chat.png',
              width: 80.w, // Adjust size based on image
              height: 80.w,
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}

class ChatSearchBar extends StatelessWidget {
  final ValueChanged<String>? onChanged;

  const ChatSearchBar({super.key, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 4.h),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white, // Solid white for clarity
          borderRadius: BorderRadius.circular(24.r),
        ),
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 4.h),
        child: Row(
          children: [
            Icon(Icons.search, color: AppColors.grayMedium, size: 22.sp),
            SizedBox(width: 8.w),
            Expanded(
              child: TextField(
                onChanged: onChanged,
                decoration: InputDecoration(
                  hintText: 'Tìm kiếm',
                  hintStyle: TextStyle(
                    color: AppColors.grayMedium,
                    fontSize: 16.sp,
                  ),
                  border: InputBorder.none,
                  isDense: true,
                ),
                style: TextStyle(color: AppColors.grayDark, fontSize: 16.sp),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
