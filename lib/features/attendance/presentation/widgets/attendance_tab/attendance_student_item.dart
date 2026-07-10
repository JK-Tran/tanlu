import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/features/attendance/domain/entity/attendance_student.dart';
import 'package:tanlu_management/features/attendance/domain/entity/enums/attendance_status.dart';
import 'package:tanlu_management/features/attendance/presentation/widgets/attendance_avatar.dart';
import 'package:tanlu_management/shared/utils/date_time_utils.dart';

extension AttendanceStatusExt on AttendanceStatus {
  String get label {
    switch (this) {
      case AttendanceStatus.present:
        return 'Có mặt';
      case AttendanceStatus.late:
        return 'Đi trễ';
      case AttendanceStatus.absentUnexcused:
        return 'Vắng mặt';
      case AttendanceStatus.absentExcused:
        return 'Nghỉ phép';
      case AttendanceStatus.notMarked:
        return 'Chưa điểm danh';
    }
  }

  Color get color {
    switch (this) {
      case AttendanceStatus.present:
        return AppColors.success;
      case AttendanceStatus.late:
        return const Color(0xFFE17055);
      case AttendanceStatus.absentUnexcused:
        return AppColors.warning;
      case AttendanceStatus.absentExcused:
        return AppColors.info;
      case AttendanceStatus.notMarked:
        return AppColors.grayMedium;
    }
  }

  Color get bgColor {
    switch (this) {
      case AttendanceStatus.present:
        return AppColors.successLight;
      case AttendanceStatus.late:
        return const Color(0xFFE17055).withValues(alpha: 0.12);
      case AttendanceStatus.absentUnexcused:
        return AppColors.warningLight;
      case AttendanceStatus.absentExcused:
        return AppColors.infoLight;
      case AttendanceStatus.notMarked:
        return Colors.transparent;
    }
  }

  IconData get icon {
    switch (this) {
      case AttendanceStatus.present:
        return Icons.check_circle_rounded;
      case AttendanceStatus.late:
        return Icons.access_time_rounded;
      case AttendanceStatus.absentUnexcused:
        return Icons.cancel_rounded;
      case AttendanceStatus.absentExcused:
        return Icons.assignment_return_rounded;
      case AttendanceStatus.notMarked:
        return Icons.radio_button_unchecked;
    }
  }
}

// _getStatusFromString removed in favor of AttendanceStatusMapper.fromApi

class AttendanceStudentItem extends StatelessWidget {
  const AttendanceStudentItem({
    super.key,
    required this.student,
    required this.onOpenSheet,
    this.onCheckOut,
    this.draftMode = false,
    this.onTogglePresent,
  });

  final AttendanceStudent student;
  final VoidCallback onOpenSheet;
  final VoidCallback? onCheckOut;
  final bool draftMode;
  final VoidCallback? onTogglePresent;

  String get _nickname => student.nickName; // fallback if nickname is missing

  bool get _canCheckOut {
    final status = AttendanceStatusMapper.fromApi(student.status);
    return (status == AttendanceStatus.present ||
            status == AttendanceStatus.late) &&
        student.checkOutTime == null;
  }

  bool get _canTogglePresent {
    if (!draftMode || onTogglePresent == null) return false;
    final status = AttendanceStatusMapper.fromApi(student.status);
    return status == AttendanceStatus.notMarked ||
        status == AttendanceStatus.present;
  }

  @override
  Widget build(BuildContext context) {
    final status = AttendanceStatusMapper.fromApi(student.status);
    final isMarked = status != AttendanceStatus.notMarked;
    final checkInStr = DateTimeUtils.formatTime(
      student.checkInTime,
      hmOnly: true,
    );
    final checkOutStr = DateTimeUtils.formatTime(
      student.checkOutTime,
      hmOnly: true,
    );

    return Material(
      color: draftMode && isMarked
          ? status.bgColor.withValues(alpha: 0.25)
          : AppColors.white,
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
              nickname: _nickname,
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
                    '($_nickname)',
                    color: AppColors.grayMedium,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w700,
                  ),

                  if (draftMode &&
                      isMarked &&
                      status != AttendanceStatus.present)
                    Padding(
                      padding: EdgeInsets.only(top: 4.h),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          AppText.b2(
                            status.label,
                            color: status.color,
                            fontSize: 11.sp,
                            fontWeight: FontWeight.w600,
                          ),
                          if (status == AttendanceStatus.absentExcused &&
                              student.leaveRequest.id != 0 &&
                              student.leaveRequest.status == 'approved') ...[
                            SizedBox(width: 8.w),
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 6.w,
                                vertical: 2.h,
                              ),
                              decoration: BoxDecoration(
                                color: status.bgColor,
                                borderRadius: BorderRadius.circular(4.r),
                                border: Border.all(
                                  color: status.color.withValues(alpha: 0.3),
                                ),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(
                                    Icons.verified_rounded,
                                    color: status.color,
                                    size: 10.sp,
                                  ),
                                  SizedBox(width: 4.w),
                                  AppText.b2(
                                    'Đã duyệt đơn',
                                    color: status.color,
                                    fontSize: 9.sp,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ],
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
                      status == AttendanceStatus.absentExcused &&
                      student.leaveRequest.reason.isNotEmpty)
                    Padding(
                      padding: EdgeInsets.only(top: 2.h),
                      child: AppText.b2(
                        student.leaveRequest.reason,
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
              Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: _canTogglePresent ? onTogglePresent! : onOpenSheet,
                  customBorder: const CircleBorder(),
                  splashColor: AppColors.success.withValues(alpha: 0.2),
                  highlightColor: AppColors.successLight.withValues(alpha: 0.5),
                  child: Padding(
                    padding: EdgeInsets.all(6.w),
                    child: _markIcon(status),
                  ),
                ),
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
    // Chỉ có mặt / đi trễ mới có giờ vào/về
    final status = AttendanceStatusMapper.fromApi(student.status);
    if (status == AttendanceStatus.absentExcused ||
        status == AttendanceStatus.absentUnexcused) {
      return false;
    }
    final checkInStr = DateTimeUtils.formatTime(
      student.checkInTime,
      hmOnly: true,
    );
    final checkOutStr = DateTimeUtils.formatTime(
      student.checkOutTime,
      hmOnly: true,
    );
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

  Widget _markIcon(AttendanceStatus status) {
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

class _StatusChip extends StatelessWidget {
  const _StatusChip({required this.status, required this.onTap});

  final AttendanceStatus status;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12.r),
        child: Ink(
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
              Icon(
                Icons.chevron_right_rounded,
                size: 14.w,
                color: status.color,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
