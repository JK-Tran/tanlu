import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/l10n/l10n.dart';

class MessageActionBottomSheet extends StatelessWidget {
  const MessageActionBottomSheet({
    super.key,
    required this.isMine,
    required this.onReactionSelected,
    required this.onReply,
    required this.onRevoke,
    this.onCopy,
    this.currentReactionId,
  });

  final bool isMine;
  final Function(int) onReactionSelected;
  final VoidCallback onReply;
  final VoidCallback onRevoke;
  final VoidCallback? onCopy;
  final int? currentReactionId;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.vertical(top: Radius.circular(16.r)),
      child: SafeArea(
        top: false,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 16.h),
            // Reactions
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 16.w),
                decoration: BoxDecoration(
                  color: AppColors.grayVeryLight,
                  borderRadius: BorderRadius.circular(24.r),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildReactionIcon(
                      context,
                      'assets/icons/reaction_heart_1.png',
                      1,
                    ),
                    _buildReactionIcon(
                      context,
                      'assets/icons/reaction_happy_2.png',
                      2,
                    ),
                    _buildReactionIcon(
                      context,
                      'assets/icons/reaction_sad_3.png',
                      3,
                    ),
                    _buildReactionIcon(
                      context,
                      'assets/icons/reaction_suprise_4.png',
                      4,
                    ),
                    _buildReactionIcon(
                      context,
                      'assets/icons/reaction_angry_5.png',
                      5,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16.h),
            // Actions
            ListTile(
              leading: const Icon(
                Icons.reply_rounded,
                color: AppColors.grayDark,
              ),
              title: Text(
                context.l10n.chatActionReply,
                style: const TextStyle(color: AppColors.grayDark),
              ),
              onTap: () {
                Navigator.pop(context);
                onReply();
              },
            ),
            if (onCopy != null) ...[
              _buildDivider(),
              ListTile(
                leading: const Icon(
                  Icons.copy_rounded,
                  color: AppColors.grayDark,
                ),
                title: Text(
                  context.l10n.chatActionCopy,
                  style: const TextStyle(color: AppColors.grayDark),
                ),
                onTap: () {
                  Navigator.pop(context);
                  onCopy!();
                },
              ),
            ],
            if (isMine) ...[
              _buildDivider(),
              ListTile(
                leading: const Icon(
                  Icons.delete_outline_rounded,
                  color: Colors.red,
                ),
                title: Text(
                  context.l10n.chatActionRevoke,
                  style: const TextStyle(color: Colors.red),
                ),
                onTap: () {
                  Navigator.pop(context);
                  onRevoke();
                },
              ),
            ],
            SizedBox(height: 8.h),
          ],
        ),
      ),
    );
  }

  Widget _buildReactionIcon(
    BuildContext context,
    String assetPath,
    int reactionId,
  ) {
    final isSelected = currentReactionId == reactionId;
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
        onReactionSelected(reactionId);
      },
      child: Container(
        padding: EdgeInsets.all(4.r),
        decoration: isSelected
            ? BoxDecoration(
                color: AppColors.primary.withValues(alpha: 0.2),
                shape: BoxShape.circle,
              )
            : null,
        child: Image.asset(assetPath, width: 40.r, height: 40.r),
      ),
    );
  }

  Widget _buildDivider() {
    return Divider(
      height: 1,
      indent: 16.w,
      endIndent: 16.w,
      color: AppColors.grayLight,
    );
  }
}
