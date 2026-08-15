import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/features/chat/presentation/bloc/chat_bloc.dart';
import 'package:tanlu_management/l10n/l10n.dart';

class ChatSearchBar extends StatelessWidget {
  const ChatSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(16.w, 12.h, 16.w, 16.h),
      child: Container(
        height: 44.h,
        decoration: BoxDecoration(
          color: AppColors.grayVeryLight,
          borderRadius: BorderRadius.circular(22.r),
        ),
        child: TextField(
          onChanged: (value) {
            context.read<ChatBloc>().add(ChatEvent.searchConversations(value));
          },
          decoration: InputDecoration(
            hintText: context.l10n.chatSearchContactHint,
            hintStyle: TextStyle(
              color: AppColors.grayMedium,
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
            ),
            prefixIcon: Icon(
              Icons.search_rounded,
              color: AppColors.grayMedium,
              size: 24.r,
            ),
            border: InputBorder.none,
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 16.w,
              vertical: 12.h,
            ),
          ),
          style: TextStyle(
            color: AppColors.grayDark,
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
