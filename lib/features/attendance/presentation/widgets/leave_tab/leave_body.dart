import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/features/attendance/domain/entity/attendance.dart';
import 'package:tanlu_management/features/attendance/domain/entity/leave_request.dart';
import 'package:tanlu_management/features/attendance/presentation/bloc/attendance_bloc.dart';
import 'package:tanlu_management/features/attendance/presentation/enums/leave_status.dart';
import 'package:tanlu_management/features/attendance/presentation/widgets/leave_tab/leave_request_item.dart';
import 'package:tanlu_management/features/attendance/presentation/widgets/leave_tab/leave_sub_tab_bar.dart';
import 'package:tanlu_management/features/student/domain/entity/student.dart';

class LeaveBody extends StatefulWidget {
  const LeaveBody({super.key});

  @override
  State<LeaveBody> createState() => _LeaveBodyState();
}

class _LeaveBodyState extends State<LeaveBody>
    with SingleTickerProviderStateMixin {
  late final TabController _subTabController = TabController(
    length: LeaveStatus.values.length,
    vsync: this,
  );

  @override
  void dispose() {
    _subTabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AttendanceBloc, AttendanceState>(
      builder: (context, state) {
        final studentMap = {for (final s in state.students) s.id: s};
        final attendanceMap = {
          for (final a in state.attendances) a.studentId: a,
        };
        final counts = {
          for (final status in LeaveStatus.values)
            status: state.leaveRequests
                .where((r) => r.leaveStatus == status)
                .length,
        };

        if (state.leaveRequests.isEmpty) {
          return Column(
            children: [
              LeaveSubTabBar(controller: _subTabController, counts: counts),
              Expanded(
                child: Center(
                  child: AppText.b2(
                    'Chưa có đơn xin nghỉ phép',
                    color: AppColors.grayMedium,
                    fontSize: 14.sp,
                  ),
                ),
              ),
            ],
          );
        }

        return Column(
          children: [
            LeaveSubTabBar(controller: _subTabController, counts: counts),
            Expanded(
              child: TabBarView(
                controller: _subTabController,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  for (final status in LeaveStatus.values)
                    _LeaveList(
                      requests: state.leaveRequests
                          .where((r) => r.leaveStatus == status)
                          .toList(),
                      status: status,
                      studentMap: studentMap,
                      attendanceMap: attendanceMap,
                    ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}

class _LeaveList extends StatelessWidget {
  const _LeaveList({
    required this.requests,
    required this.status,
    required this.studentMap,
    required this.attendanceMap,
  });

  final List<LeaveRequest> requests;
  final LeaveStatus status;
  final Map<String, Student> studentMap;
  final Map<String, Attendance> attendanceMap;

  @override
  Widget build(BuildContext context) {
    if (requests.isEmpty) {
      return Center(
        child: AppText.b2(
          'Không có đơn ${status.label.toLowerCase()}',
          color: AppColors.grayMedium,
          fontSize: 14.sp,
        ),
      );
    }

    return ListView.builder(
      padding: EdgeInsets.fromLTRB(16.w, 12.h, 16.w, 88.h),
      itemCount: requests.length,
      itemBuilder: (_, i) {
        final request = requests[i];
        return LeaveRequestItem.fromRequest(
          context: context,
          request: request,
          student: studentMap[request.studentId],
          attendance: attendanceMap[request.studentId],
          readOnly: status != LeaveStatus.pending,
        );
      },
    );
  }
}
