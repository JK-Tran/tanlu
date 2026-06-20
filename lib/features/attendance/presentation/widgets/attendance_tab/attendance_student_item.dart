import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/features/attendance/domain/entity/attendance.dart';
import 'package:tanlu_management/features/attendance/presentation/enums/attendance_status.dart';
import 'package:tanlu_management/features/attendance/presentation/widgets/attendance_avatar.dart';
import 'package:tanlu_management/shared/utils/date_time_utils.dart';
import 'package:tanlu_management/features/student/domain/entity/student.dart';

class AttendanceStudentItem extends StatelessWidget {
  const AttendanceStudentItem({
    super.key,
    required this.student,
    required this.attendance,
    required this.displayName,
    required this.onOpenSheet,
    this.leaveReason,
    this.onCheckOut,
    this.draftMode = false,
    this.onTogglePresent,
  });

  final Student student;
  final Attendance attendance;
  final String displayName;
  final String? leaveReason;
  final VoidCallback onOpenSheet;
  final VoidCallback? onCheckOut;
  final bool draftMode;
  final VoidCallback? onTogglePresent;

  bool get _canCheckOut {
    final status = attendance.uiStatus;
    return (status == AttendanceStatus.present ||
            status == AttendanceStatus.late) &&
        attendance.checkOutTime == null;
  }

  bool get _canTogglePresent {
    if (!draftMode || onTogglePresent == null) return false;
    final status = attendance.uiStatus;
    return status == AttendanceStatus.notMarked ||
        status == AttendanceStatus.present;
  }

  @override
  Widget build(BuildContext context) {
    final status = attendance.uiStatus;
    final isMarked = status != AttendanceStatus.notMarked;
    final checkInStr = DateTimeUtils.formatHourMinute(attendance.checkInTime);
    final checkOutStr = DateTimeUtils.formatHourMinute(attendance.checkOutTime);

    return Material(
      color: draftMode && isMarked
          ? status.bgColor.withValues(alpha: 0.25)
          : Colors.white,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.h),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: AppColors.grayLight.withValues(alpha: 0.5),
            ),
          ),
        ),
        child: Row(
          children: [
            AttendanceAvatar(
              nickname: displayName,
              imageUrl: student.avatarUrl.isNotEmpty ? student.avatarUrl : null,
            ),
            SizedBox(width: 12.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText.b2(
                    student.fullName,
                    color: AppColors.black,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                  ),
                  AppText.b1(
                    '($displayName)',
                    color: AppColors.grayMedium,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w700,
                  ),

                  if (draftMode &&
                      isMarked &&
                      status != AttendanceStatus.present)
                    Padding(
                      padding: EdgeInsets.only(top: 4.h),
                      child: AppText.b2(
                        status.label,
                        color: status.color,
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  if (draftMode &&
                      (status == AttendanceStatus.present ||
                          status == AttendanceStatus.late) &&
                      checkInStr != null)
                    Padding(
                      padding: EdgeInsets.only(top: 4.h),
                      child: Row(
                        children: [
                          Icon(
                            Icons.login_rounded,
                            size: 12.w,
                            color: status.color,
                          ),
                          SizedBox(width: 2.w),
                          AppText.b2(
                            'Vào lúc $checkInStr',
                            color: status.color,
                            fontSize: 11.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ],
                      ),
                    ),
                  if (!draftMode &&
                      status == AttendanceStatus.excused &&
                      leaveReason != null)
                    Padding(
                      padding: EdgeInsets.only(top: 2.h),
                      child: AppText.b2(
                        leaveReason!,
                        color: AppColors.info,
                        fontSize: 11.sp,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  if (!draftMode && _showTimeRow)
                    Padding(
                      padding: EdgeInsets.only(top: 4.h),
                      child: _TimeRow(
                        checkInStr: checkInStr,
                        checkOutStr: checkOutStr,
                        waitingCheckOut: _canCheckOut,
                      ),
                    ),
                ],
              ),
            ),
            if (!draftMode) _buildTrailing(status, checkInStr, checkOutStr),
            if (draftMode) ...[
              _MarkRadio(
                status: status,
                onTap: _canTogglePresent ? onTogglePresent! : onOpenSheet,
              ),
              IconButton(
                onPressed: onOpenSheet,
                icon: Icon(
                  Icons.more_horiz_rounded,
                  color: AppColors.grayMedium,
                  size: 24.w,
                ),
                padding: EdgeInsets.zero,
                constraints: BoxConstraints(minWidth: 36.w, minHeight: 36.w),
                tooltip: 'Trạng thái khác',
              ),
            ],
          ],
        ),
      ),
    );
  }

  bool get _showTimeRow {
    if (draftMode) return false;
    final checkInStr = DateTimeUtils.formatHourMinute(attendance.checkInTime);
    final checkOutStr = DateTimeUtils.formatHourMinute(attendance.checkOutTime);
    return checkInStr != null || checkOutStr != null || _canCheckOut;
  }

  Widget _buildTrailing(
    AttendanceStatus status,
    String? checkInStr,
    String? checkOutStr,
  ) {
    if (_canCheckOut && onCheckOut != null) {
      return _CheckOutButton(onTap: onCheckOut!);
    }
    if (status != AttendanceStatus.notMarked) {
      return _StatusChip(status: status, onTap: onOpenSheet);
    }
    return Icon(
      Icons.radio_button_unchecked,
      size: 20.w,
      color: AppColors.grayMedium,
    );
  }
}

