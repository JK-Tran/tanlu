import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';

class ChatAttachmentPanel extends StatelessWidget {
  const ChatAttachmentPanel({super.key});

  static const _quickEmojis = ['😀', '❤️', '👍', '😂', '🙏', '🎉'];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.fromLTRB(16.w, 12.h, 16.w, 8.h),
      color: AppColors.grayBg,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: _quickEmojis
                  .map(
                    (e) => Padding(
                      padding: EdgeInsets.only(right: 8.w),
                      child: Text(e, style: TextStyle(fontSize: 24.sp)),
                    ),
                  )
                  .toList(),
            ),
          ),
          SizedBox(height: 12.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              _AttachmentItem(
                icon: Icons.image_outlined,
                label: 'Ảnh',
                color: AppColors.info,
              ),
              _AttachmentItem(
                icon: Icons.photo_camera_outlined,
                label: 'Camera',
                color: AppColors.success,
              ),
              _AttachmentItem(
                icon: Icons.insert_drive_file_outlined,
                label: 'File',
                color: AppColors.warning,
              ),
              _AttachmentItem(
                icon: Icons.location_on_outlined,
                label: 'Vị trí',
                color: AppColors.primary,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _AttachmentItem extends StatelessWidget {
  const _AttachmentItem({
    required this.icon,
    required this.label,
    required this.color,
  });

  final IconData icon;
  final String label;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 52.w,
          height: 52.w,
          decoration: BoxDecoration(
            color: color.withValues(alpha: 0.12),
            shape: BoxShape.circle,
          ),
          child: Icon(icon, color: color, size: 24.w),
        ),
        SizedBox(height: 6.h),
        AppText.b2(label, fontSize: 11.sp, color: AppColors.grayMedium),
      ],
    );
  }
}
