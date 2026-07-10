import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_date_scroll_picker.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/features/attendance/domain/entity/attendance_student.dart';
import 'package:tanlu_management/features/attendance/presentation/bloc/attendance_bloc.dart';
import 'package:tanlu_management/features/attendance/domain/entity/enums/attendance_status.dart';
import 'package:tanlu_management/features/attendance/presentation/widgets/attendance_date_strip.dart';
import 'package:tanlu_management/features/attendance/presentation/widgets/stats_tab/stats_history_shimmer.dart';
import 'package:tanlu_management/features/attendance/presentation/widgets/stats_tab/stats_student_item.dart';
import 'package:tanlu_management/features/attendance/presentation/widgets/stats_tab/stats_summary_item.dart';
import 'package:tanlu_management/shared/utils/date_time_utils.dart';

class StatsBody extends StatelessWidget {
  const StatsBody({super.key});

  Future<void> _pickDate(BuildContext context, DateTime current) async {
    final picked = await AppDateScrollPicker.show(
      context,
      initialDate: current,
      maxDate: DateTime.now(),
    );
    if (picked == null || !context.mounted) return;
    context.read<AttendanceBloc>().add(FetchHistoryAttendance(date: picked));
  }

  Future<void> _onRefresh(BuildContext context, DateTime historyDate) async {
    final completer = Completer<void>();
    context.read<AttendanceBloc>().add(
      RefreshHistoryAttendance(completer: completer, date: historyDate),
    );
    await completer.future;
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AttendanceBloc, AttendanceState>(
      builder: (context, state) {
        final historyDate = state.historyDate ?? DateTime.now();
        final isLoading = state.isLoading;

        final attendances = state.historyAttendance?.roster ?? [];
        final roster = state.historyAttendance?.roster ?? [];
        final summary = state.historyAttendance?.summary;

        final presentCount = summary?.present ?? 0;
        final absentCount = summary?.absentUnexcused ?? 0;
        final excusedCount = summary?.absentExcused ?? 0;

        final unmarked = roster
            .where((a) => a.status == AttendanceStatus.notMarked.apiValue)
            .toList();
        final excused = roster
            .where((a) => a.status == AttendanceStatus.absentExcused.apiValue)
            .toList();
        final absent = roster
            .where((a) => a.status == AttendanceStatus.absentUnexcused.apiValue)
            .toList();
        final marked = roster.where((a) {
          return a.status == AttendanceStatus.present.apiValue ||
                 a.status == AttendanceStatus.late.apiValue;
        }).toList();

        return RefreshIndicator(
          onRefresh: () => _onRefresh(context, historyDate),
          child: CustomScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            slivers: [
              AttendanceDateStripSliver(
                date: historyDate,
                onTap: () => _pickDate(context, historyDate),
              ),
              if (isLoading)
                const SliverToBoxAdapter(child: StatsHistoryShimmer())
              else ...[
                SliverToBoxAdapter(
                  child: StatsSummaryCard(
                    presentCount: presentCount,
                    absentCount: absentCount,
                    excusedCount: excusedCount,
                  ),
                ),
                if (attendances.isEmpty)
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: EdgeInsets.all(32.w),
                      child: Center(
                        child: AppText.b2(
                          'Chưa có dữ liệu điểm danh ngày này',
                          color: AppColors.grayMedium,
                          fontSize: 14.sp,
                        ),
                      ),
                    ),
                  ),
                if (unmarked.isNotEmpty)
                  _StatsSection(
                    title: 'Chưa điểm danh',
                    attendances: unmarked,
                    initiallyExpanded: false,
                  ),
                if (excused.isNotEmpty)
                  _StatsSection(
                    title: 'Đã xin phép',
                    attendances: excused,
                  ),
                if (marked.isNotEmpty)
                  _StatsSection(
                    title: 'Đã điểm danh',
                    attendances: marked,
                    showTime: true,
                  ),
                if (absent.isNotEmpty)
                  _StatsSection(
                    title: 'Vắng mặt',
                    attendances: absent,
                  ),
              ],
              SliverToBoxAdapter(child: SizedBox(height: 40.h)),
            ],
          ),
        );
      },
    );
  }
}

class _StatsSection extends StatefulWidget {
  const _StatsSection({
    required this.title,
    required this.attendances,
    this.initiallyExpanded = true,
    this.showTime = false,
  });

  final String title;
  final List<AttendanceStudent> attendances;
  final bool initiallyExpanded;
  final bool showTime;

  @override
  State<_StatsSection> createState() => _StatsSectionState();
}

class _StatsSectionState extends State<_StatsSection> {
  late bool _expanded;

  @override
  void initState() {
    super.initState();
    _expanded = widget.initiallyExpanded;
  }

  @override
  Widget build(BuildContext context) {
    if (widget.attendances.isEmpty) {
      return const SliverToBoxAdapter(child: SizedBox.shrink());
    }

    return SliverMainAxisGroup(
      slivers: [
        SliverToBoxAdapter(
          child: InkWell(
            onTap: () => setState(() => _expanded = !_expanded),
            child: Container(
              color: AppColors.grayVeryLight,
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
              child: Row(
                children: [
                  Expanded(
                    child: AppText.b2(
                      '${widget.title} (${widget.attendances.length})',
                      color: AppColors.grayMedium,
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Icon(
                    _expanded
                        ? Icons.keyboard_arrow_up
                        : Icons.keyboard_arrow_down,
                    color: AppColors.grayMedium,
                    size: 20.w,
                  ),
                ],
              ),
            ),
          ),
        ),
        if (_expanded)
          SliverList(
            delegate: SliverChildBuilderDelegate((_, i) {
              final att = widget.attendances[i];
              final name = att.fullName;

              // Parse status enum
              final statusEnum = AttendanceStatusMapper.fromApi(att.status);

              return StatsStudentItem(
                name: name,
                fullName: att.fullName,
                status: statusEnum,
                checkInTime: DateTimeUtils.formatHourMinute(att.checkInTime),
                checkOutTime: DateTimeUtils.formatHourMinute(att.checkOutTime),
                showTime: widget.showTime,
              );
            }, childCount: widget.attendances.length),
          ),
      ],
    );
  }
}
