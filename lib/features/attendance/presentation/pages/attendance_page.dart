import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:tanlu_management/core/base/base_page_state.dart';
import 'package:tanlu_management/core/router/app_router.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_confirm_dialog.dart';
import 'package:tanlu_management/core/widgets/app_snackbar.dart';

import 'package:tanlu_management/features/attendance/presentation/bloc/attendance_bloc.dart';
import 'package:tanlu_management/features/attendance/domain/entity/enums/attendance_status.dart';
import 'package:tanlu_management/features/attendance/presentation/enums/attendance_tab.dart';
import 'package:tanlu_management/features/attendance/domain/entity/enums/leave_status.dart';
import 'package:tanlu_management/features/attendance/presentation/widgets/attendance_app_bar.dart';
import 'package:tanlu_management/features/attendance/presentation/widgets/attendance_save_bar.dart';
import 'package:tanlu_management/features/attendance/presentation/widgets/attendance_success_dialog.dart';
import 'package:tanlu_management/features/attendance/presentation/widgets/attendance_tab_bar.dart';
import 'package:tanlu_management/features/attendance/presentation/widgets/attendance_tab/attendance_body.dart';
import 'package:tanlu_management/features/attendance/presentation/widgets/leave_tab/leave_body.dart';
import 'package:tanlu_management/features/attendance/presentation/widgets/stats_tab/stats_body.dart';

class AttendancePage extends StatefulWidget {
  const AttendancePage({super.key, this.initialTab = AttendanceTab.list});

  final AttendanceTab initialTab;

  @override
  State<AttendancePage> createState() => _AttendancePageState();
}

class _AttendancePageState extends BasePageState<AttendancePage, AttendanceBloc>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _currentTab = 0;
  String? _className;

  Future<void> _loadClassName() async {
    // Dummy class name or logic if needed, previously was using sl<GetClassNameUseCase>()
    setState(() => _className = '');
  }

  Future<void> _handleCompleteCheckOut(int missingCheckOutCount) async {
    final content = missingCheckOutCount > 0
        ? 'Còn $missingCheckOutCount bé chưa ghi giờ về. '
              'Chốt cuối ngày sẽ tự ghi giờ về cho các bé này.'
        : 'Giáo viên xác nhận chốt điểm danh cuối ngày?';

    final confirmed = await AppConfirmDialog.show(
      context,
      title: 'Chốt cuối ngày',
      content: content,
      cancelLabel: 'Huỷ',
      confirmLabel: 'Đồng ý',
      type: AppConfirmDialogType.info,
    );

    if (confirmed == true && mounted) {
      bloc.add(const SubmitCompleteCheckOutEvent());
    }
  }

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 3,
      vsync: this,
      initialIndex: widget.initialTab.index,
    );
    _currentTab = widget.initialTab.index;
    _tabController.addListener(_onTabChanged);
    bloc.add(const FetchDailyAttendance(date: null));
    bloc.add(const LeaveRequestsStarted(limit: 50));
    if (widget.initialTab == AttendanceTab.statistics) {
      _fetchAttendanceHistory();
    }
    _loadClassName();
  }

  void _onTabChanged() {
    if (_tabController.indexIsChanging) return;
    setState(() => _currentTab = _tabController.index);
    if (_tabController.index == AttendanceTab.statistics.index) {
      _fetchAttendanceHistory();
    }
  }

  void _fetchAttendanceHistory() {
    bloc.add(FetchHistoryAttendance(date: DateTime.now()));
  }

  @override
  void dispose() {
    _tabController.removeListener(_onTabChanged);
    _tabController.dispose();
    super.dispose();
  }

  void _navigateBack() {
    if (context.canPop()) {
      context.pop();
    } else {
      context.go(AppRouter.overview);
    }
  }

  void _handleExit() {
    if (mounted) _navigateBack();
  }

  @override
  Widget buildPage(BuildContext context) {
    return BlocConsumer<AttendanceBloc, AttendanceState>(
      listenWhen: (previous, current) =>
          previous.isSubmitting && !current.isSubmitting,
      listener: (context, state) {
        if (state.onPageError.isNotEmpty) {
          AppSnackbar.showError(context, message: state.onPageError);
          return;
        }

        if (state.successMessage != null) {
          if (state.successMessage == 'Lưu điểm danh sáng thành công!') {
            final roster = state.dailyAttendance?.roster ?? [];
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => AttendanceSuccessDialog(
                  presentCount: roster
                      .where(
                        (a) => a.status == AttendanceStatus.present.apiValue,
                      )
                      .length,
                  absentCount: roster
                      .where(
                        (a) =>
                            a.status ==
                            AttendanceStatus.absentUnexcused.apiValue,
                      )
                      .length,
                  excusedCount: roster
                      .where(
                        (a) =>
                            a.status == AttendanceStatus.absentExcused.apiValue,
                      )
                      .length,
                  className: _className ?? '—',
                ),
              ),
            );
          } else {
            AppSnackbar.showSuccess(context, message: state.successMessage!);
          }
        }
      },
      builder: (context, state) {
        final roster = state.dailyAttendance?.roster ?? [];
        final pendingLeaveCount =
            state.leaveRequests?.data
                .where((r) => r.status == LeaveStatus.pending.name)
                .length ??
            0;
        final notMarkedCount = roster
            .where((s) => s.status == AttendanceStatus.notMarked.apiValue)
            .length;

        final markedCount = roster.length - notMarkedCount;
        final total = roster.length;
        final checkInDone =
            state.dailyAttendance?.session.isCheckInCompleted == true;
        final checkOutDone =
            state.dailyAttendance?.session.isCheckOutCompleted == true;
        final missingCheckOutCount = roster
            .where(
              (a) =>
                  (a.status == AttendanceStatus.present.apiValue ||
                      a.status == AttendanceStatus.late.apiValue) &&
                  a.checkOutTime == null,
            )
            .length;
        final morningReady = notMarkedCount == 0 && !state.isSubmitting;

        return PopScope(
          canPop: false,
          onPopInvokedWithResult: (didPop, _) {
            if (!didPop) _handleExit();
          },
          child: Scaffold(
            backgroundColor: AppColors.grayBg,
            body: Column(
              children: [
                AttendanceAppBar(
                  onBack: _handleExit,
                  className: _className ?? '',
                ),
                AttendanceTabBar(
                  controller: _tabController,
                  pendingLeaveCount: pendingLeaveCount,
                ),
                Expanded(
                  child: TabBarView(
                    controller: _tabController,
                    physics: const NeverScrollableScrollPhysics(),
                    children: const [
                      AttendanceBody(),
                      LeaveBody(),
                      StatsBody(),
                    ],
                  ),
                ),
                if (_currentTab == 0 &&
                    !checkInDone &&
                    !(state.isLoading && roster.isEmpty))
                  AttendanceSaveBar(
                    title: '$markedCount/$total',
                    buttonLabel: 'Lưu điểm danh sáng',
                    titleColor: morningReady
                        ? AppColors.success
                        : AppColors.grayDark,
                    canSave: morningReady,
                    isSaving: state.isSubmitting,
                    onSave: () {
                      bloc.add(const SubmitMorningAttendanceEvent());
                    },
                  ),

                if (_currentTab == 0 && checkInDone && !checkOutDone)
                  AttendanceSaveBar(
                    buttonLabel: 'Chốt điểm danh cuối ngày',
                    canSave: !state.isSubmitting,
                    isSaving: state.isSubmitting,
                    onSave: () => _handleCompleteCheckOut(missingCheckOutCount),
                  ),
              ],
            ),
          ),
        );
      },
    );
  }
}
