import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/features/chat/domain/entity/chat_reaction.dart';

class MessageReactionsBar extends StatelessWidget {
  const MessageReactionsBar({
    super.key,
    required this.reactions,
  });

  final List<ChatReaction> reactions;

  @override
  Widget build(BuildContext context) {
    if (reactions.isEmpty) return const SizedBox.shrink();

    // Nhóm theo loại
    final counts = <int, int>{};
    for (var r in reactions) {
      counts[r.reactionType] = (counts[r.reactionType] ?? 0) + 1;
    }
    
    final List<Widget> icons = [];
    counts.forEach((type, count) {
      String asset = '';
      if (type == 1) asset = 'assets/icons/reaction_heart_1.png';
      if (type == 2) asset = 'assets/icons/reaction_happy_2.png';
      if (type == 3) asset = 'assets/icons/reaction_sad_3.png';
      if (type == 4) asset = 'assets/icons/reaction_suprise_4.png';
      if (type == 5) asset = 'assets/icons/reaction_angry_5.png';
      if (asset.isNotEmpty) {
        icons.add(
          Padding(
            padding: EdgeInsets.only(right: 2.w),
            child: Image.asset(asset, width: 14.r, height: 14.r),
          ),
        );
      }
    });

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 2.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.1),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          ...icons,
          SizedBox(width: 2.w),
          AppText.t1(
            reactions.length.toString(),
            fontSize: 10.sp,
            color: AppColors.grayDark,
          ),
        ],
      ),
    );
  }
}
