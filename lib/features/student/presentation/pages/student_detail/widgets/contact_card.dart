import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_info_row.dart';
import 'package:tanlu_management/core/widgets/app_snackbar.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/features/student/domain/entity/contact.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactCard extends StatelessWidget {
  final Contact contact;

  const ContactCard({super.key, required this.contact});

  void _showPhoneActionSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24.r)),
      ),
      builder: (context) {
        return SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 12.h),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Drag handle indicator
                Container(
                  width: 40.w,
                  height: 4.h,
                  margin: EdgeInsets.only(bottom: 16.h),
                  decoration: BoxDecoration(
                    color: AppColors.grayLight,
                    borderRadius: BorderRadius.circular(2.r),
                  ),
                ),
                ListTile(
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 24.w,
                    vertical: 4.h,
                  ),
                  leading: Icon(
                    Icons.content_copy_rounded,
                    color: AppColors.primary,
                    size: 24.w,
                  ),
                  title: AppText.b1(
                    'Sao chép số điện thoại',
                    color: AppColors.grayDark,
                  ),
                  onTap: () {
                    Clipboard.setData(ClipboardData(text: contact.phone));
                    Navigator.pop(context);
                    AppSnackbar.showSuccess(context, message: 'Đã sao chép');
                  },
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.w),
                  child: Divider(
                    color: AppColors.grayLight.withValues(alpha: 0.5),
                    height: 1,
                    thickness: 1,
                  ),
                ),
                ListTile(
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 24.w,
                    vertical: 4.h,
                  ),
                  leading: Icon(
                    Icons.call_rounded,
                    color: AppColors.success,
                    size: 24.w,
                  ),
                  title: AppText.b1('Gọi điện', color: AppColors.grayDark),
                  onTap: () async {
                    Navigator.pop(context);
                    final Uri url = Uri.parse('tel:${contact.phone}');
                    if (await canLaunchUrl(url)) {
                      await launchUrl(url);
                    } else {
                      if (context.mounted) {
                        AppSnackbar.showError(
                          context,
                          message: 'Không thể gọi điện thoại trên thiết bị này',
                        );
                      }
                    }
                  },
                ),
                SizedBox(height: 8.h),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    Color tagColor = AppColors.primary;

    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
      padding: EdgeInsets.all(12.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: AppColors.grayLight.withValues(alpha: 0.3)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(8.w),
                decoration: BoxDecoration(
                  color: tagColor.withValues(alpha: 0.9),
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Transform.scale(
                  scale: 0.8,
                  child: Image.asset(
                    'assets/icons/user.png',
                    width: 20.w,
                    height: 20.w,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(width: 12.w),
              Expanded(
                child: AppText.t1(
                  contact.name,
                  color: AppColors.grayDark,
                  fontWeight: FontWeight.bold,
                  fontSize: 14.sp,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
                decoration: BoxDecoration(
                  color: tagColor.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: AppText.b2(
                  contact.relationship.isNotEmpty ? contact.relationship : 'Phụ huynh',
                  color: tagColor,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          SizedBox(height: 16.h),
          if (contact.phone.isNotEmpty)
            AppInfoRow(
              icon: Icons.phone_outlined,
              label: 'Số điện thoại',
              value: contact.phone,
              trailing: Icon(
                Icons.touch_app_rounded,
                size: 14.w,
                color: AppColors.grayMedium,
              ),
              onTap: () => _showPhoneActionSheet(context),
            )
          else
            AppInfoRow(
              icon: Icons.phone_outlined,
              label: 'Số điện thoại',
              value: 'Chưa có dữ liệu',
            ),
        ],
      ),
    );
  }
}
