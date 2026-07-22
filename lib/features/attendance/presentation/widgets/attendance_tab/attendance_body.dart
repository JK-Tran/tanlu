import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/core/widgets/shimmer_list.dart';
import 'package:tanlu_management/features/attendance/domain/entity/attendance_student.dart';
import 'package:tanlu_management/features/attendance/presentation/bloc/attendance_bloc.dart';
import 'package:tanlu_management/features/attendance/domain/entity/enums/attendance_status.dart';

import 'package:tanlu_management/features/attendance/presentation/widgets/attendance_date_strip.dart';
import 'package:tanlu_management/features/attendance/presentation/widgets/attendance_status_sheet.dart';
import 'package:tanlu_management/features/attendance/presentation/widgets/attendance_tab/attendance_student_item.dart';
import 'package:tanlu_management/l10n/l10n.dart';

class AttendanceBody extends StatefulWidget {
  const AttendanceBody({super.key});

  @override
  State<AttendanceBody> createState() => _AttendanceBodyState();
}

class _AttendanceBodyState extends State<AttendanceBody>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  /// Draft mode (sáng chưa chốt): đổi trạng thái local → bulk submit khi bấm Lưu
  Future<void> _pickStatusDraft(
    BuildContext context,
    AttendanceStudent student,
  ) async {
    final result = await showModalBottomSheet<AttendanceStatus>(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (_) => AttendanceStatusSheet(student: student),
    );

    if (result != null && context.mounted) {
      context.read<AttendanceBloc>().add(
        ChangeStudentAttendanceStatusEvent(
          studentId: student.studentId,
          status: result,
        ),
      );
    }
  }

  /// Post-checkIn mode (đã chốt sáng): tap → chọn → gọi API ngay cho bé đó
  Future<void> _pickStatusAndUpdate(
    BuildContext context,
    AttendanceStudent student,
  ) async {
    final result = await showModalBottomSheet<AttendanceStatus>(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (_) => AttendanceStatusSheet(student: student),
    );

    if (result != null && context.mounted) {
      context.read<AttendanceBloc>().add(
        UpdateStudentAttendanceEvent(
          studentId: student.studentId,
          status: result,
        ),
      );
    }
  }

  void _togglePresent(BuildContext context, AttendanceStudent student) {
    context.read<AttendanceBloc>().add(
      ToggleStudentAttendanceEvent(studentId: student.studentId),
    );
  }

  void _checkOut(BuildContext context, AttendanceStudent student) {
    final now = DateTime.now().toUtc().toIso8601String();
    context.read<AttendanceBloc>().add(
      SubmitCheckOutEvent(
        studentId: student.studentId.toString(),
        checkOutTime: now,
      ),
    );
  }

  Future<void> _onRefresh(BuildContext context) async {
    final completer = Completer<void>();
    context.read<AttendanceBloc>().add(
      RefreshDailyAttendance(completer: completer),
    );
    await completer.future;
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return BlocBuilder<AttendanceBloc, AttendanceState>(
      builder: (context, state) {
        final roster = state.dailyAttendance?.roster ?? [];
        final isMorning =
            state.dailyAttendance?.session.isCheckInCompleted != true;
        final canCheckOut =
            state.dailyAttendance?.session.isCheckOutCompleted != true;
        final dateStrip = AttendanceDateStripSliver(
          date: DateTime.now(), // Fallback to current date
        );

        if (state.isLoading && roster.isEmpty) {
          return CustomScrollView(
            slivers: [
              dateStrip,
              const SliverToBoxAdapter(child: ShimmerList()),
            ],
          );
        }

        if (isMorning) {
          return RefreshIndicator(
            onRefresh: () => _onRefresh(context),
            child: CustomScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              slivers: [
                dateStrip,
                _Section(
                  label: context.l10n.classList,
                  students: roster,
                  draftMode: true,
                  onTogglePresent: (s) => _togglePresent(context, s),
                  onOpenSheet: (s) => _pickStatusDraft(context, s),
                ),
              ],
            ),
          );
        }

        final unmarked = roster
            .where((s) => s.status == AttendanceStatus.notMarked.apiValue)
            .toList();
        final excused = roster
            .where((s) => s.status == AttendanceStatus.absentExcused.apiValue)
            .toList();
        final absent = roster
            .where((s) => s.status == AttendanceStatus.absentUnexcused.apiValue)
            .toList();
        final marked = roster.where((s) {
          return s.status == AttendanceStatus.present.apiValue ||
              s.status == AttendanceStatus.late.apiValue;
        }).toList();

        return RefreshIndicator(
          onRefresh: () => _onRefresh(context),
          child: CustomScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            slivers: [
              dateStrip,
              if (unmarked.isNotEmpty)
                _Section(
                  label: context.l10n.statusNotMarked,
                  students: unmarked,
                  onOpenSheet: (s) => _pickStatusAndUpdate(context, s),
                ),
              if (excused.isNotEmpty)
                _Section(
                  label: context.l10n.statusExcused,
                  students: excused,
                  onOpenSheet: (s) => _pickStatusAndUpdate(context, s),
                ),
              if (marked.isNotEmpty)
                _Section(
                  label: context.l10n.statusPresent,
                  students: marked,
                  onOpenSheet: (s) => _pickStatusAndUpdate(context, s),
                  onCheckOut: canCheckOut ? (s) => _checkOut(context, s) : null,
                ),
              if (absent.isNotEmpty)
                _Section(
                  label: context.l10n.statusAbsent,
                  students: absent,
                  onOpenSheet: (s) => _pickStatusAndUpdate(context, s),
                ),
            ],
          ),
        );
      },
    );
  }
}

class _Section extends StatelessWidget {
  const _Section({
    required this.label,
    required this.students,
    required this.onOpenSheet,
    this.onCheckOut,
    this.draftMode = false,
    this.onTogglePresent,
  });

  final String label;
  final List<AttendanceStudent> students;
  final void Function(AttendanceStudent) onOpenSheet;
  final void Function(AttendanceStudent)? onTogglePresent;
  final void Function(AttendanceStudent)? onCheckOut;
  final bool draftMode;

  @override
  Widget build(BuildContext context) {
    return SliverMainAxisGroup(
      slivers: [
        SliverToBoxAdapter(
          child: Container(
            color: AppColors.grayVeryLight,
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 8.h),
            child: AppText.b2(
              context.l10n.attendanceListTitle(label, students.length),
              color: AppColors.grayMedium,
              fontSize: 13.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate((_, i) {
            final student = students[i];
            return AttendanceStudentItem(
              student: student,
              draftMode: draftMode,
              onTogglePresent: onTogglePresent == null
                  ? null
                  : () => onTogglePresent!(student),
              onOpenSheet: () => onOpenSheet(student),
              onCheckOut: onCheckOut == null
                  ? null
                  : () => onCheckOut!(student),
            );
          }, childCount: students.length),
        ),
      ],
    );
  }
}
