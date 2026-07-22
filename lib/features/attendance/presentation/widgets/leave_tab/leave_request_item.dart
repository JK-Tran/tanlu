import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tanlu_management/core/widgets/app_leave_decision_dialog.dart';
import 'package:tanlu_management/core/widgets/app_confirm_dialog.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/core/widgets/buttons/app_action_button.dart';
import 'package:tanlu_management/features/attendance/domain/entity/enums/leave_status.dart';
import 'package:tanlu_management/features/attendance/domain/entity/leave_request.dart';
import 'package:tanlu_management/features/attendance/presentation/enums/leave_status_ext.dart';
import 'package:tanlu_management/features/attendance/presentation/bloc/attendance_bloc.dart';
import 'package:tanlu_management/features/attendance/presentation/widgets/attendance_avatar.dart';
import 'package:tanlu_management/shared/utils/date_time_utils.dart';
import 'package:tanlu_management/l10n/l10n.dart';

class LeaveRequestItem extends StatelessWidget {
  const LeaveRequestItem({
    super.key,
    required this.request,
    required this.studentName,
    required this.studentNickname,
    required this.onDecision,
    this.studentAvatarUrl,
    this.isPending = false,
  });

  final LeaveRequest request;
  final String studentName;
  final String studentNickname;
  final String? studentAvatarUrl;
  final bool isPending;
  final void Function(bool isApproved) onDecision;

  factory LeaveRequestItem.fromRequest({
    required BuildContext context,
    required LeaveRequest request,
    required bool readOnly,
  }) {
    final displayName = request.student.fullName.isNotEmpty
        ? request.student.fullName
        : context.l10n.unknown;
    final nickname = request.student.fullName.isNotEmpty
        ? request.student.fullName
        : context.l10n.unknown;
    final avatarUrl = request.student.avatarUrl.isNotEmpty
        ? request.student.avatarUrl
        : null;

    return LeaveRequestItem(
      request: request,
      studentName: displayName,
      studentNickname: nickname.isNotEmpty ? nickname : '?',
      studentAvatarUrl: avatarUrl,
      isPending: !readOnly,
      onDecision: (isApproved) async {
        if (!isApproved) {
          final result = await AppLeaveDecisionDialog.show(
            context,
            title: context.l10n.rejectLeaveRequestConfirmTitle,
            content: context.l10n.rejectLeaveRequestConfirmMessage(displayName),
            cancelLabel: context.l10n.cancel,
            confirmLabel: context.l10n.reject,
            type: AppConfirmDialogType.warning,
          );
          if (result == null || !result.isConfirm || !context.mounted) return;
          context.read<AttendanceBloc>().add(
            SubmitLeaveDecisionEvent(
              requestId: request.id,
              isApproved: false,
              decisionNote: result.note,
            ),
          );
          return;
        }

        final result = await AppLeaveDecisionDialog.show(
          context,
          title: context.l10n.approveLeaveRequestConfirmTitle,
          content: context.l10n.approveLeaveRequestConfirmMessage(displayName),
          cancelLabel: context.l10n.cancel,
          confirmLabel: context.l10n.agree,
          type: AppConfirmDialogType.success,
        );
        if (result == null || !result.isConfirm || !context.mounted) return;

        context.read<AttendanceBloc>().add(
          SubmitLeaveDecisionEvent(
            requestId: request.id,
            isApproved: true,
            decisionNote: result.note,
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final leaveDate = request.date != null
        ? DateFormat('EEEE, dd/MM/yyyy').format(request.date!)
        : context.l10n.unknown;
    final sender = request.parent.fullName.isNotEmpty
        ? request.parent.fullName
        : context.l10n.parent;
    final sentAt = request.submittedAt != null
        ? DateTimeUtils.formatDateTimeType2(request.submittedAt!)?.trim()
        : null;

    return Container(
      margin: EdgeInsets.only(bottom: isPending ? 10.h : 8.h),
      padding: EdgeInsets.all(12.w),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(8.r),
        border: isPending
            ? null
            : Border.all(color: AppColors.grayLight.withValues(alpha: 0.8)),
        boxShadow: isPending
            ? [
                BoxShadow(
                  color: AppColors.black.withValues(alpha: 0.06),
                  blurRadius: 8,
                  offset: const Offset(0, 2),
                ),
              ]
            : null,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AttendanceAvatar(
                nickname: studentNickname,
                imageUrl: studentAvatarUrl,
                size: isPending ? 40.0 : 36.0,
              ),
              SizedBox(width: 10.w),
              Expanded(child: _studentNameRow()),
              if (!isPending) _LeaveStatusPill(status: request.status),
            ],
          ),
          SizedBox(height: 10.h),
          _infoBox(
            children: [
              _infoRow(
                icon: Icons.event_outlined,
                label: context.l10n.leaveDay,
                value: leaveDate,
                valueWeight: FontWeight.w700,
                trailing: request.date?.isToday == true
                    ? const _TodayBadge()
                    : null,
              ),
              SizedBox(height: 6.h),
              _infoRow(
                icon: Icons.person_outline,
                label: context.l10n.sentBy,
                value: sender,
              ),
              if (sentAt != null) ...[
                SizedBox(height: 6.h),
                _infoRow(
                  icon: Icons.schedule_outlined,
                  label: context.l10n.sentAt,
                  value: sentAt,
                ),
              ],
            ],
          ),
          if (request.reason.isNotEmpty) ...[
            SizedBox(height: 8.h),
            _infoBox(
              children: [
                AppText.l2(
                  context.l10n.reason,
                  color: AppColors.grayMedium,
                  fontSize: 11.sp,
                  fontWeight: FontWeight.w500,
                ),
                SizedBox(height: 2.h),
                AppText.b2(
                  request.reason,
                  color: AppColors.grayDark,
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w600,
                ),
              ],
            ),
          ],
          if (isPending) ...[
            SizedBox(height: 12.h),
            Row(
              children: [
                Expanded(
                  child: AppActionButton(
                    label: context.l10n.reject,
                    onPressed: () => onDecision(false),
                    type: AppButtonType.outlined,
                    color: AppColors.white,
                    borderColor: AppColors.grayLight,
                    textColor: AppColors.grayDark80,
                    borderRadius: 8.r,
                    padding: EdgeInsets.symmetric(vertical: 10.h),
                    expanded: true,
                  ),
                ),
                SizedBox(width: 8.w),
                Expanded(
                  child: AppActionButton(
                    label: context.l10n.approve,
                    onPressed: () => onDecision(true),
                    color: AppColors.success,
                    textColor: AppColors.white,
                    borderRadius: 8.r,
                    padding: EdgeInsets.symmetric(vertical: 10.h),
                    expanded: true,
                  ),
                ),
              ],
            ),
          ],
        ],
      ),
    );
  }

