import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tanlu_management/core/router/app_router.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/features/overview/presentation/widgets/overview_progress_card.dart';
import 'package:tanlu_management/features/attendance/domain/entity/daily_attendance_result.dart';
import 'package:tanlu_management/features/attendance/domain/entity/enums/attendance_status.dart';
import 'package:tanlu_management/l10n/l10n.dart';

class OverviewAttendanceCard extends StatelessWidget {
  const OverviewAttendanceCard({super.key, required this.dailyAttendance});

  final DailyAttendanceResult? dailyAttendance;

  @override
  Widget build(BuildContext context) {
    if (dailyAttendance == null) {
      return const SizedBox.shrink(); // or handle empty state gracefully
    }

    final daily = dailyAttendance!;
    final summary = daily.summary;
    final session = daily.session;

    final isCheckInDone = session.isCheckInCompleted;
    final isCheckOutDone = session.isCheckOutCompleted;

    // Count how many students have been marked with a status other than 'notMarked'
    final markedCount = daily.roster
        .where((s) => s.status != AttendanceStatus.notMarked.apiValue)
        .length;

    String statusText = context.l10n.attendanceStatusNotYet;
    Color primaryColor = AppColors.grayMedium;
    Color iconBgColor = AppColors.grayVeryLight;

    if (isCheckOutDone) {
      statusText = context.l10n.attendanceStatusFinalized;
      primaryColor = AppColors.successDark;
      iconBgColor = AppColors.successLight;
    } else if (isCheckInDone) {
      statusText = context.l10n.attendanceStatusMorning;
      primaryColor = AppColors.successDark;
      iconBgColor = AppColors.successLight;
    } else if (markedCount > 0) {
      statusText = context.l10n.attendanceStatusInProgress;
      primaryColor = AppColors.primary;
      iconBgColor = AppColors.primaryLight;
    }

    // Get up to 3 avatars from present students
    final avatars = daily.roster
        .where(
          (s) =>
              s.status == AttendanceStatus.present.apiValue ||
              s.status == AttendanceStatus.late.apiValue,
        )
        .take(3)
        .map(
          (s) => OverviewAvatarPreview(
            nickname: (s.nickName.isNotEmpty) ? s.nickName : s.fullName,
            avatarUrl: s.avatarUrl,
          ),
        )
        .toList();

    return OverviewProgressCard(
      title: context.l10n.attendanceToday,
      iconPath: 'assets/images/overview/img-attendance.png',
      primaryColor: primaryColor,
      iconBgColor: iconBgColor,
      avatars: avatars,
      currentValue: markedCount,
      totalValue: summary.total > 0 ? summary.total : 1,
      badgeCount: markedCount > 0 ? markedCount : null,
      statusText: statusText,
      remainingText:
          context.l10n.attendanceSummary(summary.present, summary.absentExcused, summary.absentUnexcused),
      imageScale: 1.2,
      onTap: () => context.push(AppRouter.attendance),
    );
  }
}
