import 'package:flutter/material.dart';
import 'package:tanlu_management/core/widgets/app_action_sheet.dart';
import 'package:tanlu_management/l10n/l10n.dart';

abstract final class CommentActionSheet {
  static Future<void> show(
    BuildContext context, {
    required bool canEdit,
    required bool canDelete,
    VoidCallback? onEdit,
    VoidCallback? onDelete,
  }) {
    return AppActionSheet.show(
      context,
      title: context.l10n.feedCommentOptions,
      actions: [
        if (canEdit)
          AppActionSheetItem(
            label: context.l10n.feedEditComment,
            icon: Icons.edit_outlined,
            onTap: onEdit,
          ),
        if (canDelete)
          AppActionSheetItem(
            label: context.l10n.feedDeleteComment,
            icon: Icons.delete_outline_rounded,
            destructive: true,
            onTap: onDelete,
          ),
      ],
    );
  }
}
