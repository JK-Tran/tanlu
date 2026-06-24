import 'package:flutter/material.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/features/attendance/domain/entity/leave_request.dart';

/// Enum name trùng giá trị Firestore → dùng [.name] khi ghi domain.
enum LeaveStatus {
  pending,
  approved,
  rejected;

  static LeaveStatus fromString(String status) => switch (status) {
        'approved' => LeaveStatus.approved,
        'rejected' => LeaveStatus.rejected,
        _ => LeaveStatus.pending,
      };
}

extension LeaveStatusUi on LeaveStatus {
  String get label => switch (this) {
        LeaveStatus.pending => 'Chờ duyệt',
        LeaveStatus.approved => 'Đã duyệt',
        LeaveStatus.rejected => 'Từ chối',
      };

  Color get color => switch (this) {
        LeaveStatus.pending => AppColors.warning,
        LeaveStatus.approved => AppColors.success,
        LeaveStatus.rejected => AppColors.primary,
      };
}

extension LeaveRequestLeaveStatus on LeaveRequest {
  LeaveStatus get leaveStatus => LeaveStatus.fromString(status);
}
