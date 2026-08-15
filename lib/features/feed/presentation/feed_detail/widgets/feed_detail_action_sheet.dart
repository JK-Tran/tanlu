import 'package:flutter/material.dart';
import 'package:tanlu_management/core/widgets/app_action_sheet.dart';
import 'package:tanlu_management/l10n/l10n.dart';

abstract final class FeedDetailActionSheet {
  static Future<void> show(
    BuildContext context, {
    required VoidCallback onDelete,
  }) {
    return AppActionSheet.show(
      context,
      title: context.l10n.feedPostOptions,
      actions: [
        AppActionSheetItem(
          label: context.l10n.feedDeletePost,
          icon: Icons.delete_outline_rounded,
          destructive: true,
          onTap: onDelete,
        ),
      ],
    );
  }
}
