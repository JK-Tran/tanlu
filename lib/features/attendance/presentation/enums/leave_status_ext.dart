import 'package:flutter/material.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/l10n/l10n.dart';
import 'package:tanlu_management/features/attendance/domain/entity/enums/leave_status.dart';

extension LeaveStatusExt on LeaveStatus {
  String get label {
    switch (this) {
      case LeaveStatus.pending:
        return S.current.statusPending;
      case LeaveStatus.approved:
        return S.current.statusApproved;
      case LeaveStatus.rejected:
        return S.current.statusRejected;
    }
  }

  Color get color {
    switch (this) {
      case LeaveStatus.pending:
        return AppColors.warning;
      case LeaveStatus.approved:
        return AppColors.success;
      case LeaveStatus.rejected:
        return AppColors.error;
    }
  }
}
