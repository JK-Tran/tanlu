import 'package:flutter/material.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/features/attendance/domain/entity/enums/attendance_status.dart';
import 'package:tanlu_management/l10n/l10n.dart';

extension AttendanceStatusExt on AttendanceStatus {
  String get label {
    switch (this) {
      case AttendanceStatus.present:
        return S.current.statusPresent;
      case AttendanceStatus.late:
        return S.current.statusLate;
      case AttendanceStatus.absentUnexcused:
        return S.current.statusAbsent;
      case AttendanceStatus.absentExcused:
        return S.current.statusExcused;
      case AttendanceStatus.notMarked:
        return S.current.statusNotMarked;
    }
  }

  Color get color {
    switch (this) {
      case AttendanceStatus.present:
        return AppColors.success;
      case AttendanceStatus.late:
        return AppColors.primary;
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
        return AppColors.primaryLight;
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
