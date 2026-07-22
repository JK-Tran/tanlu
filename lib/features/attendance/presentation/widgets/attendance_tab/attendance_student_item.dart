import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/features/attendance/domain/entity/attendance_student.dart';
import 'package:tanlu_management/features/attendance/domain/entity/enums/attendance_status.dart';
import 'package:tanlu_management/features/attendance/presentation/widgets/attendance_avatar.dart';
import 'package:tanlu_management/features/attendance/presentation/widgets/attendance_tab/widgets/attendance_status_ext.dart';
import 'package:tanlu_management/features/attendance/presentation/widgets/attendance_tab/widgets/attendance_student_check_out_button.dart';
import 'package:tanlu_management/features/attendance/presentation/widgets/attendance_tab/widgets/attendance_student_status_chip.dart';
import 'package:tanlu_management/features/attendance/presentation/widgets/attendance_tab/widgets/attendance_student_time_row.dart';
import 'package:tanlu_management/shared/utils/date_time_utils.dart';
import 'package:tanlu_management/l10n/l10n.dart';

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

  String get _nickname => student.nickName;

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
                  Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    spacing: 6.w,
                    runSpacing: 2.h,
                    children: [
                      AppText.b1(
                        student.fullName,
                        color: AppColors.grayDark,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700,
                      ),
                      if (_nickname.isNotEmpty)
                        AppText.b2(
                          '($_nickname)',
                          color: AppColors.grayMedium,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w700,
                        ),
                    ],
                  ),
                  SizedBox(height: 4.h),

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
                            fontSize: 10.sp,
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
                                    context.l10n.approvedLeave,
                                    color: status.color,
                                    fontSize: 8.sp,
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
                            size: 10.w,
                            color: status.color,
                          ),
                          SizedBox(width: 2.w),
                          AppText.b2(
                            context.l10n.checkedInAt(checkInStr),
                            color: status.color,
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ],
                      ),
                    ),

                  if (!draftMode &&
                      status == AttendanceStatus.absentExcused &&
                      student.leaveRequest.reason.isNotEmpty)
                    Row(
                      children: [
                        if (student.leaveRequest.status == 'approved') ...[
                          Icon(
                            Icons.verified_rounded,
                            size: 12.w,
                            color: AppColors.info,
                          ),
                          SizedBox(width: 4.w),
                          AppText.b2(
                            context.l10n.teacherApproved,
                            color: AppColors.info,
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ],
                      ],
                    ),

                  if (!draftMode &&
                      status != AttendanceStatus.absentExcused &&
                      status != AttendanceStatus.absentUnexcused &&
                      (checkInStr != null ||
                          checkOutStr != null ||
                          _canCheckOut))
                    Padding(
                      padding: EdgeInsets.only(top: 4.h),
                      child: AttendanceStudentTimeRow(
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
                tooltip: context.l10n.otherStatus,
              ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildTrailing(
    AttendanceStatus status,
    String? checkInStr,
    String? checkOutStr,
  ) {
    if (_canCheckOut && onCheckOut != null) {
      return AttendanceStudentCheckOutButton(onTap: onCheckOut!);
    }
    if (status != AttendanceStatus.notMarked) {
      return AttendanceStudentStatusChip(status: status, onTap: onOpenSheet);
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
