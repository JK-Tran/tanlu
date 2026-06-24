import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/features/chat/presentation/models/chat_ui_models.dart';
import 'package:tanlu_management/features/chat/presentation/widgets/chat_detail_app_bar.dart';

class ChatGroupInfoPage extends StatelessWidget {
  const ChatGroupInfoPage({super.key, required this.conversation});

  final ChatConversation conversation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.grayBg,
      appBar: ChatDetailAppBar(
        conversation: conversation,
        onMoreTap: () {},
      ),
      body: ListView(
        padding: EdgeInsets.only(bottom: 24.h),
        children: [
          SizedBox(height: 24.h),
          Center(
            child: Container(
              width: 88.w,
              height: 88.w,
              decoration: BoxDecoration(
                color: AppColors.primaryLight,
                borderRadius: BorderRadius.circular(24.r),
              ),
              child: Icon(
                Icons.groups_rounded,
                size: 44.w,
                color: AppColors.primary,
              ),
            ),
          ),
          SizedBox(height: 12.h),
          Center(
            child: AppText.h2(
              conversation.name,
              fontWeight: FontWeight.w800,
              fontSize: 18.sp,
              color: AppColors.grayDark,
              textAlign: TextAlign.center,
            ),
          ),
          Center(
            child: AppText.b2(
              '${conversation.memberCount ?? 0} thành viên',
              color: AppColors.grayMedium,
              fontSize: 13.sp,
            ),
          ),
          SizedBox(height: 24.h),
          _Section(
            title: 'Ảnh, video, file',
            child: SizedBox(
              height: 72.h,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                itemCount: 5,
                separatorBuilder: (_, _) => SizedBox(width: 8.w),
                itemBuilder: (_, i) => Container(
                  width: 72.w,
                  decoration: BoxDecoration(
                    color: AppColors.infoLight,
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Icon(Icons.image_outlined, color: AppColors.info),
                ),
              ),
            ),
          ),
          _InfoTile(
            icon: Icons.push_pin_outlined,
            title: 'Thông báo đã ghim',
            subtitle: conversation.pinnedMessage ?? 'Chưa có tin ghim',
          ),
          _InfoTile(
            icon: Icons.settings_outlined,
            title: 'Cài đặt nhóm',
            subtitle: 'Thông báo, quyền thành viên',
          ),
        ],
      ),
    );
  }
}

class _Section extends StatelessWidget {
  const _Section({required this.title, required this.child});

  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(16.w, 0, 16.w, 8.h),
          child: AppText.b1(
            title,
            fontWeight: FontWeight.w700,
            fontSize: 14.sp,
            color: AppColors.grayDark,
          ),
        ),
        child,
        SizedBox(height: 16.h),
      ],
    );
  }
}

class _InfoTile extends StatelessWidget {
  const _InfoTile({
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  final IconData icon;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: ListTile(
        leading: Icon(icon, color: AppColors.grayMedium),
        title: AppText.b1(
          title,
          fontWeight: FontWeight.w600,
          fontSize: 15.sp,
          color: AppColors.grayDark,
        ),
        subtitle: AppText.b2(
          subtitle,
          color: AppColors.grayMedium,
          fontSize: 12.sp,
          maxLines: 1,
          textOverflow: TextOverflow.ellipsis,
        ),
        trailing: Icon(Icons.chevron_right_rounded, color: AppColors.grayMedium),
        onTap: () {},
      ),
    );
  }
}
