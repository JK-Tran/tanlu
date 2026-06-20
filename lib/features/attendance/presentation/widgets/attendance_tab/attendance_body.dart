import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/features/attendance/domain/entity/attendance.dart';
import 'package:tanlu_management/features/attendance/presentation/bloc/attendance_bloc.dart';
import 'package:tanlu_management/features/attendance/presentation/enums/attendance_status.dart';
import 'package:tanlu_management/features/attendance/presentation/enums/leave_status.dart';
import 'package:tanlu_management/features/attendance/presentation/widgets/attendance_date_strip.dart';
import 'package:tanlu_management/features/attendance/presentation/widgets/attendance_status_sheet.dart';
import 'package:tanlu_management/features/attendance/presentation/widgets/attendance_tab/attendance_student_item.dart';
import 'package:tanlu_management/features/student/domain/entity/student.dart';

class AttendanceBody extends StatelessWidget {
  const AttendanceBody({super.key});

  Future<void> _pickStatus(
    BuildContext context,
    Student student,
    Attendance attendance,
  ) async {
    final result = await showModalBottomSheet<AttendanceStatus>(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (_) =>
          AttendanceStatusSheet(student: student, attendance: attendance),
    );

    if (result != null && context.mounted) {
      _applyStatus(context, attendance, result);
    }
  }

  void _applyStatus(
    BuildContext context,
    Attendance attendance,
    AttendanceStatus status,
  ) {
    final isPresentOrLate =
        status == AttendanceStatus.present || status == AttendanceStatus.late;
    final wasInClass =
        attendance.status == 'present' || attendance.status == 'late';

    final checkInTime = isPresentOrLate
        ? (wasInClass && attendance.checkInTime != null
              ? attendance.checkInTime
              : DateTime.now())
        : null;

    context.read<AttendanceBloc>().add(
      MarkStudentAttendanceEvent(
        attendance: attendance.copyWith(
          status: status.toStatusString,
          checkInTime: checkInTime,
          checkOutTime: isPresentOrLate ? attendance.checkOutTime : null,
        ),
      ),
    );
  }

  void _togglePresent(BuildContext context, Attendance attendance) {
    if (attendance.status == 'present') {
      _applyStatus(context, attendance, AttendanceStatus.notMarked);
    } else {
      _applyStatus(context, attendance, AttendanceStatus.present);
    }
  }

  void _checkOut(BuildContext context, String studentId) {
    context.read<AttendanceBloc>().add(
      MarkStudentCheckOutEvent(studentId: studentId),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AttendanceBloc, AttendanceState>(
      builder: (context, state) {
        final attMap = {for (final a in state.attendances) a.studentId: a};
        final leaveReasons = <String, String>{};
        for (final lr in state.leaveRequests) {
          if (lr.leaveStatus == LeaveStatus.approved) {
            leaveReasons.putIfAbsent(lr.studentId, () => lr.reason);
          }
        }

        Attendance attendanceOf(Student s) =>
            attMap[s.id] ?? Attendance(studentId: s.id, classId: s.classId);

        String displayName(Student s) =>
            s.nickname.isNotEmpty ? s.nickname : s.fullName;

        final isMorningMode = state.session?.isCheckInCompleted != true;
        final canCheckOut = state.session?.isCheckOutCompleted != true;

        final todayStrip = AttendanceDateStripSliver(
          date: state.selectedDate ?? DateTime.now(),
        );

        if (isMorningMode) {
          return CustomScrollView(
            slivers: [
              todayStrip,
              _Section(
                label: 'Danh sách lớp',
                students: state.students,
                attMap: attMap,
                leaveReasons: leaveReasons,
                displayName: displayName,
                draftMode: true,
                onTogglePresent: (s) =>
                    _togglePresent(context, attendanceOf(s)),
                onOpenSheet: (s) => _pickStatus(context, s, attendanceOf(s)),
              ),
              SliverToBoxAdapter(child: SizedBox(height: 100.h)),
            ],
          );
        }

        final unmarked = state.students
            .where(
              (s) => attendanceOf(s).uiStatus == AttendanceStatus.notMarked,
            )
            .toList();
        final excused = state.students
            .where((s) => attendanceOf(s).uiStatus == AttendanceStatus.excused)
            .toList();
        final marked = state.students.where((s) {
          final st = attendanceOf(s).uiStatus;
          return st != AttendanceStatus.notMarked &&
              st != AttendanceStatus.excused;
        }).toList();

        return CustomScrollView(
          slivers: [
            todayStrip,
            if (unmarked.isNotEmpty)
              _Section(
                label: 'Chưa điểm danh',
                students: unmarked,
                attMap: attMap,
                leaveReasons: leaveReasons,
                displayName: displayName,
                onOpenSheet: (s) => _pickStatus(context, s, attendanceOf(s)),
              ),
            if (excused.isNotEmpty)
              _Section(
                label: 'Đã xin phép',
                students: excused,
                attMap: attMap,
                leaveReasons: leaveReasons,
                displayName: displayName,
                onOpenSheet: (s) => _pickStatus(context, s, attendanceOf(s)),
              ),
            if (marked.isNotEmpty)
              _Section(
                label: 'Đã điểm danh',
                students: marked,
                attMap: attMap,
                displayName: displayName,
                onOpenSheet: (s) => _pickStatus(context, s, attendanceOf(s)),
                onCheckOut: canCheckOut ? (id) => _checkOut(context, id) : null,
              ),
            SliverToBoxAdapter(child: SizedBox(height: 100.h)),
          ],
        );
      },
    );
  }
}

class _Section extends StatelessWidget {
  const _Section({
    required this.label,
    required this.students,
    required this.attMap,
    required this.displayName,
    required this.onOpenSheet,
    this.leaveReasons = const {},
    this.onCheckOut,
    this.draftMode = false,
    this.onTogglePresent,
  });

  final String label;
  final List<Student> students;
  final Map<String, Attendance> attMap;
  final Map<String, String> leaveReasons;
  final String Function(Student) displayName;
  final void Function(Student) onOpenSheet;
  final void Function(Student)? onTogglePresent;
  final void Function(String studentId)? onCheckOut;
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
              '$label (${students.length})',
              color: AppColors.grayMedium,
              fontSize: 13.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate((_, i) {
            final student = students[i];
            final attendance =
                attMap[student.id] ??
                Attendance(studentId: student.id, classId: student.classId);
            return AttendanceStudentItem(
              student: student,
              attendance: attendance,
              displayName: displayName(student),
              leaveReason: leaveReasons[student.id],
              draftMode: draftMode,
              onTogglePresent: onTogglePresent == null
                  ? null
                  : () => onTogglePresent!(student),
              onOpenSheet: () => onOpenSheet(student),
              onCheckOut: onCheckOut == null
                  ? null
                  : () => onCheckOut!(student.id),
            );
          }, childCount: students.length),
        ),
      ],
    );
  }
}
