import 'package:flutter/material.dart';
import 'package:tanlu_management/core/widgets/app_action_sheet.dart';

abstract final class CommentActionsSheet {
  static Future<void> show(
    BuildContext context, {
    required bool canEdit,
    required bool canDelete,
    VoidCallback? onEdit,
    VoidCallback? onDelete,
  }) {
    return AppActionSheet.show(
      context,
      title: 'Tùy chọn bình luận',
      actions: [
        if (canEdit)
          AppActionSheetItem(
            label: 'Sửa bình luận',
            icon: Icons.edit_outlined,
            onTap: onEdit,
          ),
        if (canDelete)
          AppActionSheetItem(
            label: 'Xóa bình luận',
            icon: Icons.delete_outline_rounded,
            destructive: true,
            onTap: onDelete,
          ),
      ],
    );
  }
}
