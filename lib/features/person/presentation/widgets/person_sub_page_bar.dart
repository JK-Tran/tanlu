import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';

class PersonSubPageBar extends StatelessWidget implements PreferredSizeWidget {
  const PersonSubPageBar({super.key, required this.title});

  final String title;

  @override
  Size get preferredSize => Size.fromHeight(56.h);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      leading: IconButton(
        icon: Icon(Icons.arrow_back_ios_new_rounded,
            size: 20.w, color: AppColors.grayDark),
        onPressed: () => Navigator.of(context).pop(),
      ),
      title: AppText.h2(
        title,
        fontWeight: FontWeight.w700,
        fontSize: 17.sp,
        color: AppColors.grayDark,
      ),
    );
  }
}