  Widget _studentNameRow() {
    return Row(
      children: [
        Flexible(
          child: AppText.b1(
            studentName,
            color: AppColors.grayDark,
            fontSize: 14.sp,
            fontWeight: FontWeight.w700,
          ),
        ),
        if (studentNickname.isNotEmpty && studentNickname != '?') ...[
          SizedBox(width: 4.w),
          AppText.b2(
            '($studentNickname)',
            color: AppColors.grayMedium,
            fontSize: 12.sp,
            fontWeight: FontWeight.w600,
          ),
        ],
      ],
    );
  }

  Widget _infoBox({required List<Widget> children}) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.h),
      decoration: BoxDecoration(
        color: AppColors.grayVeryLight,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: children,
      ),
    );
  }

  Widget _infoRow({
    required IconData icon,
    required String label,
    required String value,
    FontWeight valueWeight = FontWeight.w600,
    Widget? trailing,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, size: 14.w, color: AppColors.grayMedium),
        SizedBox(width: 6.w),
        SizedBox(
          width: 68.w,
          child: AppText.b2(
            label,
            color: AppColors.grayMedium,
            fontSize: 11.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Flexible(
                child: AppText.b2(
                  value,
                  color: AppColors.grayDark,
                  fontSize: 12.sp,
                  fontWeight: valueWeight,
                ),
              ),
              if (trailing != null) ...[SizedBox(width: 6.w), trailing],
            ],
          ),
        ),
      ],
    );
  }
}

class _TodayBadge extends StatelessWidget {
  const _TodayBadge();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 2.h),
      decoration: BoxDecoration(
        color: AppColors.primaryLight,
        borderRadius: BorderRadius.circular(4.r),
      ),
      child: AppText.l2(
        context.l10n.today,
        color: AppColors.primary,
        fontSize: 10.sp,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}

class _LeaveStatusPill extends StatelessWidget {
  const _LeaveStatusPill({required this.status});

  final String status;

  @override
  Widget build(BuildContext context) {
    final uiStatus = LeaveStatus.values.firstWhere(
      (e) => e.name == status,
      orElse: () => LeaveStatus.pending,
    );

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 3.h),
      decoration: BoxDecoration(
        color: uiStatus.color.withValues(alpha: 0.12),
        borderRadius: BorderRadius.circular(6.r),
      ),
      child: AppText.l2(
        uiStatus.label,
        color: uiStatus.color,
        fontSize: 10.sp,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
