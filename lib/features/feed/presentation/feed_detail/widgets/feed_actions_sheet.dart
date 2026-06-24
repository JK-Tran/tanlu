import 'package:flutter/material.dart';
import 'package:tanlu_management/core/widgets/app_action_sheet.dart';

abstract final class FeedActionsSheet {
  static Future<void> show(
    BuildContext context, {
    required VoidCallback onDelete,
  }) {
    return AppActionSheet.show(
      context,
      title: 'Tùy chọn bài viết',
      actions: [
        AppActionSheetItem(
          label: 'Xóa bài viết',
          icon: Icons.delete_outline_rounded,
          destructive: true,
          onTap: onDelete,
        ),
      ],
    );
  }
}
