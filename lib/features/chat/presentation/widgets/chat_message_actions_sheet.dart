import 'package:flutter/material.dart';
import 'package:tanlu_management/core/widgets/app_action_sheet.dart';

abstract final class ChatMessageActionsSheet {
  static Future<void> show(BuildContext context) {
    return AppActionSheet.show(
      context,
      title: 'Tin nhắn',
      actions: [
        AppActionSheetItem(
          label: 'Trả lời',
          icon: Icons.reply_rounded,
          onTap: () {},
        ),
        AppActionSheetItem(
          label: 'Sao chép',
          icon: Icons.copy_rounded,
          onTap: () {},
        ),
        AppActionSheetItem(
          label: 'Ghim tin nhắn',
          icon: Icons.push_pin_rounded,
          onTap: () {},
        ),
        AppActionSheetItem(
          label: 'Chọn tin nhắn',
          icon: Icons.check_circle_outline_rounded,
          onTap: () {},
        ),
        AppActionSheetItem(
          label: 'Xóa tin nhắn',
          icon: Icons.delete_outline_rounded,
          destructive: true,
          onTap: () {},
        ),
      ],
    );
  }
}
