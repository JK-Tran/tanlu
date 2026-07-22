import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:tanlu_management/core/router/app_router.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/features/notification/presentation/bloc/notification_bloc.dart';

class NotificationBellWidget extends StatelessWidget {
  const NotificationBellWidget({
    super.key,
    this.size = 40,
    this.iconSize = 24,
    this.backgroundColor = Colors.white,
    this.iconColor = AppColors.grayDark,
    this.hasShadow = true,
  });

  final double size;
  final double iconSize;
  final Color backgroundColor;
  final Color iconColor;
  final bool hasShadow;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotificationBloc, NotificationState>(
      builder: (context, state) {
        final unreadCount = state.unreadCount;
        return Container(
          width: size.w,
          height: size.w,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: hasShadow
                ? [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.05),
                      blurRadius: 8,
                      offset: const Offset(0, 2),
                    ),
                  ]
                : null,
          ),
          child: Material(
            color: backgroundColor,
            shape: const CircleBorder(),
            clipBehavior: Clip.antiAlias,
            child: InkWell(
              onTap: () {
                context.push(AppRouter.notification);
              },
              child: Stack(
                alignment: Alignment.center,
                clipBehavior: Clip.none,
                children: [
                  Icon(
                    Icons.notifications_outlined,
                    color: iconColor,
                    size: iconSize.sp,
                  ),
                  if (unreadCount > 0)
                    Positioned(
                      right: size * 0.1,
                      top: size * 0.1,
                      child: Container(
                        padding: EdgeInsets.all(3.w),
                        decoration: const BoxDecoration(
                          color: AppColors.error,
                          shape: BoxShape.circle,
                        ),
                        child: Text(
                          unreadCount > 99 ? '99+' : unreadCount.toString(),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 9.sp,
                            fontWeight: FontWeight.bold,
                            height: 1,
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