class _TimeRow extends StatelessWidget {
  const _TimeRow({
    required this.checkInStr,
    required this.checkOutStr,
    required this.waitingCheckOut,
  });

  final String? checkInStr;
  final String? checkOutStr;
  final bool waitingCheckOut;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (checkInStr != null) ...[
          Icon(Icons.login_rounded, size: 12.w, color: AppColors.grayMedium),
          SizedBox(width: 2.w),
          AppText.b2(
            'Vào $checkInStr',
            color: AppColors.grayMedium,
            fontSize: 11.sp,
            fontWeight: FontWeight.w600,
          ),
        ],
        if (checkInStr != null && (checkOutStr != null || waitingCheckOut))
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 6.w),
            child: AppText.b2('·', color: AppColors.grayLight, fontSize: 11.sp),
          ),
        if (checkOutStr != null) ...[
          Icon(Icons.logout_rounded, size: 12.w, color: AppColors.grayMedium),
          SizedBox(width: 2.w),
          AppText.b2(
            'Về $checkOutStr',
            color: AppColors.grayMedium,
            fontSize: 11.sp,
            fontWeight: FontWeight.w600,
          ),
        ] else if (waitingCheckOut)
          AppText.b2(
            'Chưa về',
            color: AppColors.warning,
            fontSize: 11.sp,
            fontWeight: FontWeight.w600,
          ),
      ],
    );
  }
}

class _CheckOutButton extends StatelessWidget {
  const _CheckOutButton({required this.onTap});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(20.r),
        splashColor: AppColors.primary.withValues(alpha: 0.12),
        highlightColor: AppColors.primaryLight.withValues(alpha: 0.4),
        child: Ink(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.r),
            border: Border.all(color: AppColors.primary, width: 1.5),
            color: AppColors.primaryLight.withValues(alpha: 0.25),
          ),
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 6.h),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.logout_rounded, size: 14.w, color: AppColors.primary),
              SizedBox(width: 4.w),
              AppText.b2(
                'Ghi về',
                color: AppColors.primary,
                fontSize: 12.sp,
                fontWeight: FontWeight.w700,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _MarkRadio extends StatelessWidget {
  const _MarkRadio({required this.status, required this.onTap});

  final AttendanceStatus status;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        customBorder: const CircleBorder(),
        splashColor: AppColors.success.withValues(alpha: 0.2),
        highlightColor: AppColors.successLight.withValues(alpha: 0.5),
        child: Padding(
          padding: EdgeInsets.all(6.w),
          child: _MarkRadioIcon(status: status),
        ),
      ),
    );
  }
}

class _MarkRadioIcon extends StatelessWidget {
  const _MarkRadioIcon({required this.status});

  final AttendanceStatus status;

  @override
  Widget build(BuildContext context) {
    if (status == AttendanceStatus.present) {
      return Icon(
        Icons.check_circle_rounded,
        color: AppColors.success,
        size: 26.w,
      );
    }

    if (status != AttendanceStatus.notMarked) {
      return Container(
        width: 24.w,
        height: 24.w,
        decoration: BoxDecoration(
          color: status.bgColor,
          shape: BoxShape.circle,
          border: Border.all(color: status.color, width: 2),
        ),
        child: Icon(status.icon, color: status.color, size: 14.w),
      );
    }

    return Container(
      width: 24.w,
      height: 24.w,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: AppColors.grayMedium, width: 2),
      ),
    );
  }
}

class _StatusChip extends StatelessWidget {
  const _StatusChip({required this.status, required this.onTap});

  final AttendanceStatus status;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
        decoration: BoxDecoration(
          color: status.bgColor,
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(status.icon, size: 14.w, color: status.color),
            SizedBox(width: 4.w),
            AppText.b2(
              status.label,
              color: status.color,
              fontSize: 12.sp,
              fontWeight: FontWeight.w600,
            ),
            SizedBox(width: 4.w),
            Icon(Icons.chevron_right_rounded, size: 14.w, color: status.color),
          ],
        ),
      ),
    );
  }
}
