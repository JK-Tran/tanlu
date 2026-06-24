import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:tanlu_management/core/router/app_router.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/features/overview/presentation/bloc/overview_bloc.dart';
import 'package:tanlu_management/features/overview/presentation/widgets/overview_progress_card.dart';

/// Thẻ tổng quan điểm danh buổi sáng.
///
/// Logic:
/// - Chưa "Lưu điểm danh sáng" → chưa hiện số liệu, gợi ý vào màn điểm danh.
/// - Đã lưu buổi sáng → hiện **total/total** (đã điểm danh đủ), chi tiết ở footer.
/// - Không tính chốt cuối ngày hay giờ về.
class OverviewAttendanceCard extends StatelessWidget {
  const OverviewAttendanceCard({super.key});

  Future<void> _openAttendance(BuildContext context) async {
    await context.push(AppRouter.attendance);
    if (context.mounted) {
      context.read<OverviewBloc>().add(const RefreshOverviewAttendanceEvent());
    }
  }

  String _remainingText(OverviewState state) {
    if (state.isLoadingAttendance) return 'Đang tải...';
    if (state.attendanceTotal == 0) return 'Chưa có học sinh trong lớp';

    if (!state.isMorningCheckInCompleted) {
      return 'Bấm để điểm danh buổi sáng';
    }

    final parts = <String>[];
    if (state.attendancePresentCount > 0) {
      parts.add('Có mặt ${state.attendancePresentCount}');
    }
    if (state.attendanceExcusedCount > 0) {
      parts.add('Nghỉ phép ${state.attendanceExcusedCount}');
    }
    if (state.attendanceAbsentCount > 0) {
      parts.add('Vắng ${state.attendanceAbsentCount}');
    }
    if (parts.isEmpty) {
      return 'Đã điểm danh sáng xong';
    }
    return parts.join(' · ');
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OverviewBloc, OverviewState>(
      buildWhen: (previous, current) =>
          previous.isLoadingAttendance != current.isLoadingAttendance ||
          previous.isMorningCheckInCompleted !=
              current.isMorningCheckInCompleted ||
          previous.attendanceTotal != current.attendanceTotal ||
          previous.attendancePresentCount != current.attendancePresentCount ||
          previous.attendanceAbsentCount != current.attendanceAbsentCount ||
          previous.attendanceExcusedCount != current.attendanceExcusedCount ||
          previous.markedAttendanceStudents != current.markedAttendanceStudents,
      builder: (context, state) {
        final total = state.attendanceTotal;
        final isCompleted = state.isMorningCheckInCompleted;

        return OverviewProgressCard(
          title: 'Điểm danh hôm nay',
          iconPath: 'assets/images/overview/img-attendance.png',
          primaryColor: AppColors.successDark,
          iconBgColor: AppColors.successLight,
          avatars: isCompleted ? state.markedAttendanceStudents : const [],
          currentValue: isCompleted ? total : 0,
          totalValue: total,
          badgeCount: isCompleted ? state.attendancePresentCount : null,
          statusText: isCompleted ? 'đã điểm danh sáng' : 'chưa điểm danh sáng',
          remainingText: _remainingText(state),
          isLoading: state.isLoadingAttendance,
          imageScale: 1.2,
          onTap: () => _openAttendance(context),
        );
      },
    );
  }
}
