import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/features/report/domain/entity/report.dart';
import 'package:tanlu_management/features/report/presentation/widgets/report_detail/report_detail_app_bar.dart';
import 'package:tanlu_management/features/student/domain/entity/student.dart';
import 'package:tanlu_management/features/report/presentation/pages/report_create_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tanlu_management/features/report/presentation/bloc/report_bloc.dart';
import 'package:tanlu_management/shared/utils/date_time_utils.dart';

import 'package:tanlu_management/features/report/presentation/widgets/report_detail/report_info_card.dart';
import 'package:tanlu_management/features/report/presentation/widgets/report_detail/report_media.dart';
import 'package:tanlu_management/shared/utils/string_utils.dart';
import 'package:tanlu_management/core/widgets/app_confirm_dialog.dart';
import 'package:tanlu_management/core/widgets/app_notification_dialog.dart';

class ReportDetailArgs {
  const ReportDetailArgs({
    required this.student,
    this.report,
    required this.selectedMonth,
    required this.reportBloc,
  });

  final Student student;
  final Report? report;
  final String selectedMonth;
  final ReportBloc reportBloc;
}

class ReportDetailPage extends StatefulWidget {
  const ReportDetailPage({
    super.key,
    required this.student,
    this.report,
    required this.selectedMonth,
  });

  final Student student;
  final Report? report;
  final String selectedMonth;

  @override
  State<ReportDetailPage> createState() => _ReportDetailPageState();
}

class _ReportDetailPageState extends State<ReportDetailPage> {
  @override
  void initState() {
    super.initState();
    if (widget.report != null) {
      context.read<ReportBloc>().add(GetReportById(id: widget.report!.id));
    }
  }

  (Color bg, Color text, IconData icon) _statusStyle(ReportStatus status) {
    return switch (status) {
      ReportStatus.approved => (
        AppColors.successLight,
        AppColors.success,
        Icons.check_circle_rounded,
      ),
      ReportStatus.sent => (
        AppColors.infoLight,
        AppColors.info,
        Icons.send_rounded,
      ),
      ReportStatus.draft => (
        AppColors.warningLight,
        AppColors.warning,
        Icons.edit_note_rounded,
      ),
    };
  }

