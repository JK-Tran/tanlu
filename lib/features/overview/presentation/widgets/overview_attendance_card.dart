import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tanlu_management/core/router/app_router.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/features/overview/presentation/widgets/overview_progress_card.dart';

class OverviewAttendanceCard extends StatelessWidget {
  const OverviewAttendanceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return OverviewProgressCard(
      title: 'Điểm danh hôm nay',
      iconPath: 'assets/images/overview/img-attendance.png',
      primaryColor: AppColors.successDark,
      iconBgColor: AppColors.successLight,
      avatars: const [],
      currentValue: 12,
      totalValue: 14,
      badgeCount: 12,
      statusText: 'đã điểm danh sáng',
      remainingText: 'Có mặt 12 · Nghỉ phép 1 · Vắng 1',
      imageScale: 1.2,
      onTap: () => context.push(AppRouter.attendance),
    );
  }
}
