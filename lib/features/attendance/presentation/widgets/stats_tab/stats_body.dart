import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_date_scroll_picker.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/features/app/presentation/bloc/app_bloc.dart';
import 'package:tanlu_management/features/attendance/domain/entity/attendance.dart';
import 'package:tanlu_management/features/attendance/presentation/bloc/attendance_bloc.dart';
import 'package:tanlu_management/features/attendance/presentation/enums/attendance_status.dart';
import 'package:tanlu_management/features/attendance/presentation/widgets/attendance_date_strip.dart';
import 'package:tanlu_management/features/attendance/presentation/widgets/stats_tab/stats_history_shimmer.dart';
import 'package:tanlu_management/features/attendance/presentation/widgets/stats_tab/stats_student_item.dart';
import 'package:tanlu_management/features/attendance/presentation/widgets/stats_tab/stats_summary_item.dart';
import 'package:tanlu_management/features/student/domain/entity/student.dart';
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

    final classId = context.read<AppBloc>().currentUser?.classId ?? '';
    context.read<AttendanceBloc>().add(
      FetchAttendanceHistoryEvent(classId: classId, date: picked),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AttendanceBloc, AttendanceState>(
      builder: (context, state) {
        if (state.historyError.isNotEmpty &&
            state.historyAttendances.isEmpty &&
            !state.isHistoryLoading) {
          return Center(
            child: Padding(
              padding: EdgeInsets.all(24.w),
              child: AppText.b2(
                state.historyError,
                color: AppColors.warning,
                fontSize: 14.sp,
                textAlign: TextAlign.center,
              ),
            ),
          );
        }

        final historyDate =
            state.historyDate ?? state.selectedDate ?? DateTime.now();
        final isLoading = state.isHistoryLoading;
        final studentMap = {for (final s in state.historyStudents) s.id: s};
        final attendances = state.historyAttendances;

        final presentCount = attendances
            .where((a) => a.uiStatus == AttendanceStatus.present)
            .length;
        final lateCount = attendances
            .where((a) => a.uiStatus == AttendanceStatus.late)
            .length;
        final absentCount = attendances
            .where((a) => a.uiStatus == AttendanceStatus.absent)
            .length;
        final excusedCount = attendances
            .where((a) => a.uiStatus == AttendanceStatus.excused)
            .length;
        final unmarked = attendances
            .where((a) => a.uiStatus == AttendanceStatus.notMarked)
            .toList();
        final marked = attendances
            .where((a) => a.uiStatus != AttendanceStatus.notMarked)
            .toList();

        return CustomScrollView(
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
                  presentCount: presentCount + lateCount,
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
              _StatsSection(
                title: 'Chưa điểm danh',
                attendances: unmarked,
                studentMap: studentMap,
                initiallyExpanded: false,
              ),
              _StatsSection(
                title: 'Đã điểm danh',
                attendances: marked,
                studentMap: studentMap,
                showTime: true,
              ),
            ],
            SliverToBoxAdapter(child: SizedBox(height: 40.h)),
          ],
        );
      },
    );
  }
}

class _StatsSection extends StatefulWidget {
  const _StatsSection({
    required this.title,
    required this.attendances,
    required this.studentMap,
    this.initiallyExpanded = true,
    this.showTime = false,
  });

  final String title;
  final List<Attendance> attendances;
  final Map<String, Student> studentMap;
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
              final stu = widget.studentMap[att.studentId];
              final name = stu != null && stu.nickname.isNotEmpty
                  ? stu.nickname
                  : (stu?.fullName ?? att.studentId);

              return StatsStudentItem(
                name: name,
                fullName: stu?.fullName,
                status: att.uiStatus,
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