  void _openCreatePage(BuildContext context, [Report? currentReport]) async {
    final result = await Navigator.push<bool>(
      context,
      MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: context.read<ReportBloc>(),
          child: ReportCreatePage(
            student: widget.student,
            selectedMonth: widget.selectedMonth,
            report: currentReport,
          ),
        ),
      ),
    );

    if (result == true && context.mounted) {
      AppNotificationDialog.show(
        context,
        title: 'Thành công!',
        content: 'Lưu báo cáo thành công.',
        type: AppNotificationType.success,
      );
      context.read<ReportBloc>().add(const RefreshReportData());
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ReportBloc, ReportState>(
      listenWhen: (p, c) =>
          (c.deleteSuccess && !p.deleteSuccess) ||
          (c.submitError.isNotEmpty && c.submitError != p.submitError),
      listener: (context, state) async {
        if (state.submitError.isNotEmpty && context.mounted) {
          AppNotificationDialog.show(
            context,
            title: 'Lỗi',
            content: state.submitError,
            type: AppNotificationType.error,
          );
        }
        if (state.deleteSuccess && context.mounted) {
          await AppNotificationDialog.show(
            context,
            title: 'Thành công!',
            content: 'Xóa báo cáo thành công.',
            type: AppNotificationType.success,
          );
          if (context.mounted) {
            // Trigger refresh and navigate back
            context.read<ReportBloc>().add(const RefreshReportData());
            Navigator.of(context).pop();
          }
        }
      },
      builder: (context, state) {
        // Tìm report mới nhất dựa theo studentId và reportMonth, nếu không có thì fallback
        final latestReport =
            state.reports
                .where(
                  (r) =>
                      r.studentId == widget.student.id &&
                      r.reportMonth == widget.selectedMonth,
                )
                .firstOrNull ??
            widget.report;

        final hasReport = latestReport != null;

        return Scaffold(
          backgroundColor: const Color(0xFFF8F9FA),
          floatingActionButton: null,
          appBar: hasReport
              ? null
              : AppBar(
                  backgroundColor: const Color(0xFFF8F9FA),
                  elevation: 0,
                  leading: IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: AppColors.grayDark,
                    ),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                  title: AppText.t1(
                    'Chi tiết báo cáo',
                    color: AppColors.grayDark,
                    fontWeight: FontWeight.w700,
                  ),
                  centerTitle: true,
                ),
          body: state.pageError.isNotEmpty
              ? Center(
                  child: Padding(
                    padding: EdgeInsets.all(24.0.w),
                    child: AppText.t2(
                      state.pageError,
                      color: AppColors.error,
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
              : (!hasReport && state.isLoading
                    ? Center(
                        child: CircularProgressIndicator(
                          color: AppColors.primary,
                        ),
                      )
                    : (hasReport
                          ? _buildReportContent(context, latestReport)
                          : _buildEmptyState(context, latestReport))),
        );
      },
    );
  }

  Widget _buildEmptyState(BuildContext context, Report? report) {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: EdgeInsets.all(20.w),
              decoration: BoxDecoration(
                color: AppColors.primaryLight.withValues(alpha: 0.5),
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.assignment_add,
                size: 64,
                color: AppColors.primary,
              ),
            ),
            SizedBox(height: 24.h),
            AppText.t1(
              'Chưa có báo cáo',
              fontWeight: FontWeight.w700,
              fontSize: 16.sp,
              color: AppColors.grayDark,
            ),
            SizedBox(height: 8.h),
            AppText.b2(
              'Học viên ${widget.student.fullName}\nchưa có báo cáo trong ${StringUtils.formatMonthLabel(widget.selectedMonth)}.',
              textAlign: TextAlign.center,
              color: AppColors.grayMedium,
            ),
            SizedBox(height: 32.h),
            ElevatedButton.icon(
              onPressed: () => _openCreatePage(context),
              icon: Icon(Icons.add_rounded, size: 20, color: Colors.white),
              label: AppText.b1(
                'Tạo Báo Cáo Ngay',
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(0, 48), // Ghi đè Size.infinity từ theme
                backgroundColor: AppColors.primary,
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.r),
                ),
                textStyle: TextStyle(
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildReportContent(BuildContext context, Report report) {
    final (statusBg, statusColor, statusIcon) = _statusStyle(report.status);

    Widget deco(
      String asset, {
      double w = 48,
      double opacity = 0.9,
      double scale = 1.0,
    }) => Opacity(
      opacity: opacity,
      child: Transform.scale(
        scale: scale,
        child: Image.asset(asset, width: w),
      ),
    );

    return NestedScrollView(
      physics: const BouncingScrollPhysics(),
      headerSliverBuilder: (context, innerBoxIsScrolled) {
        return [
          ReportDetailAppBar(
            report: report,
            student: widget.student,
            statusBg: statusBg,
            statusColor: statusColor,
            statusIcon: statusIcon,
            monthLabel: StringUtils.formatMonthLabel(report.reportMonth),
            onEdit: () => _openCreatePage(context, report),
            onDelete: () async {
              final confirm = await AppConfirmDialog.show(
                context,
                title: 'Xóa báo cáo',
                content:
                    'Bạn có chắc chắn muốn xóa báo cáo này không? Hành động này không thể hoàn tác.',
                confirmLabel: 'Xóa',
                type: AppConfirmDialogType.error,
              );
              if (confirm == true && context.mounted) {
                context.read<ReportBloc>().add(DeleteReport(id: report.id));
              }
            },
          ),
        ];
      },
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ── Kết quả can thiệp card
              ReportInfoCard(
                icon: Icons.flag_rounded,
                iconColor: const Color(0xFF6366F1),
                iconBg: const Color(0xFFEEF2FF),
                title: 'Kết quả can thiệp',

                content: report.title.isNotEmpty
                    ? report.title
                    : 'Chưa có thông tin.',
                watermarkAsset: 'assets/icons/trophy.png',
                bottomRightDecoration: deco(
                  'assets/images/img-book-pencil.png',
                  w: 75,
                  opacity: 1.0,
                ),
              ),

              SizedBox(height: 12.h),

              // ── Nhận xét của giáo viên card
              ReportInfoCard(
                icon: Icons.chat_bubble_outline_rounded,
                iconColor: const Color(0xFF22C55E),
                iconBg: const Color(0xFFF0FDF4),
                title: 'Nhận xét của giáo viên',
                trailingIcon: deco(
                  'assets/icons/feedback.png',
                  w: 32,
                  opacity: 0.9,
                ),
                content: report.teacherComment.isNotEmpty
                    ? report.teacherComment
                    : 'Giáo viên chưa có nhận xét.',
                watermarkAsset: 'assets/icons/love-letter.png',
              ),

              if (report.files.isNotEmpty) ...[
                ReportMedia(report: report),
                SizedBox(height: 20.h),
              ],
              SizedBox(height: 20.h),

              // Timestamp
              if (report.createdAt != null)
                Center(
                  child: AppText.b2(
                    'Tạo lúc: ${DateTimeUtils.formatDateTimeType2(report.createdAt)}',
                    color: AppColors.grayMedium,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
