import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/core/widgets/shimmer_list.dart';
import 'package:tanlu_management/features/attendance/domain/entity/leave_request.dart';
import 'package:tanlu_management/features/attendance/presentation/bloc/attendance_bloc.dart';
import 'package:tanlu_management/features/attendance/domain/entity/enums/leave_status.dart';
import 'package:tanlu_management/features/attendance/presentation/enums/leave_status_ext.dart';
import 'package:tanlu_management/features/attendance/presentation/widgets/leave_tab/leave_request_item.dart';
import 'package:tanlu_management/features/attendance/presentation/widgets/leave_tab/leave_sub_tab_bar.dart';
import 'package:tanlu_management/l10n/l10n.dart';

class LeaveBody extends StatefulWidget {
  const LeaveBody({super.key});

  @override
  State<LeaveBody> createState() => _LeaveBodyState();
}

class _LeaveBodyState extends State<LeaveBody>
    with SingleTickerProviderStateMixin, AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  late final TabController _subTabController = TabController(
    length: LeaveStatus.values.length,
    vsync: this,
  );

  @override
  void dispose() {
    _subTabController.dispose();
    super.dispose();
  }

  Future<void> _onRefresh(BuildContext context) async {
    final completer = Completer<void>();
    context.read<AttendanceBloc>().add(
      LeaveRequestsRefreshed(completer: completer),
    );
    await completer.future;
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return BlocBuilder<AttendanceBloc, AttendanceState>(
      buildWhen: (previous, current) =>
          previous.leaveRequests != current.leaveRequests ||
          previous.isLoading != current.isLoading,
      builder: (context, state) {
        final leaves = state.leaveRequests?.data ?? [];
        final counts = {
          for (final status in LeaveStatus.values)
            status: leaves.where((r) => r.status == status.name).length,
        };

        if (state.isLoading && leaves.isEmpty) {
          return const CustomScrollView(
            physics: NeverScrollableScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(
                child: ShimmerList(
                  itemCount: 6,
                  itemHeight: 120,
                  padding: EdgeInsets.only(top: 80, left: 16, right: 16),
                ),
              ),
            ],
          );
        }

        if (leaves.isEmpty) {
          return RefreshIndicator(
            onRefresh: () => _onRefresh(context),
            child: SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.6,
                child: Column(
                  children: [
                    LeaveSubTabBar(
                      controller: _subTabController,
                      counts: counts,
                    ),
                    Expanded(
                      child: Center(
                        child: AppText.b2(
                          context.l10n.noLeaveRequests,
                          color: AppColors.grayMedium,
                          fontSize: 14.sp,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
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
                    RefreshIndicator(
                      onRefresh: () => _onRefresh(context),
                      child: _LeaveList(
                        requests: leaves
                            .where((r) => r.status == status.name)
                            .toList(),
                        status: status,
                      ),
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
  const _LeaveList({required this.requests, required this.status});

  final List<LeaveRequest> requests;
  final LeaveStatus status;

  @override
  Widget build(BuildContext context) {
    if (requests.isEmpty) {
      return CustomScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Center(
              child: AppText.b2(
                context.l10n.noLeaveRequestsWithStatus(status.label.toLowerCase()),
                color: AppColors.grayMedium,
                fontSize: 14.sp,
              ),
            ),
          ),
        ],
      );
    }

    return ListView.builder(
      physics: const AlwaysScrollableScrollPhysics(),
      padding: EdgeInsets.fromLTRB(16.w, 12.h, 16.w, 88.h),
      itemCount: requests.length,
      itemBuilder: (_, i) {
        final request = requests[i];
        return LeaveRequestItem.fromRequest(
          context: context,
          request: request,
          readOnly: status != LeaveStatus.pending,
        );
      },
    );
  }
}
