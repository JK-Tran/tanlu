import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:tanlu_management/core/base/base_page_state.dart';
import 'package:tanlu_management/core/router/app_router.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_confirm_dialog.dart';
import 'package:tanlu_management/core/widgets/app_snackbar.dart';
import 'package:tanlu_management/features/app/presentation/bloc/app_bloc.dart';
import 'package:tanlu_management/features/attendance/presentation/bloc/attendance_bloc.dart';
import 'package:tanlu_management/features/attendance/presentation/enums/attendance_status.dart';
import 'package:tanlu_management/features/attendance/presentation/enums/attendance_tab.dart';
import 'package:tanlu_management/features/attendance/presentation/enums/leave_status.dart';
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
  bool _wasSaving = false;
  bool _sessionWasCompleted = false;
  bool _checkOutWasCompleted = false;

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
      bloc.add(const CompleteCheckOutSessionEvent());
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
    final currentUser = context.read<AppBloc>().currentUser;
    bloc.add(
      FetchDailyAttendance(
        classId: currentUser?.classId ?? '',
        date: DateTime.now(),
      ),
    );
    if (widget.initialTab == AttendanceTab.statistics) {
      _fetchAttendanceHistory();
    }
  }

  void _onTabChanged() {
    if (_tabController.indexIsChanging) return;
    setState(() => _currentTab = _tabController.index);
    if (_tabController.index == AttendanceTab.statistics.index) {
      _fetchAttendanceHistory();
    }
  }

  void _fetchAttendanceHistory() {
    final classId = context.read<AppBloc>().currentUser?.classId ?? '';
    if (classId.isEmpty) return;

    final state = bloc.state;
    bloc.add(
      FetchAttendanceHistoryEvent(
        classId: classId,
        date: state.historyDate ?? state.selectedDate ?? DateTime.now(),
      ),
    );
  }

  @override
  void dispose() {
    _tabController.removeListener(_onTabChanged);
    _tabController.dispose();
    super.dispose();
  }

  bool _shouldConfirmExit(AttendanceState state) => state.hasUnsavedChanges;

  void _navigateBack() {
    if (context.canPop()) {
      context.pop();
    } else {
      context.go(AppRouter.overview);
    }
  }

  Future<void> _handleExit() async {
    final state = bloc.state;
    if (!_shouldConfirmExit(state)) {
      if (mounted) _navigateBack();
      return;
    }

    final confirmed = await AppConfirmDialog.show(
      context,
      title: 'Chưa lưu điểm danh',
      content: 'Bạn có thay đổi chưa lưu. Thoát bây giờ sẽ mất bảng điểm danh.',
      cancelLabel: 'Huỷ',
      confirmLabel: 'Xác nhận',
      type: AppConfirmDialogType.warning,
    );

    if (confirmed == true && mounted) _navigateBack();
  }

  @override
  Widget buildPage(BuildContext context) {
    return BlocConsumer<AttendanceBloc, AttendanceState>(
      listener: (context, state) {
        final sessionCompleted = state.session?.isCheckInCompleted == true;
        final checkOutCompleted = state.session?.isCheckOutCompleted == true;
        final saveSucceeded =
            _wasSaving && !state.isSaving && state.onPageError.isEmpty;

        if (saveSucceeded) {
          if (!_sessionWasCompleted && sessionCompleted) {
            final attendances = state.attendances;
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (_) => AttendanceSuccessDialog(
                  presentCount: attendances
                      .where((a) => a.uiStatus == AttendanceStatus.present)
                      .length,
                  absentCount: attendances
                      .where((a) => a.uiStatus == AttendanceStatus.absent)
                      .length,
                  excusedCount: attendances
                      .where((a) => a.uiStatus == AttendanceStatus.excused)
                      .length,
                  className: 'Lớp Mầm 2 - SUNFLOWER',
                ),
              ),
            );
          } else if (checkOutCompleted && !_checkOutWasCompleted) {
            AppSnackbar.show(
              context,
              message: 'Đã chốt cuối ngày',
              type: AppSnackbarType.success,
            );
          } else if (_sessionWasCompleted && !checkOutCompleted) {
            AppSnackbar.show(
              context,
              message: 'Đã cập nhật',
              type: AppSnackbarType.success,
            );
          }
        }

        _wasSaving = state.isSaving;
        _sessionWasCompleted = sessionCompleted;
        _checkOutWasCompleted = checkOutCompleted;
      },
      builder: (context, state) {
        final attMap = {for (final a in state.attendances) a.studentId: a};
        final pendingLeaveCount = state.leaveRequests
            .where((r) => r.leaveStatus == LeaveStatus.pending)
            .length;
        final notMarkedCount = state.students.where((s) {
          final att = attMap[s.id];
          return att == null
              ? true
              : att.uiStatus == AttendanceStatus.notMarked;
        }).length;

        final isSessionCompleted = state.session?.isCheckInCompleted == true;
        final isCheckOutCompleted = state.session?.isCheckOutCompleted == true;
        final missingCheckOutCount = state.attendances
            .where(
              (a) =>
                  (a.status == 'present' || a.status == 'late') &&
                  a.checkOutTime == null,
            )
            .length;
        final showFirstSaveBar = _currentTab == 0 && !isSessionCompleted;
        final showUpdateBar =
            _currentTab == 0 && isSessionCompleted && state.hasUnsavedChanges;
        final showCheckOutBar =
            _currentTab == 0 &&
            isSessionCompleted &&
            !isCheckOutCompleted &&
            !state.hasUnsavedChanges;

        return PopScope(
          canPop: false,
          onPopInvokedWithResult: (didPop, _) {
            if (!didPop) _handleExit();
          },
          child: Scaffold(
            backgroundColor: AppColors.grayBg,
            body: Column(
              children: [
                Expanded(
                  child: NestedScrollView(
                    headerSliverBuilder: (_, _) => [
                      AttendanceSliverAppBar(onBack: _handleExit),
                      SliverPersistentHeader(
                        pinned: true,
                        delegate: AttendanceTabBarDelegate(
                          child: AttendanceTabBar(
                            controller: _tabController,
                            pendingLeaveCount: pendingLeaveCount,
                          ),
                        ),
                      ),
                    ],
                    body: TabBarView(
                      controller: _tabController,
                      children: const [
                        AttendanceBody(),
                        LeaveBody(),
                        StatsBody(),
                      ],
                    ),
                  ),
                ),
                if (showFirstSaveBar)
                  AttendanceSaveBar(
                    markedCount: state.students.length - notMarkedCount,
                    total: state.students.length,
                    notMarkedCount: notMarkedCount,
                    isSaving: state.isSaving,
                    isMorningDraft: true,
                    onSave: () =>
                        bloc.add(const CompleteAttendanceSessionEvent()),
                  ),
                if (showUpdateBar)
                  AttendanceSaveBar(
                    markedCount: state.students.length - notMarkedCount,
                    total: state.students.length,
                    notMarkedCount: notMarkedCount,
                    missingCheckOutCount: missingCheckOutCount,
                    isSaving: state.isSaving,
                    isUpdateMode: true,
                    onSave: () => bloc.add(const UpdateDailyAttendanceEvent()),
                  ),
                if (showCheckOutBar)
                  AttendanceSaveBar(
                    markedCount: state.students.length - notMarkedCount,
                    total: state.students.length,
                    notMarkedCount: notMarkedCount,
                    missingCheckOutCount: missingCheckOutCount,
                    isSaving: state.isSaving,
                    isCheckOutMode: true,
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
