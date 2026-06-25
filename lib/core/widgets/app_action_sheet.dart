import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';

class AppActionSheetItem {
  const AppActionSheetItem({
    required this.label,
    required this.icon,
    this.onTap,
    this.destructive = false,
  });

  final String label;
  final IconData icon;
  final VoidCallback? onTap;
  final bool destructive;
}

class AppActionSheet extends StatelessWidget {
  const AppActionSheet({super.key, this.title, required this.actions});

  final String? title;
  final List<AppActionSheetItem> actions;

  static Future<void> show(
    BuildContext context, {
    String? title,
    required List<AppActionSheetItem> actions,
  }) {
    if (actions.isEmpty) return Future.value();

    return showModalBottomSheet<void>(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (_) => AppActionSheet(title: title, actions: actions),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(12.w, 0, 12.w, 12.h),
      child: SafeArea(
        top: false,
        child: Material(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(16.r),
          clipBehavior: Clip.antiAlias,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 10.h),
              Container(
                width: 36.w,
                height: 4.h,
                decoration: BoxDecoration(
                  color: AppColors.grayLight,
                  borderRadius: BorderRadius.circular(2.r),
                ),
              ),
              if (title != null && title!.isNotEmpty) ...[
                SizedBox(height: 12.h),
                AppText.b1(
                  title!,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w700,
                  color: AppColors.grayDark,
                  textAlign: TextAlign.center,
                ),
              ],
              SizedBox(height: 8.h),
              for (var i = 0; i < actions.length; i++) ...[
                if (i > 0)
                  Divider(
                    height: 1,
                    color: AppColors.grayVeryLight,
                    indent: 16.w,
                    endIndent: 16.w,
                  ),
                _ActionTile(
                  item: actions[i],
                  onTap: () {
                    HapticFeedback.selectionClick();
                    Navigator.pop(context);
                    actions[i].onTap?.call();
                  },
                ),
              ],
              SizedBox(height: 8.h),
            ],
          ),
        ),
      ),
    );
  }
}

class _ActionTile extends StatelessWidget {
  const _ActionTile({required this.item, required this.onTap});

  final AppActionSheetItem item;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final color = item.destructive ? AppColors.error : AppColors.grayDark;

    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 14.h),
        child: Row(
          children: [
            Icon(item.icon, size: 22.w, color: color),
            SizedBox(width: 14.w),
            Expanded(
              child: AppText.b1(
                item.label,
                fontSize: 15.sp,
                fontWeight: FontWeight.w500,
                color: color,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
