import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/features/chat/domain/entity/conversation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tanlu_management/features/chat/presentation/bloc/chat_bloc.dart';
import 'package:tanlu_management/features/app/presentation/bloc/app_bloc.dart';
import 'package:collection/collection.dart';
import 'dart:ui';

class ChatDetailHeader extends StatelessWidget {
  final Conversation conversation;

  const ChatDetailHeader({super.key, required this.conversation});

  @override
  Widget build(BuildContext context) {
    final currentUser = context.read<AppBloc>().currentUser;
    final chatState = context.watch<ChatBloc>().state;
    final onlineUserIds = chatState.onlineUserIds;

    final otherParticipant = conversation.participants.firstWhereOrNull((p) => p.userId != currentUser?.id);
    String name = conversation.name;
    if (name.isEmpty) {
      name = otherParticipant?.user?.fullName ?? 'Khách';
    }

    final isOnline = otherParticipant != null && onlineUserIds.contains(otherParticipant.userId);

    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.white.withValues(alpha: 0.7),
            border: const Border(bottom: BorderSide(color: AppColors.grayLight, width: 1)),
          ),
          padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 10.h),
          child: Row(
            children: [
              IconButton(
                icon: const Icon(Icons.arrow_back_ios_new, color: AppColors.grayDark),
                onPressed: () => context.pop(),
              ),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  CircleAvatar(
                    radius: 20.r,
                    backgroundColor: AppColors.grayLight,
                    child: Icon(
                      conversation.type == 'GROUP' ? Icons.groups_rounded : Icons.person_rounded,
                      color: AppColors.grayMedium,
                    ),
                  ),
                  if (conversation.type != 'GROUP' && isOnline)
                    Positioned(
                      right: -2,
                      bottom: -2,
                      child: Container(
                        width: 12.r,
                        height: 12.r,
                        decoration: BoxDecoration(
                          color: AppColors.success, // Green dot
                          shape: BoxShape.circle,
                          border: Border.all(color: AppColors.white, width: 2),
                        ),
                      ),
                    ),
                ],
              ),
              SizedBox(width: 12.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText.h2(
                      name,
                      color: AppColors.grayDark,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.sp,
                    ),
                    AppText.b2(
                      conversation.type == 'GROUP' ? '${conversation.participants.length} thành viên' : (isOnline ? 'Đang hoạt động' : 'Ngoại tuyến'),
                      color: isOnline ? AppColors.success : AppColors.grayMedium,
                      fontSize: 12.sp,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
