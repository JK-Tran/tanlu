import 'package:flutter/material.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/features/attendance/domain/entity/attendance.dart';

/// UI enum — map label/màu/icon. Domain vẫn dùng String.
enum AttendanceStatus {
  notMarked,
  present,
  absent,
  excused,
  late;

  static AttendanceStatus fromString(String status) {
    switch (status) {
      case 'present':
        return AttendanceStatus.present;
      case 'absent_unexcused':
        return AttendanceStatus.absent;
      case 'absent_excused':
        return AttendanceStatus.excused;
      case 'late':
        return AttendanceStatus.late;
      default:
        return AttendanceStatus.notMarked;
    }
  }
}

extension AttendanceStatusExt on AttendanceStatus {
  String get label {
    switch (this) {
      case AttendanceStatus.notMarked:
        return 'Chưa điểm danh';
      case AttendanceStatus.present:
        return 'Có mặt';
      case AttendanceStatus.absent:
        return 'Vắng mặt';
      case AttendanceStatus.excused:
        return 'Đã xin phép';
      case AttendanceStatus.late:
        return 'Đi trễ';
    }
  }

  String get toStatusString {
    switch (this) {
      case AttendanceStatus.present:
        return 'present';
      case AttendanceStatus.absent:
        return 'absent_unexcused';
      case AttendanceStatus.excused:
        return 'absent_excused';
      case AttendanceStatus.late:
        return 'late';
      default:
        return 'not_marked';
    }
  }

  Color get color {
    switch (this) {
      case AttendanceStatus.notMarked:
        return AppColors.grayMedium;
      case AttendanceStatus.present:
        return AppColors.success;
      case AttendanceStatus.absent:
        return AppColors.warning;
      case AttendanceStatus.excused:
        return AppColors.info;
      case AttendanceStatus.late:
        return const Color(0xFFE17055);
    }
  }

  Color get bgColor {
    switch (this) {
      case AttendanceStatus.notMarked:
        return AppColors.grayVeryLight;
      case AttendanceStatus.present:
        return AppColors.successLight;
      case AttendanceStatus.absent:
        return AppColors.warningLight;
      case AttendanceStatus.excused:
        return AppColors.infoLight;
      case AttendanceStatus.late:
        return const Color(0xFFE17055).withValues(alpha: 0.12);
    }
  }

  IconData get icon {
    switch (this) {
      case AttendanceStatus.notMarked:
        return Icons.radio_button_unchecked;
      case AttendanceStatus.present:
        return Icons.check_circle;
      case AttendanceStatus.absent:
        return Icons.cancel;
      case AttendanceStatus.excused:
        return Icons.assignment_return_rounded;
      case AttendanceStatus.late:
        return Icons.access_time_rounded;
    }
  }
}

extension AttendanceUiStatus on Attendance {
  AttendanceStatus get uiStatus => AttendanceStatus.fromString(status);
}
